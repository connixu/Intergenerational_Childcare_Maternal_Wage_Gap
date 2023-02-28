Exploratory_Analysis
================
Connie Xu
Spring 2022

## Purpose

This r markdown file (also rendered as R and md files) includes
exploratory analysis work completed for NLSY1997. This includes
additional preprocessing and cleaning steps to make variables easier to
understand, as well as initial descriptive statistics of distribution
and data missingness.

*Note that some results were adapted from work completed in Time Series
Labs using the data that I downloaded, cleaned, and processed.*

## Summary of Columns

Currently, my selected dataset is the **NLSY97**. The following are some
relevant columns in the data set:

| Variable Name                           | Variable Text                                                                                                                          | Values                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
|-----------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| PUBID_1997                              | Unique Identifier                                                                                                                      |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| KEY_SEX_1997                            | Sex in 1997                                                                                                                            | 1 = Male<br/>2 = Female                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| KEY_RACE_ETHNICITY_1997                 | Race/Ethnicity 1997                                                                                                                    |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| KEY_BDATE_M\_1997                       | Birthday Month                                                                                                                         | 1-12                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| KEY_BDATE_Y\_1997                       | Birthday YEAR                                                                                                                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| CV_SAMPLE_TYPE_1997                     | Cross Section / Oversample                                                                                                             | 1 = Cross Sectional<br/> 0 = Oversample                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| KEY_RACE_ETHNICITY_1997                 | Race / Ethnicity                                                                                                                       | 1 = Black<br/>2 = Hispanic<br/>3 = Mixed Race<br/>4 = Non Black Non Hispanic                                                                                                                                                                                                                                                                                                                                                                                                    |
| YINC-1400                               | Any Income Earned this YEAR? (Binary)                                                                                                  | 0 = No 1 = Yes                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| YINC-1700                               | Income (Continuous)                                                                                                                    | 0-999999+                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| YINC-2600                               | Spouse’s Income (Continuous)                                                                                                           | 0-999999+                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| CV_INCOME_FAMILY                        | Gross Family Income in previous year                                                                                                   | 0-999999+                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| BIOCHILD_BDATE.01\~Y                    | Birthdate (Year) of First Child                                                                                                        | 1997 - 2019                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| P2-001                                  | Was Parent 1 Born in US                                                                                                                | 0 - 1                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| CV_CITIZENSHIP                          | U.S. citizenship status based on place of birth.                                                                                       | 1 = Yes, 2= No, 3 = No Response                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| MAR_STATUS.01_XRND - MAR_STATUS.12_XRND | Marital Status Jan - Dec of Survey YEAR                                                                                                | 0 = Never Married, Not Cohabitating <br/> 1 = Never Married, Cohabiting<br/> 2 = Married<br/> 3 = Legally Separated <br/> 4 = Divorced<br/> 5 = Widowed                                                                                                                                                                                                                                                                                                                         |
| CV_BIO_CHILD_HH                         | Number of Biological Children RESIDING in the Household (Note: Rs without any biological children are assigned a valid skip (-4).)     | 0 - 10+                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| CV_HH_UNDER_6                           | Number of Childen in R’s household under 6                                                                                             | 0 - 10+                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| CV_BIO_CHILD_NR                         | Number of Biological Children NOT RESIDING in the Household (Note: Rs without any biological children are assigned a valid skip (-4).) | 0 - 10+                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| CV_ENROLLSTAT / CV_ENROLLSTAT_EDT       | Enrolled in School?                                                                                                                    | 1 = Not enrolled, no high school degree, no GED<br/> 2 = Not enrolled, GED<br/> 3 = Not enrolled, high school degree<br/>4 = Not enrolled, some college<br/> 5 = Not enrolled, 2-YEAR college graduate<br/> 6 = Not enrolled, 4-YEAR college graduate<br/> 7 = Not enrolled, graduate degree<br/> 8 = Enrolled in grades 1-12, not a high school graduate<br/> 9 = Enrolled in a 2-YEAR college<br/> 10 = Enrolled in a 4-YEAR college<br/> 11 = Enrolled in a graduate program |
| CV_HGC_EVER_EDT                         | Highest ever enrollment                                                                                                                | 0 = NONE<br/>1 = 1ST GRADE<br/>2 = 2ND GRADE<br/>3 = 3RD GRADE<br/>4 = 4TH GRADE<br/>5 = 5TH GRADE<br/>6 = 6TH GRADE<br/>7 = 7TH GRADE<br/>8 = 8TH GRADE<br/>9 = 9TH GRADE<br/>10 = 10TH GRADE<br/>11 = 11TH GRADE<br/>12 = 12TH GRADE<br/>13 = 1ST YEAR COLLEGE<br/>14 = 2ND YEAR COLLEGE<br/>15 = 3RD YEAR COLLEGE<br/>16 = 4TH YEAR COLLEGE<br/>17 = 5TH YEAR COLLEGE<br/>18 = 6TH YEAR COLLEGE<br/>19 = 7TH YEAR COLLEGE<br/>20 = 8TH YEAR COLLEGE OR MORE                  |
| YCCA-450/YCCAL-450                      | AVERAGE HOURS PER WEEK R SPENDS AT WORK, SCHOOL, TRAINING IN PAST 12 MOS (CCA)                                                         | 0-999999+                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| YCCA-6800                               | ANY RELATIVES LIVE WITHIN 15 MINUTES OF CHILD’S HOME                                                                                   | 0 - 1                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| YCCA-1100.01 - 05                       | PRIMARY CHILD CARE ARRANGEMENT, CHILD 01-05                                                                                            | 1 = Spousal or Partner Care<br/> 2 = Relative Care<br/> 3 = Sibling Care<br/> 4 = Self-Care<br/>5 = Non-relative Care<br/> 6 = Family Day Care<br/> 7 = Child Care Center<br/> 8 = Formal Schooling                                                                                                                                                                                                                                                                             |
| YCCA-1000.01 - 05                       | SECONDARY CHILD CARE ARRANGEMENT, CHILD 01-05                                                                                          | 1 = Spousal or Partner Care<br/> 2 = Relative Care<br/>3 = Sibling Care<br/> 4 = Self-Care<br/> 5 = Non-relative Care<br/> 6 = Family Day Care<br/> 7 = Child Care Center                                                                                                                                                                                                                                                                                                       |
| 8 = Formal Schooling                    |                                                                                                                                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| YCCAL-1100A.0\*\~00000&                 | \* → number of child <br/> & → Question Number                                                                                         |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| YCCA-6150.01-05                         | Time Unit someone pays for childcare                                                                                                   | 1 = Per Hour<br/> 2 = Per Day<br/> 3 = Per Week                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| YCCAL-4500.0X.06                        | WHO TOOK CHILD 0X TO AND FROM FAMILY DAY CARE                                                                                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| YHHI-55701                              | WAS R BORN IN U.S., ITS TERRITORIES OR PUERTO RICO                                                                                     |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| YHHI-55704                              | WHAT IS R’S CITIZENSHIP STATUS                                                                                                         |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| YHHI-55705A                             | HOW OLD WAS R WHEN FIRST CAME TO U.S. FOR 6 MONTHS OR MORE                                                                             |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| YCCAL-6900                              | # OF RELATIVES LIVE WITHIN 15 MINUTES OF CHILD’S HOME                                                                                  | 0-10                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| YCCAL-7100                              | ANY RELATIVES W/IN 15 MIN ABLE TO CARE FOR CHILD REGULARLY WITH NO PAYMENT                                                             | 0-1                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| YCCAL-4500.02.05                        | WHO TOOK CHILD 0X TO AND FROM FAMILY DAY CARE                                                                                          | 1 = Respondent<br/> 2 = Child’s father<br/> 3 = Equal split between R and child’s father<br/> 4 = Respondent’s spouse, partner (who is NOT child’s father)<br/> 5 = This relative<br/> 6 = Other (SPECIFY)<br/> 999 = UNCODABLE                                                                                                                                                                                                                                                 |
| YCCAL-7300                              | ANY RELATIVES LIVE WITHIN 15-45 MINUTES OF CHILD’S HOME                                                                                |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| YCCAL-7400                              | # OF RELATIVES LIVE WITHIN 15-45 MINUTES OF CHILD’S HOME                                                                               |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| YCCAL-9100                              | # OF RELATIVES W/IN 15 MINS OF R’S HOME, R HAS NO CHILDREN                                                                             |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| YCCAL-9000                              | DOES R HAVE RELATIVE THAT LIVE W/IN 15 MINUTES, R HAS NO CHILDREN                                                                      |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| YCCAL-9200                              | R HAVE RELATIVE W/IN 15 MINS ABLE CARE FOR CHILD REGULARLY, R HAS NO KIDS                                                              | 0-1                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| YCCAL-9300                              | ANY RELATIVES THAT LIVE BETWEEN 15-45 MINUTES OF R’S HOME, R HAS NO KIDS                                                               | 0-1                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |

