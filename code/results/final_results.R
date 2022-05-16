# R Script to run statistical models

## ----load libraries, echo=FALSE, message=FALSE, warnings=FALSE----------------------------------------------------------------------
library(plm)
library(dplyr)
library(plyr)
library(QMSS)
library(tidyverse)
library(stargazer)
library(psych)
library(ggplot2)
library(ggthemes)
library(ggsci)
library(viridis)
library(hrbrthemes)
library(imputeTS)
library(kableExtra)
library(naniar)
library(plotly)
library(DT)
library(tidyr)
library(Hmisc)

## ----final filtering functions, echo=FALSE----------------------------------------------------------------------------------------------------------
# Select relevant columns and filter for individuals with valid data about their education,
 # filter for women with some income generating work; filter for High School +
 Valid_Data <- function(df) {
   NLSY_Valid <-  df %>% 
     filter(CV_HGC_EVER_EDT != 95 & !is.na(CV_HGC_EVER_EDT)) %>% 
     filter(CV_HGC_EVER_EDT = 12) %>% filter(YEAR=2005)
   }
# Make df that includes ALL working women with valid data about childcare
 Valid_Childcare <- function(df,first_child) {
   NLSY_Valid <- Valid_Data(df)
   NLSY_Valid_Childcare <- NLSY_Valid %>% subset(INCOME0) %>% subset(WORK_EDU_HRS=0) %>% 
     subset(WORK_EDU_HRS != 999) %>% 
     subset(SELF_CARE==0) %>%  subset(YEAR <= BIOCHILD_6_YR)
   if(first_child == TRUE) {
     NLSY_Valid_Childcare <- NLSY_Valid_Childcare %>%  subset(YEAR <= BIOCHILD_6_YR)
     }
   else{
     NLSY_Valid_Childcare <- NLSY_Valid_Childcare %>%  subset(CV_HH_UNDER_60)
     }
   }
# Filter for data that includes working women (Part Time and up) with valid data about childcare
 Valid_Childcare_Income <- function(df,first_child) {
   NLSY_Valid_Childcare <- Valid_Childcare(df,first_child)
   NLSY_Valid_Childcare_Income <- NLSY_Valid_Childcare %>%  subset(INCOME0) %>%  subset(PART_TIME==1)
   }



## ----load datasets------------------------------------------------------------------------------------------------------------------
# Childcare Variables here are averaged across children (YCCAL), looking at ANY child of respondent under 6
load("~/QMSS/Intergenerational_Childcare_Maternal_Wage_Gap/data/NLSY_imputed.RData")
NLSY_Valid_Childcare_Part_Time_2 <- Valid_Childcare_Income(NLSY_imputed,FALSE) # Part Time and Above
NLSY_Valid_Childcare_Income_2 <- Valid_Childcare(NLSY_imputed,FALSE) %>%  subset(INCOME > 0) # Any Income Generated
NLSY_Valid_Childcare_Part_Time_2 <- NLSY_Valid_Childcare_Part_Time_2[!is.na(NLSY_Valid_Childcare_Part_Time_2$FAMILY_CARE), ]
# Childcare Variables here are averaged across children (YCCAL), looking at respondents while their first child is under 6 years old
 load("~/QMSS/Intergenerational_Childcare_Maternal_Wage_Gap/data/NLSY_imputed_first_child.RData")
NLSY_Valid_Childcare_Part_Time_1 <- Valid_Childcare_Income(NLSY_imputed,TRUE)
NLSY_Valid_Childcare_Part_Time_1 <- NLSY_Valid_Childcare_Part_Time_1[!is.na(NLSY_Valid_Childcare_Part_Time_1$FAMILY_CARE), ]
NLSY_Valid_Childcare_Income_1 <- Valid_Childcare(NLSY_imputed,TRUE) %>%  subset(INCOME > 0)
# Only looking at parent having one child (first child) - while their first child is under 6 years old
 NLSY_Valid_Childcare_Part_Time_One_Child <- NLSY_Valid_Childcare_Part_Time_1 %>%  subset(N_CHILDREN==1)
