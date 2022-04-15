# R Script to preprocess, filter, and infer missing data as needed. 

load("~/QMSS/Intergenerational_Childcare_Maternal_Wage_Gap/data/NLSY_new_shortened.RData")

# Step 1. Filter for Women Only  
NLSY <- NLSY_new_shortened %>% subset(KEY_SEX_1997 == 2)

# Step 2. Intergenerational Childcare - take the max (0-1) response across children where women have multiple children. 
#COMMENT OUT if only one child is being considered for model.
# NLSY$`YCCAL-1100A~000001` <- pmax(NLSY$`YCCAL-1100A.01~000001`,NLSY$`YCCAL-1100A.02~000001`,NLSY$`YCCAL-1100A.03~000001`,NLSY$`YCCAL-1100A.04~000001`,NLSY$`YCCAL-1100A.05~000002`,  na.rm = TRUE)
# NLSY$`YCCAL-1100A~000002` <- pmax(NLSY$`YCCAL-1100A.01~000002`,NLSY$`YCCAL-1100A.02~000002`,NLSY$`YCCAL-1100A.03~000002`,NLSY$`YCCAL-1100A.04~000002`,NLSY$`YCCAL-1100A.05~000002`,  na.rm = TRUE)
# NLSY$`YCCAL-1100A~000003` <- pmax(NLSY$`YCCAL-1100A.01~000003`,NLSY$`YCCAL-1100A.02~000003`,NLSY$`YCCAL-1100A.03~000003`,NLSY$`YCCAL-1100A.04~000003`,NLSY$`YCCAL-1100A.05~000003`,  na.rm = TRUE)
# NLSY$`YCCAL-1100A~000004` <- pmax(NLSY$`YCCAL-1100A.01~000004`,NLSY$`YCCAL-1100A.02~000004`,NLSY$`YCCAL-1100A.03~000004`,NLSY$`YCCAL-1100A.04~000004`,NLSY$`YCCAL-1100A.05~000004`,  na.rm = TRUE)
# NLSY$`YCCAL-1100A~000005` <- pmax(NLSY$`YCCAL-1100A.01~000005`,NLSY$`YCCAL-1100A.02~000005`,NLSY$`YCCAL-1100A.03~000005`,NLSY$`YCCAL-1100A.04~000005`,NLSY$`YCCAL-1100A.05~000005`,  na.rm = TRUE)
# NLSY$`YCCAL-1100A~000006` <- pmax(NLSY$`YCCAL-1100A.01~000006`,NLSY$`YCCAL-1100A.02~000006`,NLSY$`YCCAL-1100A.03~000006`,NLSY$`YCCAL-1100A.04~000006`,NLSY$`YCCAL-1100A.05~000006`,  na.rm = TRUE)
# NLSY$`YCCAL-1100A~000007` <- pmax(NLSY$`YCCAL-1100A.01~000007`,NLSY$`YCCAL-1100A.02~000007`,NLSY$`YCCAL-1100A.03~000007`,NLSY$`YCCAL-1100A.04~000007`,NLSY$`YCCAL-1100A.05~000007`,  na.rm = TRUE)
# NLSY$`YCCAL-1100A~000008` <- pmax(NLSY$`YCCAL-1100A.01~000008`,NLSY$`YCCAL-1100A.02~000008`,NLSY$`YCCAL-1100A.03~000008`,NLSY$`YCCAL-1100A.04~000008`,NLSY$`YCCAL-1100A.05~000008`,  na.rm = TRUE)
# NLSY$`YCCAL-1100A~000009` <- pmax(NLSY$`YCCAL-1100A.01~000009`,NLSY$`YCCAL-1100A.02~000009`,NLSY$`YCCAL-1100A.03~000009`,NLSY$`YCCAL-1100A.04~000009`,NLSY$`YCCAL-1100A.05~000009`,  na.rm = TRUE)