Note that not all of these columns were ultimately used for this
project. Of the existent columns, some of the following steps were
completed to reformat the data further for use in regression models:

-   I filtered for women (KEY_SEX_1997 == 2) with at least a High School
    Education (CV_HGC_EVER_EDT>=12), Part-Time Work
    (YCCAL-450/YCCA-450 >= 20 and `YINC-1700` or INCOME > 0 )  
-   Per Steve McKlaskie from the NLS User Services, “in survey years
    2005, 2008, 2011, and 2015 (rnds 9, 12, 15 and 17), the YCCAL
    questions were added and limited to females born in 1983 and 1984.
    The older females (born 1980, 1981, 1982) go through the YCCA
    questions. So, in these rounds your will need to look at both
    YCCA-1100A and YCCAL-1100A, which are limited to children under the
    age of 7.” Thus, the following were the preprocessing steps for
    childcare options.
    -   Where YCCAL-1100 observation was NA, I imputed YCCA-1100. Same
        was done with YCCAL-6800 and YCCA-6800.
    -   For consistency across YCCA-110 and YCCAL-1100 (and because
        these are the years most relevant for my research) I filtered
        for people with children under 50 in their households.
    -   For models looking at mothers not working / needing childcare at
        all, I treated YCCAL-450/YCCA-450 == 0 as ‘Maternal Childcare’
        (because these observations indicate the mother takes the child
        everywhere and thus is the primary ‘child care’ source.
    -   I dropped observations indicating ‘self-care’ as the primary
        childcare sources.
    -   I categorized ‘Relative Care’ to include ‘Relative Care’ and
        ‘Family Day Care’. Where I run models with more than one child,
        I also include sibling care in this definition.
    -   While ‘Informal Childcare’ includes ‘Family Day Care’ and
        ‘Non-relative care’, ‘Formal Childcare’ includes Child Care
        Center and Formal Schooling
    -   YCCA-110 and YCCAL-1100 included records for each child that
        respondents had or models with multiple children, I coded 1 if
        any childcare option for any of the children is responded to as
        ‘Yes.’ (e.g., Spousal Care for child 2 and not child 1 is coded
        as ‘1’ for Spousal Care).
-   I recoded several categorical variables as binary for simplicity
    when possible
    -   MARRIED_OR_COHABITATING - adapted from Marital Status Variable
        at the end of the survey year (MAR_STATUS.12_XRND). I coded only
        ‘Married’ or ‘Not Married, Cohabitating’ (1 = Never Married,
        Cohabiting; 2 = Married) as ‘1’ (“Married/Cohabitating”); other
        categories (e.g., Widowed, Divorced, Never Married) were coded
        as ‘0’ (“Not Married”)  
    -   CV_CITIZENSHIP - ‘2’ is recoded as ‘0’ as it means ‘not a
        citizen’  
    -   BA_ABOVE - Highest Education Attainment (CV_HGC_EDT) variable
        recoded such that anything over 4 Years of College (16) is coded
        as ‘1’.  
-   I am coding the childcare variables as the case where any of the
    respondent’s children are recieving childcare and are under 6 years
    of age.  
-   Income Variables are imputed for NA’s (taken as 0).  
-   MATERNAL_AGE variable is created by subtracting the respondent’s
    first child’s birthday (FIRST_CHILD_BDATE) from the respondent’s
    birthday (KEY_BDATE_Y\_1997).

``` r
# Select relevant columns and filter for individuals with valid data about their education, filter for women with some income generating work; filter for High School + 
# Make df that includes working women with valid data about childcare
Valid_Childcare <- function(df,first_child) {
  NLSY_Valid <-  df %>% 
  filter(CV_HGC_EVER_EDT != 95 & !is.na(CV_HGC_EVER_EDT)) %>% 
  filter(CV_HGC_EVER_EDT >= 12) 
  NLSY_Valid_Childcare <- NLSY_Valid %>% subset(INCOME>0) %>% subset(WORK_EDU_HRS>=0) %>% 
  subset(SELF_CARE==0) %>% subset(YEAR <= BIOCHILD_6_YR)
  if(first_child == TRUE) {
  NLSY_Valid_Childcare <- NLSY_Valid_Childcare %>% subset(YEAR <= BIOCHILD_6_YR)
  }
  else{
  NLSY_Valid_Childcare <- NLSY_Valid_Childcare %>% subset(CV_HH_UNDER_6>0)
  }
}


# Filter for data that includes working women (Part Time and up) with valid data about childcare
Valid_Childcare_Income <- function(df) {
  NLSY_Valid_Childcare_Income <- df %>% subset(INCOME>0) %>% subset(PART_TIME==1)
}
```

### Independent and Dependent Variables

#### Dependent Variables

-   INCOME - Income generated by respondent (Mother)

#### Independent Variables

-   FAMILY_CARE - Childcare from Relative, Family Daycare (i.e.,
    dropping child off with family), Sibling Care
-   Relative_within_15_minutes - Does a relative live within 15 minutes
    of the respondent?

#### Control Variables

-   BA+ - Level of Education
-   N_CHILDREN - Number of children in household total (Not Applicable
    for models with only first child)
-   MARRIED_OR_COHABITATING
-   MATERNAL_AGE
-   SPOUSAL_INCOME

## Descriptive Statistics

### Basic Descriptives

The following is a descriptive statistics table of all of the selected
variables, used to look at the ranges of questions and validate my
understanding about variable filtering and recoding. *note that at this
point some variables such as P2-001 are NaN due to spreading
characteristics across years; however, we are not currently planning to
use those variables for our models, thus will disregard such variables.*

    ##                         vars     n     mean       sd median  trimmed      mad
    ## INCOME                     1 37476 18656.56 22257.22  12000 14968.14 17791.20
    ## FAMILY_CARE                2 14446     0.40     0.49      0     0.37     0.00
    ## YCCAL-6800                 3  1490     0.70     0.46      1     0.75     0.00
    ## BA_ABOVE                   4 43808     0.29     0.45      0     0.23     0.00
    ## N_CHILDREN                 5 43808     0.73     1.06      0     0.54     0.00
    ## MARRIED_OR_COHABITATING    6 43587     0.43     0.49      0     0.41     0.00
    ## SPOUSAL_INCOME             7 43808 13537.34 28588.80      0  6901.67     0.00
    ## MATERNAL_AGE               8 31729    25.10     4.91     25    24.97     5.93
    ##                         min    max  range  skew kurtosis     se
    ## INCOME                    0 235884 235884  2.73    15.02 114.97
    ## FAMILY_CARE               0      1      1  0.42    -1.83   0.00
    ## YCCAL-6800                0      1      1 -0.89    -1.22   0.01
    ## BA_ABOVE                  0      1      1  0.94    -1.12   0.00
    ## N_CHILDREN                0      8      8  1.51     2.15   0.01
    ## MARRIED_OR_COHABITATING   0      1      1  0.29    -1.92   0.00
    ## SPOUSAL_INCOME            0 340000 340000  3.71    21.42 136.59
    ## MATERNAL_AGE             10     38     28  0.20    -0.71   0.03

### Data Completeness and Sample Size

First, I looked at the count and distribution of valid responses, as
well as the count of responses of “Yes” within our dataset over time.
For the sake of these analyses, I filtered for years after 2005 (as
prior to this, many respondents may not have graduated from university).

### Family-Provided Childcare Data (First Child Only)

In the figure below, I filtered for women with at least one child,
generating \>$0 in income though I also included mothers indicating 0
hours at work or at school without their child. I made the latter
decision to see what proportion of our survey could possibly be working
from home and/or potentially attempting to work with children at all
times.

Note that for many later models, I will be focusing many models on the
childcare options for the first child, and the time period when this
child is 0-6 years of age. For such models, we would be ignoring the
childcare options provided for the later children in the same time span.

Below, we see that when filtering for women with at least one child
generating any income, there seems to be a relatively even split for
relative-provided and other forms of childcare. Within this grouping,
there are fewer mothers who are generating any income without being
without their child. Also, note that predictably, at younger ages, we do
see a higher proportion of mothers with relative care. Per the BLS, the
YCCAL (the version of the survey issued to slightly younger respondents)
version of the childcare question was issued in 2008, 2011,2015,and
2018; as you can see, these years as well as earlier years (e.g., 2005)
seem to have higher proportion of relative-provided care.

``` r
load("~/QMSS/Intergenerational_Childcare_Maternal_Wage_Gap/data/NLSY_imputed_first_child.RData")
NLSY_Valid_Childcare_1 <- Valid_Childcare(NLSY_imputed,TRUE)
NLSY_imputed <- NLSY_imputed[!is.na(NLSY_imputed$WORK_EDU_HRS),]

# This is just with everyone with any biological children in the household; it appears here that we don't have a lot of present data.
p1 <- NLSY_imputed %>% dplyr::select(PUBID_1997,YEAR,BIOCHILD_6_YR,INCOME,`YCCAL-1100A~000002`,`YCCA-1100A~000002`,`FAMILY_CARE`,`RELATIVE_CARE`,WORK_EDU_HRS,CV_BIO_CHILD_HH) %>% subset(YEAR>=2005) %>% subset(INCOME>0)  %>% subset(CV_BIO_CHILD_HH>0) %>% plyr::mutate(FAMILY_CARE_CAT = ifelse(`WORK_EDU_HRS`==0, 'No (Mother Provides Childcare)',ifelse(`FAMILY_CARE`==1,'Yes',ifelse(FAMILY_CARE==0,'No (Other Childcare)',NaN)))) %>% dplyr::group_by(YEAR,FAMILY_CARE_CAT) %>% dplyr::mutate(FAMILY_CARE_CAT_proportion = n()) %>% ungroup() %>% dplyr::group_by(YEAR,FAMILY_CARE_CAT, FAMILY_CARE_CAT_proportion) %>% dplyr::summarize() %>% 
  ggplot(aes(x = YEAR, y = FAMILY_CARE_CAT_proportion)) +
  geom_bar(stat="identity",aes(fill = FAMILY_CARE_CAT)) +
  theme_ipsum(base_size = 12, axis_title_size = 14) +
  scale_fill_futurama(alpha = 0.75) +
  theme(
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
        labs(title = '', color = 'Response') +    
    labs(fill = "Primary Child Care Method is Relative-provided Care", 
         y="Count", x = "", title = "Relative-provided Childcare (First Child Only)")
```

    ## `summarise()` has grouped output by 'YEAR', 'FAMILY_CARE_CAT'. You can override using the `.groups` argument.

``` r
p1
```

![](exploratory_analysis_files/figure-gfm/unnamed-chunk-2-1.png)<!-- -->

``` r
#ggplotly(p1) 
```

The above distribution chard does not however filter for the final two
criteria - part time work and the first child being 6 or under. Below, I
want to primarily look at whether the valid sample size would be
sufficient for running panel models (noting that ideal sample size when
looking at women with any children under 3 would be 385 with a 5% margin
of error and 95% confidence level).

``` r
p2 <- NLSY_Valid_Childcare_1 %>% dplyr::select(PUBID_1997,YEAR,BIOCHILD_6_YR,INCOME,PART_TIME,`FAMILY_CARE`,`RELATIVE_CARE`,WORK_EDU_HRS,CV_BIO_CHILD_HH) %>% subset(YEAR>=2005) %>% subset(INCOME>0) %>% subset(YEAR <= BIOCHILD_6_YR) %>% subset(CV_BIO_CHILD_HH>0) %>%
  subset(PART_TIME ==1) %>% dplyr::mutate(FAMILY_CARE_CAT = ifelse(`WORK_EDU_HRS`==0, 'No (Mother Provides Childcare)',ifelse(`FAMILY_CARE`==1,'Yes',ifelse(FAMILY_CARE==0,'No (Other Childcare)',NaN)))) %>% dplyr::group_by(YEAR,FAMILY_CARE_CAT) %>% dplyr::mutate(FAMILY_CARE_CAT_proportion = n()) %>% ungroup() %>% dplyr::group_by(YEAR,FAMILY_CARE_CAT, FAMILY_CARE_CAT_proportion) %>% dplyr::summarize() %>% 
  ggplot(aes(x = YEAR, y = FAMILY_CARE_CAT_proportion)) +
  geom_bar(stat="identity",aes(fill = FAMILY_CARE_CAT)) +
  theme_ipsum(base_size = 12, axis_title_size = 14) +
  scale_fill_manual(values=c("#ff6f00", "#008fa0")) + 
  theme(
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
        labs(title = '', color = 'Response') +    
    labs(fill = "Primary Child Care Method is Relative-provided Care", 
         y="Count", x = "", title = "Relative-Provided Childcare (First Child,\n 6 and under, Part Time Work )")
```

    ## `summarise()` has grouped output by 'YEAR', 'FAMILY_CARE_CAT'. You can override using the `.groups` argument.

``` r
p2
```

![](exploratory_analysis_files/figure-gfm/unnamed-chunk-3-1.png)<!-- -->

``` r
#ggplotly(p2)
```

We see similar trend to above with this filtering; furthermore, most
years’ panels appear to be over 400, generally evenly distributed in
response (Relative-Provided vs not). Based on this, I think that we can
still run panel-based models, particularly when considering that our
sample includes only respondents of a certain age group and when
considering that the report of population of working mothers in the US
population (as reported by BLS) does not have a minimum for Part Time
Work hours (I will be sure to note these caveats in terms of the
representativeness of the sample).

Also note that because I am filtering for part time work hours using
YCCA-450 and YCCAL-450 (time spent on working / education without
children), the ‘mother-provided childcare’ option is no longer shown in
our distribution.

``` r
p3 <- NLSY_Valid_Childcare_1 %>% dplyr::select(PUBID_1997,YEAR,BIOCHILD_6_YR,INCOME,PART_TIME,`FAMILY_CARE`,`RELATIVE_CARE`,WORK_EDU_HRS,CV_BIO_CHILD_HH) %>% subset(YEAR>=2005) %>% subset(INCOME>0) %>% subset(YEAR <= BIOCHILD_6_YR) %>% subset(CV_BIO_CHILD_HH==1) %>%
  subset(PART_TIME ==1) %>% dplyr::mutate(FAMILY_CARE_CAT = ifelse(`WORK_EDU_HRS`==0, 'No (Mother Provides Childcare)',ifelse(`FAMILY_CARE`==1,'Yes',ifelse(FAMILY_CARE==0,'No (Other Childcare)',NaN)))) %>% dplyr::group_by(YEAR,FAMILY_CARE_CAT) %>% dplyr::mutate(FAMILY_CARE_CAT_proportion = n()) %>% ungroup() %>% dplyr::group_by(YEAR,FAMILY_CARE_CAT, FAMILY_CARE_CAT_proportion) %>% dplyr::summarize() %>% 
  ggplot(aes(x = YEAR, y = FAMILY_CARE_CAT_proportion)) +
  geom_bar(stat="identity",aes(fill = FAMILY_CARE_CAT)) +
  theme_ipsum(base_size = 12, axis_title_size = 14) +
  scale_fill_manual(values=c("#ff6f00", "#008fa0")) + 
  theme(
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
        labs(title = '', color = 'Response') +    
    labs(fill = "Primary Child Care Method is Relative-provided Care", 
         y="Count", x = "", title = "Intergenerational Childcare (First Child,\n 6 and under,\n Part Time Work )")
```

    ## `summarise()` has grouped output by 'YEAR', 'FAMILY_CARE_CAT'. You can override using the `.groups` argument.

``` r
p3
```

![](exploratory_analysis_files/figure-gfm/unnamed-chunk-4-1.png)<!-- -->

``` r
#ggplotly(p3) 
```

If we were instead to filter for women with only 1 child at any point in
time, more factors around multiple children can be naturally controlled;
however, the sample size now dips below 300 in several years. If I run
models on the sample with only one child, pooled regression will be
better.

### Family-Provided Childcare Data (All Children)

I also wanted to quickly see what would happen if we are considering all
children in the household under 6, and all childcare options provided to
them at any given point in time. This model is a bit more difficult to
interpret at times.

``` r
load("~/QMSS/Intergenerational_Childcare_Maternal_Wage_Gap/data/NLSY_imputed.RData")
NLSY_Valid_Childcare_2 <- Valid_Childcare(NLSY_imputed,FALSE)
p4 <- NLSY_Valid_Childcare_2 %>% dplyr::select(PUBID_1997,YEAR,INCOME,PART_TIME,`FAMILY_CARE`,`RELATIVE_CARE`,WORK_EDU_HRS,CV_BIO_CHILD_HH) %>% subset(YEAR>=2005) %>% subset(INCOME>0) %>% subset(CV_BIO_CHILD_HH>0) %>%
  subset(PART_TIME ==1) %>% dplyr::mutate(FAMILY_CARE_CAT = ifelse(`WORK_EDU_HRS`==0, 'No (Mother Provides Childcare)',ifelse(`FAMILY_CARE`==1,'Yes',ifelse(FAMILY_CARE==0,'No (Other Childcare)',NaN)))) %>% dplyr::group_by(YEAR,FAMILY_CARE_CAT) %>% dplyr::mutate(FAMILY_CARE_CAT_proportion = n()) %>% ungroup() %>% dplyr::group_by(YEAR,FAMILY_CARE_CAT, FAMILY_CARE_CAT_proportion) %>% dplyr::summarize() %>% 
  ggplot(aes(x = YEAR, y = FAMILY_CARE_CAT_proportion)) +
  geom_bar(stat="identity",aes(fill = FAMILY_CARE_CAT)) +
  theme_ipsum(base_size = 12, axis_title_size = 14) +
  scale_fill_manual(values=c("#ff6f00", "#008fa0")) + 
  theme(
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
        labs(title = '', color = 'Response') +    
    labs(fill = "Primary Child Care Method is Relative-provided Care", 
         y="Count", x = "", title = "Intergenerational Childcare (First Child Only,\n 6 and under,\n Part Time Work )")
```

    ## `summarise()` has grouped output by 'YEAR', 'FAMILY_CARE_CAT'. You can override using the `.groups` argument.

``` r
p4
```

![](exploratory_analysis_files/figure-gfm/unnamed-chunk-5-1.png)<!-- -->

``` r
#ggplotly(p4) 
```

Interestingly, there appear to be comparable responses total when we are
looking at childcare arrangements when looking at all women with all
children under 6 (rather than just focusing on the firstborn). The
patterns moreover look fairly similar to when the data was filtered
differently.

### Relative Care

Finally, I wanted to look at an alternative independent variable measure
- the question about whether a relative is 15 miles away. This data is
only valid for respondents of the YCCAL version of the survey (i.e., the
younger cohort), and only seems to apply when there is at least **some**
relative-provided childcare.

``` r
NLSY_imputed$`YCCA-450`<- as.numeric(NLSY_imputed$`YCCA-450`)
NLSY_imputed$`YCCAL-450`<- as.numeric(NLSY_imputed$`YCCAL-450`)
NLSY_imputed_FAMILY_CARE_CAT <- NLSY_imputed %>% subset(!is.na(`YCCAL-1100A~000002`))
NLSY_imputed_FAMILY_CARE_CAT$YEAR <- as.numeric(NLSY_imputed_FAMILY_CARE_CAT$YEAR)
NLSY_imputed_FAMILY_CARE_CAT$`YCCAL-6800`[is.na(NLSY_imputed_FAMILY_CARE_CAT$`YCCAL-6800`)] <- 'NA'
p5 <- NLSY_imputed_FAMILY_CARE_CAT %>% dplyr::select(PUBID_1997,YEAR,`YCCAL-6800`,CV_HH_UNDER_6,CV_BIO_CHILD_HH,INCOME,CV_ENROLLSTAT_EDT,`YCCA-450`,`YCCAL-450`,FAMILY_CARE) %>% subset(CV_HH_UNDER_6>0 & CV_BIO_CHILD_HH>0) %>% 
  subset(INCOME>0) %>% 
  dplyr::mutate(relative_15 = ifelse(`YCCAL-6800`==1, 'Yes',ifelse(`YCCAL-6800`==0,'No','NaN'))) %>% dplyr::group_by(YEAR,relative_15) %>% dplyr::mutate(relative_15_proportion = n()) %>% ungroup() %>% dplyr::group_by(YEAR,relative_15, relative_15_proportion) %>% dplyr::summarize() %>% 
  ggplot(aes(x = YEAR, y = relative_15_proportion)) +
  geom_bar(stat="identity",aes(fill = relative_15)) +
  theme_ipsum(base_size = 12, axis_title_size = 14) +
  scale_fill_futurama(alpha = 0.75) +
    theme(
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
        labs(title = , color = 'Response') +    
    labs(fill = "Relative 15 Miles Away??", y="Count", x = "")
```

    ## `summarise()` has grouped output by 'YEAR', 'relative_15'. You can override using the `.groups` argument.

``` r
p5
```

![](exploratory_analysis_files/figure-gfm/unnamed-chunk-6-1.png)<!-- -->

``` r
#ggplotly(p5)

NLSY_imputed_FAMILY_CARE_CAT %>% dplyr::select(PUBID_1997,YEAR,`YCCAL-6800`,CV_HH_UNDER_6,CV_BIO_CHILD_HH,INCOME,CV_ENROLLSTAT_EDT,`YCCA-450`,`YCCAL-450`,FAMILY_CARE,RELATIVE_CARE,SIBLING_CARE,`YCCAL-1100A~000002`,FAMILY_DAY_CARE,WORK_EDU_HRS) %>% subset(CV_HH_UNDER_6>0 & CV_BIO_CHILD_HH>0) %>%   
  subset(INCOME>0) %>% 
  # dplyr::mutate(FAMILY_CARE_CAT = ifelse(`WORK_EDU_HRS`==0, 'No (Mother Provides Childcare)',ifelse(`FAMILY_CARE`==1,'Yes',ifelse(FAMILY_CARE==0,'No (Other Childcare)',NaN)))) %>% 
  dplyr::mutate(relative_15 = ifelse(`YCCAL-6800`==1, 'Yes',ifelse(`YCCAL-6800`==0,'No','NA'))) %>% 
  group_by(YEAR) %>% dplyr::mutate(year_count = n()) %>% ungroup() %>% 
  dplyr::group_by(YEAR,relative_15) %>% dplyr::mutate(relative_15_proportion = n()/year_count) %>% 
  ungroup() %>%
  #subset(relative_15 == 'Yes') %>% 
  dplyr::group_by(YEAR, relative_15, relative_15_proportion) %>% dplyr::summarize() %>% 
  ggplot(aes(x = YEAR, y = relative_15_proportion)) +
  geom_point(aes(color = relative_15))+
  geom_line(stat="identity",aes(color = relative_15, linetype = relative_15)) +
  theme_ipsum(base_size = 12, axis_title_size = 14) +
  scale_color_futurama(alpha = 0.75) +
    theme(
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank()) +
  scale_x_continuous(limits=c(2005,2008,2011,2015)) +
    labs(title = "NLSY Panel Proportions:\nANY RELATIVES LIVE WITHIN 15 MINUTES OF CHILD'S HOME?", 
         y="Proportion", x = "",linetype = "Relative-Provided Childcare",color="Relative-Provided Childcare")
```

    ## `summarise()` has grouped output by 'YEAR', 'relative_15'. You can override using the `.groups` argument.

    ## Warning: Removed 6 rows containing missing values (geom_point).

    ## Warning: Removed 6 row(s) containing missing values (geom_path).

![](exploratory_analysis_files/figure-gfm/unnamed-chunk-6-2.png)<!-- -->

As we can see, this variable has far fewer samples and spans a much
smaller time period. Our ideal panel size for 5% margin of error and 95%
confidence level is 385; thus this variable can also only be looked at
from a pooled perspective.

### Descriptive Statistics and Basic Trends

#### Mean Income Over Time

This first plot shows that mean income over time seems to increase
slower for our panels when we are aggregating for women with children vs
when we are aggregating for women without children - in particular,
women with at least high school level education. These findings are
consistent with those of Budig and England\[1\].

![](exploratory_analysis_files/figure-gfm/Mean%20Income%20Over%20Time-1.png)<!-- -->

#### Relative Availability vs Intergenerational Childcare vs Wages

``` r
NLSY_imputed_FAMILY_CARE_CAT <- NLSY_imputed_FAMILY_CARE_CAT %>% subset(!is.na(`YCCAL-6800`))
NLSY_imputed_FAMILY_CARE_CAT <- NLSY_imputed_FAMILY_CARE_CAT %>% subset(!is.na(FAMILY_CARE))

NLSY_imputed_FAMILY_CARE_CAT %>% dplyr::select(PUBID_1997,YEAR,`YCCAL-6800`,CV_HH_UNDER_6,CV_BIO_CHILD_HH,INCOME,CV_ENROLLSTAT_EDT,`YCCA-450`,`YCCAL-450`,FAMILY_CARE) %>% subset(CV_HH_UNDER_6>0 & CV_BIO_CHILD_HH>0) %>% 
  #subset(`YCCAL-450`!=0) %>% 
  dplyr::mutate(relative_15 = ifelse(`YCCAL-6800`==1, 'Yes',ifelse(`YCCAL-6800`==0,'No','NaN'))) %>%
  dplyr::mutate(FAMILY_CARE_CAT = ifelse(`FAMILY_CARE`==0, 'No',ifelse(`FAMILY_CARE`==1,'Yes','NaN'))) %>% 
  dplyr::group_by(relative_15,FAMILY_CARE) %>% 
  dplyr::mutate(FAMILY_CARE_count = n()) %>% ungroup() %>% 
  mutate(perc=100*FAMILY_CARE_count/nrow(NLSY_imputed_FAMILY_CARE_CAT)) %>% 
  dplyr::group_by(relative_15, FAMILY_CARE_CAT,FAMILY_CARE_count,perc) %>% 
  dplyr::summarize() %>% 
  ggplot(aes(x = relative_15, y = perc)) +
  geom_bar(stat="identity",aes(fill = FAMILY_CARE_CAT),position = "dodge") +
  theme_ipsum(base_size = 12, axis_title_size = 14) +
  scale_fill_manual(values=c("#ff6f00", "#008fa0")) + 
    theme(
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
        labs(title = , color = 'Response') +    
    labs(fill = "Relative Care is a primary source of childcare?", y="Percent of Data", x = "Relative is within 15 Miles?")
```

    ## `summarise()` has grouped output by 'relative_15', 'FAMILY_CARE_CAT', 'FAMILY_CARE_count'. You can override using the `.groups` argument.

![](exploratory_analysis_files/figure-gfm/unnamed-chunk-7-1.png)<!-- -->
It does look like while most respondents with valid responses to
Relative-provided childcare did not have relatives within 15 miles,
(i.e., the pool people with relative care as a primary source of
chilcare and the pool of people without both have proportionally more
respondents without relatives living within 15 miles) respondents with
relatives within 15 miles tend to have proportionally more people with
relatives designated as a primary source of childcare.

``` r
NLSY_Valid_Childcare_1 %>% dplyr::select(PUBID_1997,YEAR,CV_BIO_CHILD_HH,CHILDCARE_TYPE) %>% subset(YEAR>2005) %>% 
  subset(CV_BIO_CHILD_HH==1) %>%
  dplyr::group_by(YEAR) %>% mutate(Total_Year = n()) %>% ungroup() %>%
  group_by(YEAR,CHILDCARE_TYPE) %>% dplyr::mutate(CHILDCARE_TYPE_COUNT = n()/Total_Year) %>% ungroup() %>%  dplyr::group_by(YEAR,CHILDCARE_TYPE, CHILDCARE_TYPE_COUNT) %>% dplyr::summarize() %>% 
  ggplot(aes(x = YEAR, y = CHILDCARE_TYPE_COUNT)) +
  geom_point(stat="identity",aes(color = CHILDCARE_TYPE)) +
  geom_line(stat="identity",aes(color = CHILDCARE_TYPE, linetype = CHILDCARE_TYPE)) +
  theme_ipsum(base_size = 12, axis_title_size = 14) +
  #scale_fill_manual(values=c("#C9473B", "#75A1AD")) + 
  scale_color_futurama(alpha = 0.75) +
    theme(
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
        labs(title = '', color = 'Response') +    
    scale_x_continuous(limits=c(2010,2015)) +
    labs(linetype = "Type of Childcare", color = "Type of Childcare",
         y="Count", x = "", title = "Intergenerational Childcare\n (all women with ONLY one biological child**)", 
         caption = "During first 6 years of first child")
```

    ## `summarise()` has grouped output by 'YEAR', 'CHILDCARE_TYPE'. You can override using the `.groups` argument.

    ## Warning: Removed 25 rows containing missing values (geom_point).

    ## Warning: Removed 25 row(s) containing missing values (geom_path).

![](exploratory_analysis_files/figure-gfm/unnamed-chunk-8-1.png)<!-- -->

``` r
NLSY_Valid_Childcare_1 %>% dplyr::select(PUBID_1997,YEAR,CV_BIO_CHILD_HH,CHILDCARE_TYPE) %>% subset(YEAR>2005) %>% 
  dplyr::group_by(YEAR) %>% mutate(Total_Year = n()) %>% ungroup() %>%
  group_by(YEAR,CHILDCARE_TYPE) %>% dplyr::mutate(CHILDCARE_TYPE_COUNT = n()/Total_Year) %>% ungroup() %>%  dplyr::group_by(YEAR,CHILDCARE_TYPE, CHILDCARE_TYPE_COUNT) %>% dplyr::summarize() %>% 
  ggplot(aes(x = YEAR, y = CHILDCARE_TYPE_COUNT)) +
  geom_point(stat="identity",aes(color = CHILDCARE_TYPE)) +
  geom_line(stat="identity",aes(color = CHILDCARE_TYPE, linetype = CHILDCARE_TYPE)) +
  theme_ipsum(base_size = 12, axis_title_size = 14) +
  #scale_fill_manual(values=c("#C9473B", "#75A1AD")) + 
  scale_color_futurama(alpha = 0.75) +
    theme(
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
        labs(title = '', color = 'Response') +    
    scale_x_continuous(limits=c(2010,2015)) +
    labs(linetype = "Type of Childcare", color = "Type of Childcare",
         y="Proportion of Year*", x = "", title = "Intergenerational Childcare\n (all women with AT LEAST one biological child**)", 
         caption = "*Each year's aggregated group includes mothers whose first-born child is under 6 years of age.")
```

    ## `summarise()` has grouped output by 'YEAR', 'CHILDCARE_TYPE'. You can override using the `.groups` argument.

    ## Warning: Removed 25 rows containing missing values (geom_point).

    ## Warning: Removed 25 row(s) containing missing values (geom_path).

![](exploratory_analysis_files/figure-gfm/unnamed-chunk-8-2.png)<!-- -->
As predicted, we do see that a relatively small proportion of fathers
taking the primary role of childcare while the mother is working / at
school. rates for mothers who are taking care of their own children has
been relatively flat, and it appears that over time, higher proportions
of mothers in the surveyed population (with children under 6) are opting
toward formal rather than informal childcare options. This was found in
the graphs for both time spans with ONLY one child and for time spans
with any number of children (while child 1 is under 6 years old).

Note that ‘both’ formal and informal childcare options here are possible
to be designated.

#### Mean Age of Mothers w/first child

##### Across Childcare Arrangements

I wanted then to plot the mean age of the mothers in the cohort (when
their child is first born). This dataset is filtered for mothers with
children under 6 for any given year.

``` r
mean_maternal_ages <-  NLSY_Valid_Childcare_1 %>% dplyr::select(PUBID_1997,YEAR,WORK_EDU_HRS,FAMILY_CARE,MATERNAL_AGE) %>% subset(YEAR>2005) %>%
  dplyr::mutate(FAMILY_CARE_CAT = ifelse(`WORK_EDU_HRS`==0, 'No (Mother Provides Childcare)',ifelse(`FAMILY_CARE`==1,'Yes',ifelse(FAMILY_CARE==0,'No (Other Childcare)',NaN)))) %>%
  dplyr::group_by(YEAR,FAMILY_CARE_CAT) %>% mutate(Mean_Maternal_Age = mean(MATERNAL_AGE)) %>% ungroup() %>%
  dplyr::group_by(YEAR) %>% mutate(Overall_Mean_Maternal_Age = mean(MATERNAL_AGE)) %>% ungroup() %>% 
  group_by(YEAR,Mean_Maternal_Age,Overall_Mean_Maternal_Age,FAMILY_CARE_CAT) %>% dplyr::summarize() 
```

    ## `summarise()` has grouped output by 'YEAR', 'Mean_Maternal_Age', 'Overall_Mean_Maternal_Age'. You can override using the `.groups` argument.

``` r
mean_maternal_ages
```

    ## # A tibble: 27 × 4
    ## # Groups:   YEAR, Mean_Maternal_Age, Overall_Mean_Maternal_Age [27]
    ##     YEAR Mean_Maternal_Age Overall_Mean_Maternal_Age FAMILY_CARE_CAT            
    ##    <dbl>             <dbl>                     <dbl> <chr>                      
    ##  1  2006              21.9                      22.2 No (Other Childcare)       
    ##  2  2006              22.2                      22.2 Yes                        
    ##  3  2006              22.6                      22.2 No (Mother Provides Childc…
    ##  4  2007              22.4                      22.8 No (Other Childcare)       
    ##  5  2007              22.9                      22.8 No (Mother Provides Childc…
    ##  6  2007              23.0                      22.8 Yes                        
    ##  7  2008              23.0                      23.6 No (Other Childcare)       
    ##  8  2008              23.7                      23.6 Yes                        
    ##  9  2008              24.0                      23.6 No (Mother Provides Childc…
    ## 10  2009              24.2                      24.7 No (Other Childcare)       
    ## # … with 17 more rows

``` r
mean_maternal_ages %>% 
  ggplot(aes(x = YEAR)) +
  geom_point(stat="identity",aes(y=Mean_Maternal_Age,color = FAMILY_CARE_CAT)) +
  geom_line(stat="identity",aes(y=Mean_Maternal_Age,color = FAMILY_CARE_CAT)) +
  geom_point(stat="identity",aes(y=Overall_Mean_Maternal_Age), alpha = 0.5) +
  geom_line(stat="identity",aes(y=Overall_Mean_Maternal_Age), linetype = 'dashed', alpha = 0.5) +
  theme_ipsum(base_size = 12, axis_title_size = 14) +
  scale_color_futurama(alpha = 0.75) +
    theme(
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
        labs(title = '', color = 'Response') +    
    scale_x_discrete(limits=c(2010,2015)) +
    labs(linetype = "Relative-Provided Childcare", color = "Relative-Provided Childcare",
         y="Mean Age", x = "", title = "")
```

    ## Warning: Continuous limits supplied to discrete scale.
    ## Did you mean `limits = factor(...)` or `scale_*_continuous()`?

![](exploratory_analysis_files/figure-gfm/unnamed-chunk-9-1.png)<!-- -->
The increasing age makes sense as we are following a cohort of
respondents starting at a certain average age. However, within these
respondents, there was not a big difference between average age of
mothers within different childcare provision options (stay at home
mothers seem to be a bit older on average than other).

##### Across Socioeconomic Statuses

Here, I did look through maternal ages (average) over the years and
across socioeconomic classes, noting that socioeconomic class here are
determined with CV_INCOME_FAMILY, using income metrics approximated from
the Balance Article using approximations from the Pew Research Center
\[2\].

``` r
mean_maternal_ages_ses <-  NLSY_Valid_Childcare_1 %>% dplyr::select(PUBID_1997,YEAR,MARRIED_OR_COHABITATING,INCOME,CV_INCOME_FAMILY,FAMILY_CARE,MATERNAL_AGE) %>% subset(YEAR>2005) %>%
  dplyr::mutate(SES = ifelse(
    #MARRIED_OR_COHABITATING == 1, ifelse(
    CV_INCOME_FAMILY < 45000,'Lower-Class',
    ifelse(CV_INCOME_FAMILY < 135000, 'Middle-Class','Upper-Class'))
    #,ifelse(INCOME < 15000,'Lower-Class',
    # ifelse(CV_INCOME_FAMILY < 75000, 'Middle-Class','Upper-Class')))) 
    ) %>% 
  dplyr::group_by(YEAR,SES) %>% mutate(Mean_Maternal_Age = mean(MATERNAL_AGE)) %>% ungroup() %>%
  dplyr::group_by(YEAR) %>% mutate(Overall_Mean_Maternal_Age = mean(MATERNAL_AGE)) %>% ungroup() %>% 
  group_by(YEAR,Mean_Maternal_Age,Overall_Mean_Maternal_Age,SES) %>% dplyr::summarize() 
```

    ## `summarise()` has grouped output by 'YEAR', 'Mean_Maternal_Age', 'Overall_Mean_Maternal_Age'. You can override using the `.groups` argument.

``` r
mean_maternal_ages_ses %>%
  ggplot(aes(x = YEAR)) +
  geom_point(stat="identity",aes(y=Mean_Maternal_Age,color = SES)) +
  geom_line(stat="identity",aes(y=Mean_Maternal_Age,color = SES)) +
  geom_point(stat="identity",aes(y=Overall_Mean_Maternal_Age), alpha = 0.5) +
  geom_line(stat="identity",aes(y=Overall_Mean_Maternal_Age), linetype = 'dashed', alpha = 0.5) +
  theme_ipsum(base_size = 12, axis_title_size = 14) +
  scale_color_futurama(alpha = 0.75) +
    theme(
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
        labs(title = '', color = 'Response') +    
    scale_x_continuous(limits=c(2010,2015)) +
    labs(linetype = "Socioeconomic Status", color = "Socioeconomic Status",
         y="Mean Age", x = "", title = "")
```

    ## Warning: Removed 24 rows containing missing values (geom_point).

    ## Warning: Removed 24 row(s) containing missing values (geom_path).

    ## Warning: Removed 20 rows containing missing values (geom_point).

    ## Warning: Removed 20 row(s) containing missing values (geom_path).

![](exploratory_analysis_files/figure-gfm/unnamed-chunk-10-1.png)<!-- -->

On average, each year’s mean maternal age (with first child) appears to
be higher for upper classes vs for lower classes.

------------------------------------------------------------------------

\[1\] <https://doi.org/10.2307/2657415>  
\[2\]
<https://www.thebalance.com/definition-of-middle-class-income-4126870#toc-how-is-middle-class-income-measured>