NLSY_Valid_Childcare_Income_One_Child <- NLSY_Valid_Childcare_Income_1 %>%  subset(N_CHILDREN==1)
# Run descriptive table about model columns
 psych::describe(NLSY_Valid_Childcare_Part_Time_One_Child %>%  select(INCOME, MARRIED_OR_COHABITATING, BA_ABOVE,SPOUSAL_INCOME, MOTHER_AGE_FIRST_CHILD, MATERNAL_AGE,`YCCAL-6800`,FAMILY_CARE, N_CHILDREN,FULL_TIME,Relative_within_15_minutes,YEAR))

 
 
# -- Relative-Provided Childcare vs Income (basic, no controls) ----------------------------------------------------------------------
## ----fe.basic_part_time, eval=TRUE, echo=TRUE, message=FALSE, warning=FALSE,column.sep.width = "1pt",comment=NA,font.size=8---------
fe.basic_part_time <- plm(INCOME_LOG ~ FAMILY_CARE + as.factor(YEAR),
                          index = c("PUBID_1997", "YEAR"), # id & time variables
                          model = "within",
                          data = NLSY_Valid_Childcare_Part_Time_One_Child)
# summary(fe.basic_part_time)
 ## ----re.basic_part_time, eval=TRUE, echo=TRUE, message=FALSE, warning=FALSE,column.sep.width = "1pt",comment=NA,font.size=8---------
re.basic_part_time  <- plm(INCOME_LOG ~ FAMILY_CARE + as.factor(YEAR), # model formula
                           index = c("PUBID_1997", "YEAR"),
                           model = "random",
                           data = NLSY_Valid_Childcare_Part_Time_One_Child)
# summary(re.basic_part_time)
 ## ----pooled.basic_part_time, eval=TRUE, echo=TRUE, message=FALSE, warning=FALSE,column.sep.width = "1pt",comment=NA,font.size=8-----
pooled.basic_part_time <- plm(INCOME_LOG ~ FAMILY_CARE + as.factor(YEAR),
                              index = c("PUBID_1997", "YEAR"),
                              model = "pooling",
                              data = NLSY_Valid_Childcare_Part_Time_One_Child)
# summary(pooled.basic_part_time)
 ## ----stargazer.basic_part_time, eval=TRUE, echo=TRUE, message=FALSE, warning=FALSE,column.sep.width = "1pt",comment=NA,font.size=8----
stargazer(fe.basic_part_time, re.basic_part_time, pooled.basic_part_time,
          title="Regression Results",
          align=TRUE,
          dep.var.labels=c("Income"),
          no.space=TRUE,
          column.labels=c("Fixed Effects", "Random Effects", "Pooled"),
          dep.var.caption="",
          model.numbers=FALSE,
          #type = "latex",
            type = "text",
          omit = "Constant")


# -- Relative-Provided Childcare vs Income (with controls) ----------------------------------------------------------------------
## ----fe.part_time_full, eval=TRUE, echo=TRUE, message=FALSE, warning=FALSE,column.sep.width = "1pt",comment=NA,font.size=8----------
fe.part_time_full <- plm(INCOME_LOG ~ FAMILY_CARE + MARRIED_OR_COHABITATING + BA_ABOVE + SPOUSAL_INCOME_LOG + as.factor(YEAR),
                         index = c("PUBID_1997", "YEAR"), # id & time variables
                         model = "within",
                         data = NLSY_Valid_Childcare_Part_Time_One_Child)
# summary(fe.part_time_full)
 ## ----re.part_time_full, eval=TRUE, echo=TRUE, message=FALSE, warning=FALSE, column.sep.width="1pt", comment=NA, font.size=8---------
re.part_time_full  <- plm(INCOME_LOG ~ FAMILY_CARE + MARRIED_OR_COHABITATING + BA_ABOVE + SPOUSAL_INCOME_LOG +
                            + MOTHER_AGE_FIRST_CHILD + as.factor(YEAR),
                          index = c("PUBID_1997", "YEAR"),
                          model = "random",
                          data = NLSY_Valid_Childcare_Part_Time_One_Child)