# COMMENT OUT if multiple children  is being considered for model. 
NLSY$`YCCAL-1100A~000001` <- NLSY$`YCCAL-1100A.01~000001`
NLSY$`YCCAL-1100A~000002` <- NLSY$`YCCAL-1100A.01~000002`
NLSY$`YCCAL-1100A~000003` <- NLSY$`YCCAL-1100A.01~000003`
NLSY$`YCCAL-1100A~000004` <- NLSY$`YCCAL-1100A.01~000004`
NLSY$`YCCAL-1100A~000005` <- NLSY$`YCCAL-1100A.01~000005`
NLSY$`YCCAL-1100A~000006` <- NLSY$`YCCAL-1100A.01~000006`
NLSY$`YCCAL-1100A~000007` <- NLSY$`YCCAL-1100A.01~000007`
NLSY$`YCCAL-1100A~000008` <- NLSY$`YCCAL-1100A.01~000008`
NLSY$`YCCAL-1100A~000009` <- NLSY$`YCCAL-1100A.01~000009`

# Step 3. Filling for 'Missing' Data 
NLSY_imputed <- NLSY %>% 
  # 3a. YINC 1400 asks whether the individual generated income at all; thus I am making another variable that imputes the continuous variable YINC 1700 with 0 where 1400 is 0.  
  dplyr::mutate(INCOME = ifelse((is.na(`YINC-1700`) & (`YINC-1400` == 0)), 0, `YINC-1700`)) %>%
  # 3b. YINC 2600 incudes question about spousal income - here, I impute all na as 0.
  dplyr::mutate(SPOUSAL_INCOME = ifelse(is.na(`YINC-2600`), 0, `YINC-2600`)) %>%
  # 3c. For number of children in the household, I will fill items with nan in the middle (by person across time); as most nan meant 'does not apply (i.e., no children) I changed this variable to 0.
  dplyr::mutate(N_CHILDREN = ifelse(is.na(CV_BIO_CHILD_HH),0,CV_BIO_CHILD_HH)) %>% 
  
  # 3d. Add identity variables (birthdate, citizenship).
  dplyr::mutate(CV_CITIZENSHIP = 
                  ifelse(CV_CITIZENSHIP == 1, 1, ifelse(CV_CITIZENSHIP == 2, 0, NA))) %>%
  dplyr::group_by(PUBID_1997) %>% 
  dplyr::mutate(KEY_BDATE_Y_1997 = max(KEY_BDATE_Y_1997)) %>% 
  dplyr::mutate(CV_CITIZENSHIP = ifelse(!all(is.na(CV_CITIZENSHIP)), max(CV_CITIZENSHIP, na.rm=T), NA)) %>% 
  ungroup() %>% 
  
  # 3c. For individuals with children, questions about childcare, intergenerational childcare, and spousal childcare appear to be divided between earlier and later cohorts; 
  dplyr::mutate(FIRST_CHILD_BDATE = ifelse(is.na(`BIOADOPTCHILD_BDATE.01~Y`),`BIOCHILD_BDATE.01~Y`, `BIOADOPTCHILD_BDATE.01~Y`)) %>% 
  dplyr::mutate(WORK_EDU_HRS = 
                  ifelse(is.na(`YCCA-450`),`YCCAL-450`,`YCCA-450`)) %>% 
  dplyr::mutate(SPOUSAL_CHILDCARE =
                  ifelse(is.na(`YCCAL-1100A~000001`),ifelse(is.na(`YCCA-1100A~000001`),ifelse(WORK_EDU_HRS == 0,0,NaN),`YCCA-1100A~000001`),`YCCAL-1100A~000001`)) %>%
  dplyr::mutate(RELATIVE_CARE =
                  ifelse(is.na(`YCCAL-1100A~000002`),ifelse(is.na(`YCCA-1100A~000002`),ifelse(WORK_EDU_HRS == 0,0,NaN),`YCCA-1100A~000002`),`YCCAL-1100A~000002`)) %>%
  dplyr::mutate(SIBLING_CARE =
                  ifelse(is.na(`YCCAL-1100A~000003`),ifelse(is.na(`YCCA-1100A~000003`),ifelse(WORK_EDU_HRS == 0,0,NaN),`YCCA-1100A~000003`),`YCCAL-1100A~000003`)) %>%
  dplyr::mutate(SELF_CARE =
                  ifelse(is.na(`YCCAL-1100A~000004`),ifelse(is.na(`YCCA-1100A~000004`),ifelse(WORK_EDU_HRS == 0,0,NaN),`YCCA-1100A~000004`),`YCCAL-1100A~000004`)) %>%
  dplyr::mutate(NON_RELATIVE_CARE =
                  ifelse(is.na(`YCCAL-1100A~000005`),ifelse(is.na(`YCCA-1100A~000005`),ifelse(WORK_EDU_HRS == 0,0,NaN),`YCCA-1100A~000005`),`YCCAL-1100A~000005`)) %>%
  dplyr::mutate(FAMILY_DAY_CARE =
                  ifelse(is.na(`YCCAL-1100A~000006`),
                         ifelse(is.na(`YCCA-1100A~000006`),ifelse(WORK_EDU_HRS == 0,0,
                                                                  ifelse(!is.null(`YCCAL-1100A~000002`),0,NaN)),
                                `YCCA-1100A~000006`),`YCCAL-1100A~000006`)) %>%
  dplyr::mutate(CHILDCARE_CENTER =
                  ifelse(is.na(`YCCAL-1100A~000007`),ifelse(is.na(`YCCA-1100A~000007`),ifelse(WORK_EDU_HRS == 0,0,NaN),`YCCA-1100A~000007`),`YCCAL-1100A~000007`)) %>%
  dplyr::mutate(FORMAL_SCHOOL =
                  ifelse(is.na(`YCCAL-1100A~000008`),ifelse(is.na(`YCCA-1100A~000008`),ifelse(WORK_EDU_HRS == 0,0,NaN),`YCCA-1100A~000008`),`YCCAL-1100A~000008`)) %>%
  dplyr::mutate(AFTER_SCHOOL_CARE =
                  ifelse(is.na(`YCCAL-1100A~000009`),ifelse(is.na(`YCCA-1100A~000009`),ifelse(WORK_EDU_HRS == 0,0,NaN),`YCCA-1100A~000009`),`YCCAL-1100A~000009`)) %>%
  # dplyr::mutate(SPOUSAL_CHILDCARE =  
  #               ifelse(is.na(`YCCAL-1100A~000001`),`YCCA-1100A~000001`,`YCCAL-1100A~000001`)) %>% 
  # dplyr::mutate(RELATIVE_CARE =
  #                 ifelse(is.na(`YCCAL-1100A~000002`),`YCCA-1100A~000002`,`YCCAL-1100A~000002`)) %>%   
  # dplyr::mutate(SIBLING_CARE =
  #                 ifelse(is.na(`YCCAL-1100A~000003`),`YCCA-1100A~000003`,`YCCAL-1100A~000003`)) %>%  
  # dplyr::mutate(SELF_CARE =
  #                 ifelse(is.na(`YCCAL-1100A~000004`),`YCCA-1100A~000004`,`YCCAL-1100A~000004`)) %>%   
  # dplyr::mutate(NON_RELATIVE_CARE =
  #                 ifelse(is.na(`YCCAL-1100A~000005`),`YCCA-1100A~000005`,`YCCAL-1100A~000005`)) %>%   
  # dplyr::mutate(FAMILY_DAY_CARE =
  #                 ifelse(is.na(`YCCAL-1100A~000006`),`YCCA-1100A~000006`,`YCCAL-1100A~000006`)) %>%   
  # dplyr::mutate(CHILDCARE_CENTER = 
  #                 ifelse(is.na(`YCCAL-1100A~000007`),`YCCA-1100A~000007`,`YCCAL-1100A~000007`)) %>% 
  # dplyr::mutate(FORMAL_SCHOOL = 
  #                 ifelse(is.na(`YCCAL-1100A~000008`),`YCCA-1100A~000008`,`YCCAL-1100A~000008`)) %>% 
  # dplyr::mutate(AFTER_SCHOOL_CARE =
  #                 ifelse(is.na(`YCCAL-1100A~000009`),`YCCA-1100A~000009`,`YCCAL-1100A~000009`)) %>% 
  # Step 4. Adding columns for our variables of interest - types of childcare, age first mother 
  dplyr::mutate(FAMILY_CARE = ifelse((RELATIVE_CARE ==1) | (SIBLING_CARE==1) | (FAMILY_DAY_CARE ==1),1,0)) %>%
  dplyr::mutate(FORMAL_CHILDCARE = ifelse((CHILDCARE_CENTER ==1) | (FORMAL_SCHOOL==1) | (AFTER_SCHOOL_CARE ==1),1,0)) %>%
  dplyr::mutate(CHILDCARE_TYPE = ifelse(FORMAL_CHILDCARE > 0 & FAMILY_CARE > 0, 'Both', ifelse(FORMAL_CHILDCARE > 0, 'Formal', ifelse(FAMILY_CARE > 0 | NON_RELATIVE_CARE > 0, 'Informal', ifelse(SPOUSAL_CHILDCARE,'Spouse','Self'))))) %>%
  dplyr::mutate(MATERNAL_AGE = KEY_BDATE_Y_1997-FIRST_CHILD_BDATE) %>% 
  dplyr::mutate(BIOCHILD_6_YR = FIRST_CHILD_BDATE + 5) %>% 
  dplyr::group_by(PUBID_1997) %>% 
  dplyr::mutate(MATERNAL_AGE = ifelse(!all(is.na(MATERNAL_AGE)), max(MATERNAL_AGE, na.rm=T), NA)) %>% 
  ungroup() %>% 
  
  # Step 5. Recoding existent variables into binary 
  dplyr::mutate(MARRIED_OR_COHABITATING = 
                  ifelse(MAR_STATUS.12_XRND == 2 | MAR_STATUS.12_XRND == 1, 1, 0)) %>% 
  dplyr::mutate(FULL_TIME = 
                  ifelse(WORK_EDU_HRS>=32,1,ifelse(WORK_EDU_HRS>=0,0,NA))) %>% 
  dplyr::mutate(PART_TIME = 
                  ifelse(WORK_EDU_HRS>=20,1,ifelse(WORK_EDU_HRS>=0,0,NA))) %>%
  dplyr::mutate(ANY_CHILDREN = ifelse(N_CHILDREN == 0,0,1)) %>% 
  dplyr::mutate(BA_ABOVE = ifelse(CV_HGC_EVER_EDT>=16,1,0)) %>% 
  dplyr::mutate(RELATIVE_CARE_CAT = ifelse(`RELATIVE_CARE`== 0, 'No',ifelse(`RELATIVE_CARE`== 1,'Yes',NA))) %>% 
  dplyr::mutate(Relative_within_15_minutes = ifelse(`YCCAL-6800`==1, ' - Yes',ifelse(`YCCAL-6800`==0,' - No','NaN')))

# Step 6 . Recode YEAR as numeric 
NLSY_imputed$YEAR <- as.numeric(NLSY_imputed$YEAR)

# Step 7. Log Income
NLSY_imputed$INCOME_LOG <- log(NLSY_imputed$INCOME)

# COMMENT OUT if looking at multiple children
save(NLSY_imputed, file = "~/QMSS/Intergenerational_Childcare_Maternal_Wage_Gap/data/NLSY_imputed_first_child.RData")

# COMMENT OUT if only looking at first child 
#save(NLSY_imputed, file = "~/QMSS/Intergenerational_Childcare_Maternal_Wage_Gap/data/NLSY_imputed.RData")