# summary(re.part_time_full)
 ## ----hausmann_test-------------------------------------------------------------------------------------------------------------------
phtest(fe.part_time_full, re.part_time_full)

## ----pooled.part_time_full, eval=TRUE, echo=TRUE, message=FALSE, warning=FALSE,column.sep.width = "1pt",comment=NA,font.size=8------
pooled.part_time_full <- plm(INCOME_LOG ~ FAMILY_CARE + MARRIED_OR_COHABITATING + BA_ABOVE + MOTHER_AGE_FIRST_CHILD + SPOUSAL_INCOME_LOG + as.factor(YEAR),
                             index = c("PUBID_1997", "YEAR"),
                             model = "pooling",
                             data = NLSY_Valid_Childcare_Part_Time_One_Child)
#summary(pooled.part_time_full)
 ## ----stargazer.part_time_full, eval=TRUE, echo=TRUE, message=FALSE, warning=FALSE,column.sep.width = "1pt",comment=NA,font.size=8----
stargazer(fe.part_time_full, re.part_time_full,pooled.part_time_full,
          title="Regression Results",
          align=TRUE,
          dep.var.labels=c("Income"),
          no.space=TRUE,
          column.labels=c("Fixed Effects", "Random Effects", "Pooled"),
          dep.var.caption="",
          model.numbers=FALSE,
          #type = "latex",
            type = "text",
          omit = "Constant")



# -- Formal Childcare Options vs Income (with controls) ------------------------------------------------------------------------------
## ----stargazer.part_time_1_formal, eval=TRUE, echo=TRUE, message=FALSE, warning=FALSE,column.sep.width = "1pt",comment=NA,font.size=8----
fe.part_time_1_formal <- plm(INCOME_LOG ~ FORMAL_CHILDCARE + MARRIED_OR_COHABITATING + BA_ABOVE + as.factor(YEAR) + SPOUSAL_INCOME_LOG,
                             index = c("PUBID_1997", "YEAR"), # id & time variables
                             model = "within",
                             data = NLSY_Valid_Childcare_Part_Time_One_Child)
re.part_time_1_formal  <- plm(INCOME_LOG ~ FORMAL_CHILDCARE + MARRIED_OR_COHABITATING + BA_ABOVE + SPOUSAL_INCOME_LOG + MOTHER_AGE_FIRST_CHILD + as.factor(YEAR), # model formula
                              index = c("PUBID_1997", "YEAR"),
                              model = "random",
                              data = NLSY_Valid_Childcare_Part_Time_One_Child)
pooled.part_time_1_formal <- plm(INCOME_LOG ~ FORMAL_CHILDCARE + MARRIED_OR_COHABITATING + BA_ABOVE + SPOUSAL_INCOME_LOG + MOTHER_AGE_FIRST_CHILD +  as.factor(YEAR),
                                 index = c("PUBID_1997", "YEAR"),
                                 model = "pooling",
                                 data = NLSY_Valid_Childcare_Part_Time_One_Child)

stargazer(fe.part_time_1_formal,pooled.part_time_1_formal,
          title="Regression Results",
          align=TRUE,
          dep.var.labels=c("Income"),
          no.space=TRUE,
          column.labels=c("Fixed Effects", "Pooled"),
          dep.var.caption="",
          model.numbers=FALSE,
          #type = "latex",
            type = "text",
          omit = "Constant")


# -- Child care options and odds of full time work -----------------------------------------------------------------------------------
## ----pooled-logit, eval=TRUE, echo=TRUE, message=FALSE, warning=FALSE,column.sep.width = "1pt",comment=NA,font.size=8---------------
pooled_logit_1 <- glm(FULL_TIME ~ FAMILY_CARE +
                        + MARRIED_OR_COHABITATING + BA_ABOVE + SPOUSAL_INCOME_LOG + MATERNAL_AGE + as.factor(YEAR),
                      data = NLSY_Valid_Childcare_Part_Time_One_Child,family="binomial")
# summary(pooled_logit_1)
 stargazer(pooled_logit_1,
            title="Regression Results",
            align=TRUE,
            dep.var.labels=c("Income"),
            no.space=TRUE,
            dep.var.caption="",
            model.numbers=FALSE,
            #type = "latex",
              type = "text",
            omit = "Constant")

## ----pooled-logit-formal, eval=TRUE, echo=TRUE, message=FALSE, warning=FALSE,column.sep.width = "1pt",comment=NA,font.size=8--------
pooled_logit_formal <- glm(FULL_TIME ~ FORMAL_CHILDCARE +
                             + MARRIED_OR_COHABITATING + BA_ABOVE +SPOUSAL_INCOME_LOG + MATERNAL_AGE + as.factor(YEAR),
                           data = NLSY_Valid_Childcare_Part_Time_One_Child,family="binomial")
summary(pooled_logit_formal)


# Relative Proximity (15 mins) vs logged income
 ## ----pooled.part_time_5, eval=TRUE, echo=TRUE, message=FALSE, warning=FALSE,column.sep.width = "1pt",comment=NA,font.size=8---------
NLSY_Relative_Avaialability <- NLSY_Valid_Childcare_Part_Time_One_Child[!is.na(NLSY_Valid_Childcare_Part_Time_One_Child$Relative_within_15_minutes), ]
pooled.relative <- plm(INCOME_LOG ~ Relative_within_15_minutes + MARRIED_OR_COHABITATING + BA_ABOVE + MOTHER_AGE_FIRST_CHILD + SPOUSAL_INCOME_LOG + as.factor(YEAR),
                       index = c("PUBID_1997", "YEAR"),
                       model = "pooling",
                       data = NLSY_Relative_Avaialability)
# summary(pooled.relative)
 stargazer(pooled.relative,
            title="Regression Results",
            align=TRUE,
            dep.var.labels=c("Income"),
            no.space=TRUE,
            dep.var.caption="",
            model.numbers=FALSE,
            #type = "latex",
              type = "text",
            omit = "Constant")

## ----relative_availability_pearson, eval=TRUE, echo=TRUE, message=FALSE, warning=FALSE,column.sep.width = "1pt",comment=NA,font.size=8-----------
NLSY_Relative_Avaialability <- NLSY_Relative_Avaialability %>%  dplyr::select(INCOME, MARRIED_OR_COHABITATING, BA_ABOVE,SPOUSAL_INCOME, MOTHER_AGE_FIRST_CHILD, MATERNAL_AGE,`YCCAL-6800`,FAMILY_CARE, N_CHILDREN,FULL_TIME,Relative_within_15_minutes,YEAR)
NLSY_Relative_Avaialability <- NLSY_Valid_Childcare_Part_Time_One_Child[!is.na(NLSY_Valid_Childcare_Part_Time_One_Child$INCOME), ]
matrix <- as.matrix(NLSY_Relative_Avaialability %>%  dplyr::select(INCOME, MARRIED_OR_COHABITATING, BA_ABOVE,SPOUSAL_INCOME, MOTHER_AGE_FIRST_CHILD,`YCCAL-6800`,FAMILY_CARE))
rcorr(matrix,type="pearson")
           


# -- Relative-Provided Childcare Options vs Income (with controls) - women with ANY children 6 and under -----------------------------
## ----fe.part_time_all, eval=TRUE, echo=TRUE, message=FALSE, warning=FALSE,column.sep.width = "1pt",comment=NA,font.size=8-----------
fe.part_time_all <- plm(INCOME_LOG ~ FAMILY_CARE + N_CHILDREN + MARRIED_OR_COHABITATING + BA_ABOVE + SPOUSAL_INCOME_LOG + as.factor(YEAR),
                        index = c("PUBID_1997", "YEAR"), # id & time variables
                        model = "within",
                        data = NLSY_Valid_Childcare_Part_Time_2)
# summary(fe.part_time_all)
## ----re.part_time_all, eval=TRUE, echo=TRUE, message=FALSE, warning=FALSE,column.sep.width = "1pt",comment=NA,font.size=8-----------
re.part_time_all  <- plm(INCOME_LOG ~ FAMILY_CARE + N_CHILDREN + MARRIED_OR_COHABITATING + BA_ABOVE + SPOUSAL_INCOME_LOG +
                           + MOTHER_AGE_FIRST_CHILD + as.factor(YEAR),
                         index = c("PUBID_1997", "YEAR"),
                         model = "random",
                         data = NLSY_Valid_Childcare_Part_Time_2)
# summary(re.part_time_all)
## ----pooled.part_time_all, eval=TRUE, echo=TRUE, message=FALSE, warning=FALSE,column.sep.width = "1pt",comment=NA,font.size=8-------
pooled.part_time_all <- plm(INCOME_LOG ~ FAMILY_CARE + N_CHILDREN +  MARRIED_OR_COHABITATING + BA_ABOVE + MOTHER_AGE_FIRST_CHILD + SPOUSAL_INCOME_LOG + as.factor(YEAR),
                            index = c("PUBID_1997", "YEAR"),
                            model = "pooling",
                            data = NLSY_Valid_Childcare_Part_Time_2)
# summary(pooled.part_time_all)
## ----stargazer.part_time_all, eval=TRUE, echo=TRUE, message=FALSE, warning=FALSE,column.sep.width = "1pt",comment=NA,font.size=8----
stargazer(fe.part_time_all, pooled.part_time_all,
          title="Regression Results",
          align=TRUE,
          dep.var.labels=c("Income"),
          no.space=TRUE,
          column.labels=c("Fixed Effects", "Random Effects", "Pooled"),
          dep.var.caption="",
          model.numbers=FALSE,
          #type = "latex",
            type = "text",
          omit = "Constant")



# -- Formal Childcare Options vs Income (with controls) - women with ANY children 6 and under -----------------------------
## ----stargazer.part_time_all_formal, eval=TRUE, echo=TRUE, message=FALSE, warning=FALSE,column.sep.width = "1pt",comment=NA,font.size=8----
fe.part_time_all_formal <- plm(INCOME_LOG ~ FORMAL_CHILDCARE + N_CHILDREN + MARRIED_OR_COHABITATING + BA_ABOVE +
                                 + SPOUSAL_INCOME_LOG +
                                 + as.factor(YEAR),
                               index = c("PUBID_1997", "YEAR"), # id & time variables
                               model = "within",
                               data = NLSY_Valid_Childcare_Part_Time_2)
re.part_time_all_formal  <- plm(INCOME_LOG ~ FORMAL_CHILDCARE + N_CHILDREN + MARRIED_OR_COHABITATING + BA_ABOVE +
                                  + SPOUSAL_INCOME_LOG +
                                  + MOTHER_AGE_FIRST_CHILD +
                                  + as.factor(YEAR), # model formula
                                index = c("PUBID_1997", "YEAR"),
                                model = "random",
                                data = NLSY_Valid_Childcare_Part_Time_2)
pooled.part_time_all_formal <- plm(INCOME_LOG ~ FORMAL_CHILDCARE +N_CHILDREN+ MARRIED_OR_COHABITATING + BA_ABOVE +
                                     + SPOUSAL_INCOME_LOG + MOTHER_AGE_FIRST_CHILD +
                                     + as.factor(YEAR),
                                   index = c("PUBID_1997", "YEAR"),
                                   model = "pooling",
                                   data = NLSY_Valid_Childcare_Part_Time_2)
stargazer(fe.part_time_all_formal,pooled.part_time_all_formal,
          title="Regression Results",
          align=TRUE,
          dep.var.labels=c("Income"),
          no.space=TRUE,
          column.labels=c("Fixed Effects", "Pooled"),
          dep.var.caption="",
          model.numbers=FALSE,
          #type = "latex",
            type = "text",
          omit = "Constant")



# -- Relative-Provided Childcare Options vs Income (with controls) - women with ANY income, ONE child 6 and under---------------------
## ----fe.all, eval=TRUE, echo=TRUE, message=FALSE, warning=FALSE,column.sep.width = "1pt",comment=NA,font.size=8---------------------
fe.all <- plm(INCOME_LOG ~ FAMILY_CARE + N_CHILDREN + MARRIED_OR_COHABITATING + BA_ABOVE + SPOUSAL_INCOME_LOG + as.factor(YEAR),
              index = c("PUBID_1997", "YEAR"), # id & time variables
              model = "within",
              data = NLSY_Valid_Childcare_Income_One_Child)
# summary(fe.all)
 ## ----pooled.all, eval=TRUE, echo=TRUE, message=FALSE, warning=FALSE,column.sep.width = "1pt",comment=NA,font.size=8-----------------
pooled.all <- plm(INCOME_LOG ~ FAMILY_CARE + N_CHILDREN +  MARRIED_OR_COHABITATING + BA_ABOVE + MOTHER_AGE_FIRST_CHILD + SPOUSAL_INCOME_LOG + as.factor(YEAR),
                  index = c("PUBID_1997", "YEAR"),
                  model = "pooling",
                  data = NLSY_Valid_Childcare_Income_One_Child)
# summary(pooled.all)
 ## -----------------------------------------------------------------------------------------------------------------------------------
stargazer(fe.all,pooled.all,
          title="Regression Results",
          align=TRUE,
          dep.var.labels=c("Income"),
          no.space=TRUE,
          column.labels=c("Fixed Effects"),
          dep.var.caption="",
          model.numbers=FALSE,
          #type = "latex",
            type = "text",
          omit = "Constant")


# -- Changes made in childcare mode - ---------------------
## -----------------------------------------------------------------------------------------------------------------------------------
# Any income women with one child
 NLSY_Valid_Childcare_Income_One_Child <-  NLSY_Valid_Childcare_Income_One_Child %>%  arrange(PUBID_1997,YEAR) %>%  group_by(PUBID_1997) %>% 
mutate(changed_to_relative = ifelse(lag(FAMILY_CARE) == 0 & FAMILY_CARE == 1, 1, 0)) %>%  mutate(ever_changed_to_relative = max(changed_to_relative)) %>%  mutate(changed_to_formal = ifelse(lag(FORMAL_CHILDCARE)==0 & FORMAL_CHILDCARE==1, 1, 0)) %>%  mutate(ever_changed_to_formal = max(changed_to_formal))
# Part time women with one child
 NLSY_Valid_Childcare_Part_Time_One_Child <- NLSY_Valid_Childcare_Part_Time_One_Child %>%  arrange(PUBID_1997,YEAR) %>%  group_by(PUBID_1997) %>% 
mutate(changed_to_relative = ifelse(lag(FAMILY_CARE) == 0 & FAMILY_CARE == 1, 1, 0)) %>%  mutate(ever_changed_to_relative = max(changed_to_relative)) %>%  mutate(changed_to_formal = ifelse(lag(FORMAL_CHILDCARE)==0 & FORMAL_CHILDCARE==1, 1, 0)) %>%  mutate(ever_changed_to_formal = max(changed_to_formal))
# Descriptive statistics for changing childcare modes
 psych::describe(NLSY_Valid_Childcare_Part_Time_One_Child %>%  select(PUBID_1997,MATERNAL_AGE,CV_HGC_EVER_EDT,CV_INCOME_FAMILY,WORK_EDU_HRS,ever_changed_to_relative,INCOME) %>%  subset(ever_changed_to_relative == 1))

## ----valid_childcare_pearson, eval=TRUE, echo=TRUE, message=FALSE, warning=FALSE,column.sep.width = "1pt",comment=NA,font.size=8-----------
rcorr(as.matrix(NLSY_Valid_Childcare_Part_Time_2%>%  select(CV_HGC_EVER_EDT,WORK_EDU_HRS,MARRIED_OR_COHABITATING, MOTHER_AGE_FIRST_CHILD,INCOME,SPOUSAL_INCOME,FAMILY_CARE,FORMAL_CHILDCARE,N_CHILDREN)),type="pearson")
