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

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead>
<tr class="header">
<th>Variable Name</th>
<th>Variable Text</th>
<th>Values</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>PUBID_1997</td>
<td>Unique Identifier</td>
<td></td>
</tr>
<tr class="even">
<td>KEY_SEX_1997</td>
<td>Sex in 1997</td>
<td>1 = Male<br/>2 = Female</td>
</tr>
<tr class="odd">
<td>KEY_RACE_ETHNICITY_1997</td>
<td>Race/Ethnicity 1997</td>
<td></td>
</tr>
<tr class="even">
<td>KEY_BDATE_M_1997</td>
<td>Birthday Month</td>
<td>1-12</td>
</tr>
<tr class="odd">
<td>KEY_BDATE_Y_1997</td>
<td>Birthday YEAR</td>
<td></td>
</tr>
<tr class="even">
<td>CV_SAMPLE_TYPE_1997</td>
<td>Cross Section / Oversample</td>
<td>1 = Cross Sectional<br/> 0 = Oversample</td>
</tr>
<tr class="odd">
<td>KEY_RACE_ETHNICITY_1997</td>
<td>Race / Ethnicity</td>
<td>1 = Black<br/>2 = Hispanic<br/>3 = Mixed Race<br/>4 = Non Black Non Hispanic</td>
</tr>
<tr class="even">
<td>YINC-1400</td>
<td>Any Income Earned this YEAR? (Binary)</td>
<td>0 = No 1 = Yes</td>
</tr>
<tr class="odd">
<td>YINC-1700</td>
<td>Income (Continuous)</td>
<td>0-999999+</td>
</tr>
<tr class="even">
<td>YINC-2600</td>
<td>Spouse’s Income (Continuous)</td>
<td>0-999999+</td>
</tr>
<tr class="odd">
<td>CV_INCOME_FAMILY</td>
<td>Gross Family Income in previous year</td>
<td>0-999999+</td>
</tr>
<tr class="even">
<td>BIOCHILD_BDATE.01~Y</td>
<td>Birthdate (Year) of First Child</td>
<td>1997 - 2019</td>
</tr>
<tr class="odd">
<td>P2-001</td>
<td>Was Parent 1 Born in US</td>
<td>0 - 1</td>
</tr>
<tr class="even">
<td>CV_CITIZENSHIP</td>
<td>U.S. citizenship status based on place of birth.</td>
<td>1 = Yes, 2= No, 3 = No Response</td>
</tr>
<tr class="odd">
<td>MAR_STATUS.01_XRND - MAR_STATUS.12_XRND</td>
<td>Marital Status Jan - Dec of Survey YEAR</td>
<td>0 = Never Married, Not Cohabitating <br/> 1 = Never Married, Cohabiting<br/> 2 = Married<br/> 3 = Legally Separated <br/> 4 = Divorced<br/> 5 = Widowed</td>
</tr>
<tr class="even">
<td>CV_BIO_CHILD_HH</td>
<td>Number of Biological Children RESIDING in the Household (Note: Rs without any biological children are assigned a valid skip (-4).)</td>
<td>0 - 10+</td>
</tr>
<tr class="odd">
<td>CV_HH_UNDER_6</td>
<td>Number of Childen in R’s household under 6</td>
<td>0 - 10+</td>
</tr>
<tr class="even">
<td>CV_BIO_CHILD_NR</td>
<td>Number of Biological Children NOT RESIDING in the Household (Note: Rs without any biological children are assigned a valid skip (-4).)</td>
<td>0 - 10+</td>
</tr>
<tr class="odd">
<td>CV_ENROLLSTAT / CV_ENROLLSTAT_EDT</td>
<td>Enrolled in School?</td>
<td>1 = Not enrolled, no high school degree, no GED<br/> 2 = Not enrolled, GED<br/> 3 = Not enrolled, high school degree<br/>4 = Not enrolled, some college<br/> 5 = Not enrolled, 2-YEAR college graduate<br/> 6 = Not enrolled, 4-YEAR college graduate<br/> 7 = Not enrolled, graduate degree<br/> 8 = Enrolled in grades 1-12, not a high school graduate<br/> 9 = Enrolled in a 2-YEAR college<br/> 10 = Enrolled in a 4-YEAR college<br/> 11 = Enrolled in a graduate program</td>
</tr>
<tr class="even">
<td>CV_HGC_EVER_EDT</td>
<td>Highest ever enrollment</td>
<td>0 = NONE<br/>1 = 1ST GRADE<br/>2 = 2ND GRADE<br/>3 = 3RD GRADE<br/>4 = 4TH GRADE<br/>5 = 5TH GRADE<br/>6 = 6TH GRADE<br/>7 = 7TH GRADE<br/>8 = 8TH GRADE<br/>9 = 9TH GRADE<br/>10 = 10TH GRADE<br/>11 = 11TH GRADE<br/>12 = 12TH GRADE<br/>13 = 1ST YEAR COLLEGE<br/>14 = 2ND YEAR COLLEGE<br/>15 = 3RD YEAR COLLEGE<br/>16 = 4TH YEAR COLLEGE<br/>17 = 5TH YEAR COLLEGE<br/>18 = 6TH YEAR COLLEGE<br/>19 = 7TH YEAR COLLEGE<br/>20 = 8TH YEAR COLLEGE OR MORE</td>
</tr>
<tr class="odd">
<td>YCCA-450/YCCAL-450</td>
<td>AVERAGE HOURS PER WEEK R SPENDS AT WORK, SCHOOL, TRAINING IN PAST 12 MOS (CCA)</td>
<td>0-999999+</td>
</tr>
<tr class="even">
<td>YCCA-6800</td>
<td>ANY RELATIVES LIVE WITHIN 15 MINUTES OF CHILD’S HOME</td>
<td>0 - 1</td>
</tr>
<tr class="odd">
<td>YCCA-1100.01 - 05</td>
<td>PRIMARY CHILD CARE ARRANGEMENT, CHILD 01-05</td>
<td>1 = Spousal or Partner Care<br/> 2 = Relative Care<br/> 3 = Sibling Care<br/> 4 = Self-Care<br/>5 = Non-relative Care<br/> 6 = Family Day Care<br/> 7 = Child Care Center<br/> 8 = Formal Schooling</td>
</tr>
<tr class="even">
<td>YCCA-1000.01 - 05</td>
<td>SECONDARY CHILD CARE ARRANGEMENT, CHILD 01-05</td>
<td>1 = Spousal or Partner Care<br/> 2 = Relative Care<br/>3 = Sibling Care<br/> 4 = Self-Care<br/> 5 = Non-relative Care<br/> 6 = Family Day Care<br/> 7 = Child Care Center</td>
</tr>
<tr class="odd">
<td>8 = Formal Schooling</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>YCCAL-1100A.0*~00000&amp;</td>
<td>* → number of child <br/> &amp; → Question Number</td>
<td></td>
</tr>
<tr class="odd">
<td>YCCA-6150.01-05</td>
<td>Time Unit someone pays for childcare</td>
<td>1 = Per Hour<br/> 2 = Per Day<br/> 3 = Per Week</td>
</tr>
<tr class="even">
<td>YCCAL-4500.0X.06</td>
<td>WHO TOOK CHILD 0X TO AND FROM FAMILY DAY CARE</td>
<td></td>
</tr>
<tr class="odd">
<td>YHHI-55701</td>
<td>WAS R BORN IN U.S., ITS TERRITORIES OR PUERTO RICO</td>
<td></td>
</tr>
<tr class="even">
<td>YHHI-55704</td>
<td>WHAT IS R’S CITIZENSHIP STATUS</td>
<td></td>
</tr>
<tr class="odd">
<td>YHHI-55705A</td>
<td>HOW OLD WAS R WHEN FIRST CAME TO U.S. FOR 6 MONTHS OR MORE</td>
<td></td>
</tr>
<tr class="even">
<td>YCCAL-6900</td>
<td># OF RELATIVES LIVE WITHIN 15 MINUTES OF CHILD’S HOME</td>
<td>0-10</td>
</tr>
<tr class="odd">
<td>YCCAL-7100</td>
<td>ANY RELATIVES W/IN 15 MIN ABLE TO CARE FOR CHILD REGULARLY WITH NO PAYMENT</td>
<td>0-1</td>
</tr>
<tr class="even">
<td>YCCAL-4500.02.05</td>
<td>WHO TOOK CHILD 0X TO AND FROM FAMILY DAY CARE</td>
<td>1 = Respondent<br/> 2 = Child’s father<br/> 3 = Equal split between R and child’s father<br/> 4 = Respondent’s spouse, partner (who is NOT child’s father)<br/> 5 = This relative<br/> 6 = Other (SPECIFY)<br/> 999 = UNCODABLE</td>
</tr>
<tr class="odd">
<td>YCCAL-7300</td>
<td>ANY RELATIVES LIVE WITHIN 15-45 MINUTES OF CHILD’S HOME</td>
<td></td>
</tr>
<tr class="even">
<td>YCCAL-7400</td>
<td># OF RELATIVES LIVE WITHIN 15-45 MINUTES OF CHILD’S HOME</td>
<td></td>
</tr>
<tr class="odd">
<td>YCCAL-9100</td>
<td># OF RELATIVES W/IN 15 MINS OF R’S HOME, R HAS NO CHILDREN</td>
<td></td>
</tr>
<tr class="even">
<td>YCCAL-9000</td>
<td>DOES R HAVE RELATIVE THAT LIVE W/IN 15 MINUTES, R HAS NO CHILDREN</td>
<td></td>
</tr>
<tr class="odd">
<td>YCCAL-9200</td>
<td>R HAVE RELATIVE W/IN 15 MINS ABLE CARE FOR CHILD REGULARLY, R HAS NO KIDS</td>
<td>0-1</td>
</tr>
<tr class="even">
<td>YCCAL-9300</td>
<td>ANY RELATIVES THAT LIVE BETWEEN 15-45 MINUTES OF R’S HOME, R HAS NO KIDS</td>
<td>0-1</td>
</tr>
</tbody>
</table>

Note that not all of these columns were ultimately used for this
project. Of the existent columns, some of the following steps were
completed to reformat the data further for use in regression models:

-   I filtered for women (KEY\_SEX\_1997 == 2) with at least a High
    School Education (CV\_HGC\_EVER\_EDT>=12), Part-Time Work
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
    -   MARRIED\_OR\_COHABITATING - adapted from Marital Status Variable
        at the end of the survey year (MAR\_STATUS.12\_XRND). I coded
        only ‘Married’ or ‘Not Married, Cohabitating’ (1 = Never
        Married, Cohabiting; 2 = Married) as ‘1’
        (“Married/Cohabitating”); other categories (e.g., Widowed,
        Divorced, Never Married) were coded as ‘0’ (“Not Married”)  
    -   CV\_CITIZENSHIP - ‘2’ is recoded as ‘0’ as it means ‘not a
        citizen’  
    -   BA\_ABOVE - Highest Education Attainment (CV\_HGC\_EDT) variable
        recoded such that anything over 4 Years of College (16) is coded
        as ‘1’.  
-   I am coding the childcare variables as the case where any of the
    respondent’s children are recieving childcare and are under 6 years
    of age.  
-   Income Variables are imputed for NA’s (taken as 0).  
-   MATERNAL\_AGE variable is created by subtracting the respondent’s
    first child’s birthday (FIRST\_CHILD\_BDATE) from the respondent’s
    birthday (KEY\_BDATE\_Y\_1997).

<!-- -->

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

### Independent and Dependent Variables

#### Dependent Variables

-   INCOME - Income generated by respondent (Mother)

#### Independent Variables

-   FAMILY\_CARE - Childcare from Relative, Family Daycare (i.e.,
    dropping child off with family), Sibling Care
-   Relative\_within\_15\_minutes - Does a relative live within 15
    minutes of the respondent?

#### Control Variables

-   BA+ - Level of Education
-   N\_CHILDREN - Number of children in household total (Not Applicable
    for models with only first child)
-   MARRIED\_OR\_COHABITATING
-   MATERNAL\_AGE
-   SPOUSAL\_INCOME

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
generating &gt;$0 in income though I also included mothers indicating 0
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

    ## `summarise()` has grouped output by 'YEAR', 'FAMILY_CARE_CAT'. You can override using the `.groups` argument.

    ggplotly(p1) 

    ## PhantomJS not found. You can install it with webshot::install_phantomjs(). If it is installed, please make sure the phantomjs executable can be found via the PATH variable.

<div id="htmlwidget-56f3d6e44f08fbe2bb63" style="width:672px;height:480px;" class="plotly html-widget"></div>
<script type="application/json" data-for="htmlwidget-56f3d6e44f08fbe2bb63">{"x":{"data":[{"orientation":"v","width":[0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091],"base":[546,684,751,857,858,879,942,927,852,810],"x":[2005,2006,2007,2008,2009,2010,2011,2013,2015,2017],"y":[157,196,176,211,210,205,188,177,155,171],"text":["YEAR: 2005<br />FAMILY_CARE_CAT_proportion: 157<br />FAMILY_CARE_CAT: No (Mother Provides Childcare)","YEAR: 2006<br />FAMILY_CARE_CAT_proportion: 196<br />FAMILY_CARE_CAT: No (Mother Provides Childcare)","YEAR: 2007<br />FAMILY_CARE_CAT_proportion: 176<br />FAMILY_CARE_CAT: No (Mother Provides Childcare)","YEAR: 2008<br />FAMILY_CARE_CAT_proportion: 211<br />FAMILY_CARE_CAT: No (Mother Provides Childcare)","YEAR: 2009<br />FAMILY_CARE_CAT_proportion: 210<br />FAMILY_CARE_CAT: No (Mother Provides Childcare)","YEAR: 2010<br />FAMILY_CARE_CAT_proportion: 205<br />FAMILY_CARE_CAT: No (Mother Provides Childcare)","YEAR: 2011<br />FAMILY_CARE_CAT_proportion: 188<br />FAMILY_CARE_CAT: No (Mother Provides Childcare)","YEAR: 2013<br />FAMILY_CARE_CAT_proportion: 177<br />FAMILY_CARE_CAT: No (Mother Provides Childcare)","YEAR: 2015<br />FAMILY_CARE_CAT_proportion: 155<br />FAMILY_CARE_CAT: No (Mother Provides Childcare)","YEAR: 2017<br />FAMILY_CARE_CAT_proportion: 171<br />FAMILY_CARE_CAT: No (Mother Provides Childcare)"],"type":"bar","textposition":"none","marker":{"autocolorscale":false,"color":"rgba(255,111,0,0.7451)","line":{"width":1.88976377952756,"color":"transparent"}},"name":"No (Mother Provides Childcare)","legendgroup":"No (Mother Provides Childcare)","showlegend":true,"xaxis":"x","yaxis":"y","hoverinfo":"text","frame":null},{"orientation":"v","width":[0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091],"base":[355,433,452,528,519,513,458,457,378,352],"x":[2005,2006,2007,2008,2009,2010,2011,2013,2015,2017],"y":[191,251,299,329,339,366,484,470,474,458],"text":["YEAR: 2005<br />FAMILY_CARE_CAT_proportion: 191<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2006<br />FAMILY_CARE_CAT_proportion: 251<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2007<br />FAMILY_CARE_CAT_proportion: 299<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2008<br />FAMILY_CARE_CAT_proportion: 329<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2009<br />FAMILY_CARE_CAT_proportion: 339<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2010<br />FAMILY_CARE_CAT_proportion: 366<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2011<br />FAMILY_CARE_CAT_proportion: 484<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2013<br />FAMILY_CARE_CAT_proportion: 470<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2015<br />FAMILY_CARE_CAT_proportion: 474<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2017<br />FAMILY_CARE_CAT_proportion: 458<br />FAMILY_CARE_CAT: No (Other Childcare)"],"type":"bar","textposition":"none","marker":{"autocolorscale":false,"color":"rgba(199,16,0,0.7451)","line":{"width":1.88976377952756,"color":"transparent"}},"name":"No (Other Childcare)","legendgroup":"No (Other Childcare)","showlegend":true,"xaxis":"x","yaxis":"y","hoverinfo":"text","frame":null},{"orientation":"v","width":[0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091],"base":[9,7,2,12,9,10,14,8,5,4],"x":[2005,2006,2007,2008,2009,2010,2011,2013,2015,2017],"y":[346,426,450,516,510,503,444,449,373,348],"text":["YEAR: 2005<br />FAMILY_CARE_CAT_proportion: 346<br />FAMILY_CARE_CAT: Yes","YEAR: 2006<br />FAMILY_CARE_CAT_proportion: 426<br />FAMILY_CARE_CAT: Yes","YEAR: 2007<br />FAMILY_CARE_CAT_proportion: 450<br />FAMILY_CARE_CAT: Yes","YEAR: 2008<br />FAMILY_CARE_CAT_proportion: 516<br />FAMILY_CARE_CAT: Yes","YEAR: 2009<br />FAMILY_CARE_CAT_proportion: 510<br />FAMILY_CARE_CAT: Yes","YEAR: 2010<br />FAMILY_CARE_CAT_proportion: 503<br />FAMILY_CARE_CAT: Yes","YEAR: 2011<br />FAMILY_CARE_CAT_proportion: 444<br />FAMILY_CARE_CAT: Yes","YEAR: 2013<br />FAMILY_CARE_CAT_proportion: 449<br />FAMILY_CARE_CAT: Yes","YEAR: 2015<br />FAMILY_CARE_CAT_proportion: 373<br />FAMILY_CARE_CAT: Yes","YEAR: 2017<br />FAMILY_CARE_CAT_proportion: 348<br />FAMILY_CARE_CAT: Yes"],"type":"bar","textposition":"none","marker":{"autocolorscale":false,"color":"rgba(0,142,160,0.7451)","line":{"width":1.88976377952756,"color":"transparent"}},"name":"Yes","legendgroup":"Yes","showlegend":true,"xaxis":"x","yaxis":"y","hoverinfo":"text","frame":null},{"orientation":"v","width":[0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091],"base":[0,0,0,0,0,0,0,0,0,0],"x":[2005,2006,2007,2008,2009,2010,2011,2013,2015,2017],"y":[9,7,2,12,9,10,14,8,5,4],"text":["YEAR: 2005<br />FAMILY_CARE_CAT_proportion:   9<br />FAMILY_CARE_CAT: NA","YEAR: 2006<br />FAMILY_CARE_CAT_proportion:   7<br />FAMILY_CARE_CAT: NA","YEAR: 2007<br />FAMILY_CARE_CAT_proportion:   2<br />FAMILY_CARE_CAT: NA","YEAR: 2008<br />FAMILY_CARE_CAT_proportion:  12<br />FAMILY_CARE_CAT: NA","YEAR: 2009<br />FAMILY_CARE_CAT_proportion:   9<br />FAMILY_CARE_CAT: NA","YEAR: 2010<br />FAMILY_CARE_CAT_proportion:  10<br />FAMILY_CARE_CAT: NA","YEAR: 2011<br />FAMILY_CARE_CAT_proportion:  14<br />FAMILY_CARE_CAT: NA","YEAR: 2013<br />FAMILY_CARE_CAT_proportion:   8<br />FAMILY_CARE_CAT: NA","YEAR: 2015<br />FAMILY_CARE_CAT_proportion:   5<br />FAMILY_CARE_CAT: NA","YEAR: 2017<br />FAMILY_CARE_CAT_proportion:   4<br />FAMILY_CARE_CAT: NA"],"type":"bar","textposition":"none","marker":{"autocolorscale":false,"color":["transparent","transparent","transparent","transparent","transparent","transparent","transparent","transparent","transparent","transparent"],"line":{"width":1.88976377952756,"color":"transparent"}},"name":"NA","legendgroup":"NA","showlegend":true,"xaxis":"x","yaxis":"y","hoverinfo":"text","frame":null}],"layout":{"margin":{"t":95.7011207970112,"r":39.8505603985056,"b":91.6562889165629,"l":86.3428808634288},"font":{"color":"rgba(0,0,0,1)","family":"Arial Narrow","size":15.9402241594022},"title":{"text":"<b> Relative-provided Childcare (First Child Only) <\/b>","font":{"color":"rgba(0,0,0,1)","family":"Arial Narrow","size":23.9103362391034},"x":0,"xref":"paper"},"xaxis":{"domain":[0,1],"automargin":true,"type":"linear","autorange":false,"range":[2003.905,2018.095],"tickmode":"array","ticktext":["2004","2008","2012","2016"],"tickvals":[2004,2008,2012,2016],"categoryorder":"array","categoryarray":["2004","2008","2012","2016"],"nticks":null,"ticks":"","tickcolor":null,"ticklen":3.98505603985056,"tickwidth":0,"showticklabels":true,"tickfont":{"color":"rgba(77,77,77,1)","family":"Arial Narrow","size":15.9402241594022},"tickangle":-90,"showline":false,"linecolor":null,"linewidth":0,"showgrid":false,"gridcolor":null,"gridwidth":0,"zeroline":false,"anchor":"y","title":{"text":"","font":{"color":"rgba(0,0,0,1)","family":"Arial Narrow","size":18.5969281859693}},"hoverformat":".2f"},"yaxis":{"domain":[0,1],"automargin":true,"type":"linear","autorange":false,"range":[-56.5,1186.5],"tickmode":"array","ticktext":["0","300","600","900"],"tickvals":[0,300,600,900],"categoryorder":"array","categoryarray":["0","300","600","900"],"nticks":null,"ticks":"","tickcolor":null,"ticklen":3.98505603985056,"tickwidth":0,"showticklabels":true,"tickfont":{"color":"rgba(77,77,77,1)","family":"Arial Narrow","size":15.9402241594022},"tickangle":-0,"showline":false,"linecolor":null,"linewidth":0,"showgrid":false,"gridcolor":null,"gridwidth":0,"zeroline":false,"anchor":"x","title":{"text":"Count","font":{"color":"rgba(0,0,0,1)","family":"Arial Narrow","size":18.5969281859693}},"hoverformat":".2f"},"shapes":[{"type":"rect","fillcolor":null,"line":{"color":null,"width":0,"linetype":[]},"yref":"paper","xref":"paper","x0":0,"x1":1,"y0":0,"y1":1}],"showlegend":true,"legend":{"bgcolor":null,"bordercolor":null,"borderwidth":0,"font":{"color":"rgba(0,0,0,1)","family":"Arial Narrow","size":12.7521793275218},"title":{"text":"Primary Child Care Method is Relative-provided Care","font":{"color":"rgba(0,0,0,1)","family":"Arial Narrow","size":15.9402241594022}}},"hovermode":"closest","barmode":"relative"},"config":{"doubleClick":"reset","modeBarButtonsToAdd":["hoverclosest","hovercompare"],"showSendToCloud":false},"source":"A","attrs":{"ffd77e1b9506":{"x":{},"y":{},"fill":{},"type":"bar"}},"cur_data":"ffd77e1b9506","visdat":{"ffd77e1b9506":["function (y) ","x"]},"highlight":{"on":"plotly_click","persistent":false,"dynamic":false,"selectize":false,"opacityDim":0.2,"selected":{"opacity":1},"debounce":0},"shinyEvents":["plotly_hover","plotly_click","plotly_selected","plotly_relayout","plotly_brushed","plotly_brushing","plotly_clickannotation","plotly_doubleclick","plotly_deselect","plotly_afterplot","plotly_sunburstclick"],"base_url":"https://plot.ly"},"evals":[],"jsHooks":[]}</script>

The above distribution chard does not however filter for the final two
criteria - part time work and the first child being 6 or under. Below, I
want to primarily look at whether the valid sample size would be
sufficient for running panel models (noting that ideal sample size when
looking at women with any children under 3 would be 385 with a 5% margin
of error and 95% confidence level).

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

    ## `summarise()` has grouped output by 'YEAR', 'FAMILY_CARE_CAT'. You can override using the `.groups` argument.

    ggplotly(p2)

<div id="htmlwidget-7c171a75f6fe13ed1df3" style="width:672px;height:480px;" class="plotly html-widget"></div>
<script type="application/json" data-for="htmlwidget-7c171a75f6fe13ed1df3">{"x":{"data":[{"orientation":"v","width":[0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091],"base":[217,267,275,307,286,280,219,172,123,101],"x":[2005,2006,2007,2008,2009,2010,2011,2013,2015,2017],"y":[109,147,159,168,152,172,219,212,190,159],"text":["YEAR: 2005<br />FAMILY_CARE_CAT_proportion: 109<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2006<br />FAMILY_CARE_CAT_proportion: 147<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2007<br />FAMILY_CARE_CAT_proportion: 159<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2008<br />FAMILY_CARE_CAT_proportion: 168<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2009<br />FAMILY_CARE_CAT_proportion: 152<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2010<br />FAMILY_CARE_CAT_proportion: 172<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2011<br />FAMILY_CARE_CAT_proportion: 219<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2013<br />FAMILY_CARE_CAT_proportion: 212<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2015<br />FAMILY_CARE_CAT_proportion: 190<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2017<br />FAMILY_CARE_CAT_proportion: 159<br />FAMILY_CARE_CAT: No (Other Childcare)"],"type":"bar","textposition":"none","marker":{"autocolorscale":false,"color":"rgba(255,111,0,1)","line":{"width":1.88976377952756,"color":"transparent"}},"name":"No (Other Childcare)","legendgroup":"No (Other Childcare)","showlegend":true,"xaxis":"x","yaxis":"y","hoverinfo":"text","frame":null},{"orientation":"v","width":[0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091],"base":[0,0,0,0,0,0,0,0,0,0],"x":[2005,2006,2007,2008,2009,2010,2011,2013,2015,2017],"y":[217,267,275,307,286,280,219,172,123,101],"text":["YEAR: 2005<br />FAMILY_CARE_CAT_proportion: 217<br />FAMILY_CARE_CAT: Yes","YEAR: 2006<br />FAMILY_CARE_CAT_proportion: 267<br />FAMILY_CARE_CAT: Yes","YEAR: 2007<br />FAMILY_CARE_CAT_proportion: 275<br />FAMILY_CARE_CAT: Yes","YEAR: 2008<br />FAMILY_CARE_CAT_proportion: 307<br />FAMILY_CARE_CAT: Yes","YEAR: 2009<br />FAMILY_CARE_CAT_proportion: 286<br />FAMILY_CARE_CAT: Yes","YEAR: 2010<br />FAMILY_CARE_CAT_proportion: 280<br />FAMILY_CARE_CAT: Yes","YEAR: 2011<br />FAMILY_CARE_CAT_proportion: 219<br />FAMILY_CARE_CAT: Yes","YEAR: 2013<br />FAMILY_CARE_CAT_proportion: 172<br />FAMILY_CARE_CAT: Yes","YEAR: 2015<br />FAMILY_CARE_CAT_proportion: 123<br />FAMILY_CARE_CAT: Yes","YEAR: 2017<br />FAMILY_CARE_CAT_proportion: 101<br />FAMILY_CARE_CAT: Yes"],"type":"bar","textposition":"none","marker":{"autocolorscale":false,"color":"rgba(0,143,160,1)","line":{"width":1.88976377952756,"color":"transparent"}},"name":"Yes","legendgroup":"Yes","showlegend":true,"xaxis":"x","yaxis":"y","hoverinfo":"text","frame":null}],"layout":{"margin":{"t":95.7011207970112,"r":39.8505603985056,"b":91.6562889165629,"l":86.3428808634288},"font":{"color":"rgba(0,0,0,1)","family":"Arial Narrow","size":15.9402241594022},"title":{"text":"<b> Relative-Provided Childcare (First Child,<br /> 6 and under, Part Time Work ) <\/b>","font":{"color":"rgba(0,0,0,1)","family":"Arial Narrow","size":23.9103362391034},"x":0,"xref":"paper"},"xaxis":{"domain":[0,1],"automargin":true,"type":"linear","autorange":false,"range":[2003.905,2018.095],"tickmode":"array","ticktext":["2004","2008","2012","2016"],"tickvals":[2004,2008,2012,2016],"categoryorder":"array","categoryarray":["2004","2008","2012","2016"],"nticks":null,"ticks":"","tickcolor":null,"ticklen":3.98505603985056,"tickwidth":0,"showticklabels":true,"tickfont":{"color":"rgba(77,77,77,1)","family":"Arial Narrow","size":15.9402241594022},"tickangle":-90,"showline":false,"linecolor":null,"linewidth":0,"showgrid":false,"gridcolor":null,"gridwidth":0,"zeroline":false,"anchor":"y","title":{"text":"","font":{"color":"rgba(0,0,0,1)","family":"Arial Narrow","size":18.5969281859693}},"hoverformat":".2f"},"yaxis":{"domain":[0,1],"automargin":true,"type":"linear","autorange":false,"range":[-23.75,498.75],"tickmode":"array","ticktext":["0","100","200","300","400"],"tickvals":[0,100,200,300,400],"categoryorder":"array","categoryarray":["0","100","200","300","400"],"nticks":null,"ticks":"","tickcolor":null,"ticklen":3.98505603985056,"tickwidth":0,"showticklabels":true,"tickfont":{"color":"rgba(77,77,77,1)","family":"Arial Narrow","size":15.9402241594022},"tickangle":-0,"showline":false,"linecolor":null,"linewidth":0,"showgrid":false,"gridcolor":null,"gridwidth":0,"zeroline":false,"anchor":"x","title":{"text":"Count","font":{"color":"rgba(0,0,0,1)","family":"Arial Narrow","size":18.5969281859693}},"hoverformat":".2f"},"shapes":[{"type":"rect","fillcolor":null,"line":{"color":null,"width":0,"linetype":[]},"yref":"paper","xref":"paper","x0":0,"x1":1,"y0":0,"y1":1}],"showlegend":true,"legend":{"bgcolor":null,"bordercolor":null,"borderwidth":0,"font":{"color":"rgba(0,0,0,1)","family":"Arial Narrow","size":12.7521793275218},"title":{"text":"Primary Child Care Method is Relative-provided Care","font":{"color":"rgba(0,0,0,1)","family":"Arial Narrow","size":15.9402241594022}}},"hovermode":"closest","barmode":"relative"},"config":{"doubleClick":"reset","modeBarButtonsToAdd":["hoverclosest","hovercompare"],"showSendToCloud":false},"source":"A","attrs":{"ffd76e97997f":{"x":{},"y":{},"fill":{},"type":"bar"}},"cur_data":"ffd76e97997f","visdat":{"ffd76e97997f":["function (y) ","x"]},"highlight":{"on":"plotly_click","persistent":false,"dynamic":false,"selectize":false,"opacityDim":0.2,"selected":{"opacity":1},"debounce":0},"shinyEvents":["plotly_hover","plotly_click","plotly_selected","plotly_relayout","plotly_brushed","plotly_brushing","plotly_clickannotation","plotly_doubleclick","plotly_deselect","plotly_afterplot","plotly_sunburstclick"],"base_url":"https://plot.ly"},"evals":[],"jsHooks":[]}</script>

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

    ## `summarise()` has grouped output by 'YEAR', 'FAMILY_CARE_CAT'. You can override using the `.groups` argument.

    ggplotly(p3) 

<div id="htmlwidget-ef2b5da6d816624823b5" style="width:672px;height:480px;" class="plotly html-widget"></div>
<script type="application/json" data-for="htmlwidget-ef2b5da6d816624823b5">{"x":{"data":[{"orientation":"v","width":[0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091],"base":[161,181,189,202,181,171,143,104,71,67],"x":[2005,2006,2007,2008,2009,2010,2011,2013,2015,2017],"y":[75,98,105,109,90,111,134,129,106,95],"text":["YEAR: 2005<br />FAMILY_CARE_CAT_proportion:  75<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2006<br />FAMILY_CARE_CAT_proportion:  98<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2007<br />FAMILY_CARE_CAT_proportion: 105<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2008<br />FAMILY_CARE_CAT_proportion: 109<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2009<br />FAMILY_CARE_CAT_proportion:  90<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2010<br />FAMILY_CARE_CAT_proportion: 111<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2011<br />FAMILY_CARE_CAT_proportion: 134<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2013<br />FAMILY_CARE_CAT_proportion: 129<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2015<br />FAMILY_CARE_CAT_proportion: 106<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2017<br />FAMILY_CARE_CAT_proportion:  95<br />FAMILY_CARE_CAT: No (Other Childcare)"],"type":"bar","textposition":"none","marker":{"autocolorscale":false,"color":"rgba(255,111,0,1)","line":{"width":1.88976377952756,"color":"transparent"}},"name":"No (Other Childcare)","legendgroup":"No (Other Childcare)","showlegend":true,"xaxis":"x","yaxis":"y","hoverinfo":"text","frame":null},{"orientation":"v","width":[0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091],"base":[0,0,0,0,0,0,0,0,0,0],"x":[2005,2006,2007,2008,2009,2010,2011,2013,2015,2017],"y":[161,181,189,202,181,171,143,104,71,67],"text":["YEAR: 2005<br />FAMILY_CARE_CAT_proportion: 161<br />FAMILY_CARE_CAT: Yes","YEAR: 2006<br />FAMILY_CARE_CAT_proportion: 181<br />FAMILY_CARE_CAT: Yes","YEAR: 2007<br />FAMILY_CARE_CAT_proportion: 189<br />FAMILY_CARE_CAT: Yes","YEAR: 2008<br />FAMILY_CARE_CAT_proportion: 202<br />FAMILY_CARE_CAT: Yes","YEAR: 2009<br />FAMILY_CARE_CAT_proportion: 181<br />FAMILY_CARE_CAT: Yes","YEAR: 2010<br />FAMILY_CARE_CAT_proportion: 171<br />FAMILY_CARE_CAT: Yes","YEAR: 2011<br />FAMILY_CARE_CAT_proportion: 143<br />FAMILY_CARE_CAT: Yes","YEAR: 2013<br />FAMILY_CARE_CAT_proportion: 104<br />FAMILY_CARE_CAT: Yes","YEAR: 2015<br />FAMILY_CARE_CAT_proportion:  71<br />FAMILY_CARE_CAT: Yes","YEAR: 2017<br />FAMILY_CARE_CAT_proportion:  67<br />FAMILY_CARE_CAT: Yes"],"type":"bar","textposition":"none","marker":{"autocolorscale":false,"color":"rgba(0,143,160,1)","line":{"width":1.88976377952756,"color":"transparent"}},"name":"Yes","legendgroup":"Yes","showlegend":true,"xaxis":"x","yaxis":"y","hoverinfo":"text","frame":null}],"layout":{"margin":{"t":95.7011207970112,"r":39.8505603985056,"b":91.6562889165629,"l":86.3428808634288},"font":{"color":"rgba(0,0,0,1)","family":"Arial Narrow","size":15.9402241594022},"title":{"text":"<b> Intergenerational Childcare (First Child,<br /> 6 and under,<br /> Part Time Work ) <\/b>","font":{"color":"rgba(0,0,0,1)","family":"Arial Narrow","size":23.9103362391034},"x":0,"xref":"paper"},"xaxis":{"domain":[0,1],"automargin":true,"type":"linear","autorange":false,"range":[2003.905,2018.095],"tickmode":"array","ticktext":["2004","2008","2012","2016"],"tickvals":[2004,2008,2012,2016],"categoryorder":"array","categoryarray":["2004","2008","2012","2016"],"nticks":null,"ticks":"","tickcolor":null,"ticklen":3.98505603985056,"tickwidth":0,"showticklabels":true,"tickfont":{"color":"rgba(77,77,77,1)","family":"Arial Narrow","size":15.9402241594022},"tickangle":-90,"showline":false,"linecolor":null,"linewidth":0,"showgrid":false,"gridcolor":null,"gridwidth":0,"zeroline":false,"anchor":"y","title":{"text":"","font":{"color":"rgba(0,0,0,1)","family":"Arial Narrow","size":18.5969281859693}},"hoverformat":".2f"},"yaxis":{"domain":[0,1],"automargin":true,"type":"linear","autorange":false,"range":[-15.55,326.55],"tickmode":"array","ticktext":["0","100","200","300"],"tickvals":[0,100,200,300],"categoryorder":"array","categoryarray":["0","100","200","300"],"nticks":null,"ticks":"","tickcolor":null,"ticklen":3.98505603985056,"tickwidth":0,"showticklabels":true,"tickfont":{"color":"rgba(77,77,77,1)","family":"Arial Narrow","size":15.9402241594022},"tickangle":-0,"showline":false,"linecolor":null,"linewidth":0,"showgrid":false,"gridcolor":null,"gridwidth":0,"zeroline":false,"anchor":"x","title":{"text":"Count","font":{"color":"rgba(0,0,0,1)","family":"Arial Narrow","size":18.5969281859693}},"hoverformat":".2f"},"shapes":[{"type":"rect","fillcolor":null,"line":{"color":null,"width":0,"linetype":[]},"yref":"paper","xref":"paper","x0":0,"x1":1,"y0":0,"y1":1}],"showlegend":true,"legend":{"bgcolor":null,"bordercolor":null,"borderwidth":0,"font":{"color":"rgba(0,0,0,1)","family":"Arial Narrow","size":12.7521793275218},"title":{"text":"Primary Child Care Method is Relative-provided Care","font":{"color":"rgba(0,0,0,1)","family":"Arial Narrow","size":15.9402241594022}}},"hovermode":"closest","barmode":"relative"},"config":{"doubleClick":"reset","modeBarButtonsToAdd":["hoverclosest","hovercompare"],"showSendToCloud":false},"source":"A","attrs":{"ffd73f954145":{"x":{},"y":{},"fill":{},"type":"bar"}},"cur_data":"ffd73f954145","visdat":{"ffd73f954145":["function (y) ","x"]},"highlight":{"on":"plotly_click","persistent":false,"dynamic":false,"selectize":false,"opacityDim":0.2,"selected":{"opacity":1},"debounce":0},"shinyEvents":["plotly_hover","plotly_click","plotly_selected","plotly_relayout","plotly_brushed","plotly_brushing","plotly_clickannotation","plotly_doubleclick","plotly_deselect","plotly_afterplot","plotly_sunburstclick"],"base_url":"https://plot.ly"},"evals":[],"jsHooks":[]}</script>

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

    ## `summarise()` has grouped output by 'YEAR', 'FAMILY_CARE_CAT'. You can override using the `.groups` argument.

    ggplotly(p4) 

<div id="htmlwidget-61174c7afdf37417ac05" style="width:672px;height:480px;" class="plotly html-widget"></div>
<script type="application/json" data-for="htmlwidget-61174c7afdf37417ac05">{"x":{"data":[{"orientation":"v","width":[0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091],"base":[216,267,274,306,286,278,218,171,123,101],"x":[2005,2006,2007,2008,2009,2010,2011,2013,2015,2017],"y":[109,147,158,165,152,172,219,211,189,157],"text":["YEAR: 2005<br />FAMILY_CARE_CAT_proportion: 109<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2006<br />FAMILY_CARE_CAT_proportion: 147<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2007<br />FAMILY_CARE_CAT_proportion: 158<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2008<br />FAMILY_CARE_CAT_proportion: 165<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2009<br />FAMILY_CARE_CAT_proportion: 152<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2010<br />FAMILY_CARE_CAT_proportion: 172<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2011<br />FAMILY_CARE_CAT_proportion: 219<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2013<br />FAMILY_CARE_CAT_proportion: 211<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2015<br />FAMILY_CARE_CAT_proportion: 189<br />FAMILY_CARE_CAT: No (Other Childcare)","YEAR: 2017<br />FAMILY_CARE_CAT_proportion: 157<br />FAMILY_CARE_CAT: No (Other Childcare)"],"type":"bar","textposition":"none","marker":{"autocolorscale":false,"color":"rgba(255,111,0,1)","line":{"width":1.88976377952756,"color":"transparent"}},"name":"No (Other Childcare)","legendgroup":"No (Other Childcare)","showlegend":true,"xaxis":"x","yaxis":"y","hoverinfo":"text","frame":null},{"orientation":"v","width":[0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091,0.900000000000091],"base":[0,0,0,0,0,0,0,0,0,0],"x":[2005,2006,2007,2008,2009,2010,2011,2013,2015,2017],"y":[216,267,274,306,286,278,218,171,123,101],"text":["YEAR: 2005<br />FAMILY_CARE_CAT_proportion: 216<br />FAMILY_CARE_CAT: Yes","YEAR: 2006<br />FAMILY_CARE_CAT_proportion: 267<br />FAMILY_CARE_CAT: Yes","YEAR: 2007<br />FAMILY_CARE_CAT_proportion: 274<br />FAMILY_CARE_CAT: Yes","YEAR: 2008<br />FAMILY_CARE_CAT_proportion: 306<br />FAMILY_CARE_CAT: Yes","YEAR: 2009<br />FAMILY_CARE_CAT_proportion: 286<br />FAMILY_CARE_CAT: Yes","YEAR: 2010<br />FAMILY_CARE_CAT_proportion: 278<br />FAMILY_CARE_CAT: Yes","YEAR: 2011<br />FAMILY_CARE_CAT_proportion: 218<br />FAMILY_CARE_CAT: Yes","YEAR: 2013<br />FAMILY_CARE_CAT_proportion: 171<br />FAMILY_CARE_CAT: Yes","YEAR: 2015<br />FAMILY_CARE_CAT_proportion: 123<br />FAMILY_CARE_CAT: Yes","YEAR: 2017<br />FAMILY_CARE_CAT_proportion: 101<br />FAMILY_CARE_CAT: Yes"],"type":"bar","textposition":"none","marker":{"autocolorscale":false,"color":"rgba(0,143,160,1)","line":{"width":1.88976377952756,"color":"transparent"}},"name":"Yes","legendgroup":"Yes","showlegend":true,"xaxis":"x","yaxis":"y","hoverinfo":"text","frame":null}],"layout":{"margin":{"t":95.7011207970112,"r":39.8505603985056,"b":91.6562889165629,"l":86.3428808634288},"font":{"color":"rgba(0,0,0,1)","family":"Arial Narrow","size":15.9402241594022},"title":{"text":"<b> Intergenerational Childcare (First Child Only,<br /> 6 and under,<br /> Part Time Work ) <\/b>","font":{"color":"rgba(0,0,0,1)","family":"Arial Narrow","size":23.9103362391034},"x":0,"xref":"paper"},"xaxis":{"domain":[0,1],"automargin":true,"type":"linear","autorange":false,"range":[2003.905,2018.095],"tickmode":"array","ticktext":["2004","2008","2012","2016"],"tickvals":[2004,2008,2012,2016],"categoryorder":"array","categoryarray":["2004","2008","2012","2016"],"nticks":null,"ticks":"","tickcolor":null,"ticklen":3.98505603985056,"tickwidth":0,"showticklabels":true,"tickfont":{"color":"rgba(77,77,77,1)","family":"Arial Narrow","size":15.9402241594022},"tickangle":-90,"showline":false,"linecolor":null,"linewidth":0,"showgrid":false,"gridcolor":null,"gridwidth":0,"zeroline":false,"anchor":"y","title":{"text":"","font":{"color":"rgba(0,0,0,1)","family":"Arial Narrow","size":18.5969281859693}},"hoverformat":".2f"},"yaxis":{"domain":[0,1],"automargin":true,"type":"linear","autorange":false,"range":[-23.55,494.55],"tickmode":"array","ticktext":["0","100","200","300","400"],"tickvals":[0,100,200,300,400],"categoryorder":"array","categoryarray":["0","100","200","300","400"],"nticks":null,"ticks":"","tickcolor":null,"ticklen":3.98505603985056,"tickwidth":0,"showticklabels":true,"tickfont":{"color":"rgba(77,77,77,1)","family":"Arial Narrow","size":15.9402241594022},"tickangle":-0,"showline":false,"linecolor":null,"linewidth":0,"showgrid":false,"gridcolor":null,"gridwidth":0,"zeroline":false,"anchor":"x","title":{"text":"Count","font":{"color":"rgba(0,0,0,1)","family":"Arial Narrow","size":18.5969281859693}},"hoverformat":".2f"},"shapes":[{"type":"rect","fillcolor":null,"line":{"color":null,"width":0,"linetype":[]},"yref":"paper","xref":"paper","x0":0,"x1":1,"y0":0,"y1":1}],"showlegend":true,"legend":{"bgcolor":null,"bordercolor":null,"borderwidth":0,"font":{"color":"rgba(0,0,0,1)","family":"Arial Narrow","size":12.7521793275218},"title":{"text":"Primary Child Care Method is Relative-provided Care","font":{"color":"rgba(0,0,0,1)","family":"Arial Narrow","size":15.9402241594022}}},"hovermode":"closest","barmode":"relative"},"config":{"doubleClick":"reset","modeBarButtonsToAdd":["hoverclosest","hovercompare"],"showSendToCloud":false},"source":"A","attrs":{"ffd7527e81fe":{"x":{},"y":{},"fill":{},"type":"bar"}},"cur_data":"ffd7527e81fe","visdat":{"ffd7527e81fe":["function (y) ","x"]},"highlight":{"on":"plotly_click","persistent":false,"dynamic":false,"selectize":false,"opacityDim":0.2,"selected":{"opacity":1},"debounce":0},"shinyEvents":["plotly_hover","plotly_click","plotly_selected","plotly_relayout","plotly_brushed","plotly_brushing","plotly_clickannotation","plotly_doubleclick","plotly_deselect","plotly_afterplot","plotly_sunburstclick"],"base_url":"https://plot.ly"},"evals":[],"jsHooks":[]}</script>

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

    ## `summarise()` has grouped output by 'YEAR', 'relative_15'. You can override using the `.groups` argument.

    ggplotly(p5)

<div id="htmlwidget-24f41dbb706e80b778a9" style="width:672px;height:480px;" class="plotly html-widget"></div>
<script type="application/json" data-for="htmlwidget-24f41dbb706e80b778a9">{"x":{"data":[{"orientation":"v","width":[2.69999999999982,2.69999999999982,2.69999999999982,2.69999999999982],"base":[148,283,181,187],"x":[2005,2008,2011,2015],"y":[2,1,146,119],"text":["YEAR: 2005<br />relative_15_proportion:   2<br />relative_15: NaN","YEAR: 2008<br />relative_15_proportion:   1<br />relative_15: NaN","YEAR: 2011<br />relative_15_proportion: 146<br />relative_15: NaN","YEAR: 2015<br />relative_15_proportion: 119<br />relative_15: NaN"],"type":"bar","textposition":"none","marker":{"autocolorscale":false,"color":"rgba(255,111,0,0.7451)","line":{"width":1.88976377952756,"color":"transparent"}},"name":"NaN","legendgroup":"NaN","showlegend":true,"xaxis":"x","yaxis":"y","hoverinfo":"text","frame":null},{"orientation":"v","width":[2.69999999999982,2.69999999999982,2.69999999999982,2.69999999999982],"base":[118,212,122,110],"x":[2005,2008,2011,2015],"y":[30,71,59,77],"text":["YEAR: 2005<br />relative_15_proportion:  30<br />relative_15: No","YEAR: 2008<br />relative_15_proportion:  71<br />relative_15: No","YEAR: 2011<br />relative_15_proportion:  59<br />relative_15: No","YEAR: 2015<br />relative_15_proportion:  77<br />relative_15: No"],"type":"bar","textposition":"none","marker":{"autocolorscale":false,"color":"rgba(199,16,0,0.7451)","line":{"width":1.88976377952756,"color":"transparent"}},"name":"No","legendgroup":"No","showlegend":true,"xaxis":"x","yaxis":"y","hoverinfo":"text","frame":null},{"orientation":"v","width":[2.69999999999982,2.69999999999982,2.69999999999982,2.69999999999982],"base":[0,0,0,0],"x":[2005,2008,2011,2015],"y":[118,212,122,110],"text":["YEAR: 2005<br />relative_15_proportion: 118<br />relative_15: Yes","YEAR: 2008<br />relative_15_proportion: 212<br />relative_15: Yes","YEAR: 2011<br />relative_15_proportion: 122<br />relative_15: Yes","YEAR: 2015<br />relative_15_proportion: 110<br />relative_15: Yes"],"type":"bar","textposition":"none","marker":{"autocolorscale":false,"color":"rgba(0,142,160,0.7451)","line":{"width":1.88976377952756,"color":"transparent"}},"name":"Yes","legendgroup":"Yes","showlegend":true,"xaxis":"x","yaxis":"y","hoverinfo":"text","frame":null}],"layout":{"margin":{"t":71.7907845579079,"r":39.8505603985056,"b":91.6562889165629,"l":86.3428808634288},"font":{"color":"rgba(0,0,0,1)","family":"Arial Narrow","size":15.9402241594022},"xaxis":{"domain":[0,1],"automargin":true,"type":"linear","autorange":false,"range":[2003.015,2016.985],"tickmode":"array","ticktext":["2004","2008","2012","2016"],"tickvals":[2004,2008,2012,2016],"categoryorder":"array","categoryarray":["2004","2008","2012","2016"],"nticks":null,"ticks":"","tickcolor":null,"ticklen":3.98505603985056,"tickwidth":0,"showticklabels":true,"tickfont":{"color":"rgba(77,77,77,1)","family":"Arial Narrow","size":15.9402241594022},"tickangle":-90,"showline":false,"linecolor":null,"linewidth":0,"showgrid":false,"gridcolor":null,"gridwidth":0,"zeroline":false,"anchor":"y","title":{"text":"","font":{"color":"rgba(0,0,0,1)","family":"Arial Narrow","size":18.5969281859693}},"hoverformat":".2f"},"yaxis":{"domain":[0,1],"automargin":true,"type":"linear","autorange":false,"range":[-16.35,343.35],"tickmode":"array","ticktext":["0","100","200","300"],"tickvals":[0,100,200,300],"categoryorder":"array","categoryarray":["0","100","200","300"],"nticks":null,"ticks":"","tickcolor":null,"ticklen":3.98505603985056,"tickwidth":0,"showticklabels":true,"tickfont":{"color":"rgba(77,77,77,1)","family":"Arial Narrow","size":15.9402241594022},"tickangle":-0,"showline":false,"linecolor":null,"linewidth":0,"showgrid":false,"gridcolor":null,"gridwidth":0,"zeroline":false,"anchor":"x","title":{"text":"Count","font":{"color":"rgba(0,0,0,1)","family":"Arial Narrow","size":18.5969281859693}},"hoverformat":".2f"},"shapes":[{"type":"rect","fillcolor":null,"line":{"color":null,"width":0,"linetype":[]},"yref":"paper","xref":"paper","x0":0,"x1":1,"y0":0,"y1":1}],"showlegend":true,"legend":{"bgcolor":null,"bordercolor":null,"borderwidth":0,"font":{"color":"rgba(0,0,0,1)","family":"Arial Narrow","size":12.7521793275218},"title":{"text":"Relative 15 Miles Away??","font":{"color":"rgba(0,0,0,1)","family":"Arial Narrow","size":15.9402241594022}}},"hovermode":"closest","barmode":"relative"},"config":{"doubleClick":"reset","modeBarButtonsToAdd":["hoverclosest","hovercompare"],"showSendToCloud":false},"source":"A","attrs":{"ffd711453d4e":{"x":{},"y":{},"fill":{},"type":"bar"}},"cur_data":"ffd711453d4e","visdat":{"ffd711453d4e":["function (y) ","x"]},"highlight":{"on":"plotly_click","persistent":false,"dynamic":false,"selectize":false,"opacityDim":0.2,"selected":{"opacity":1},"debounce":0},"shinyEvents":["plotly_hover","plotly_click","plotly_selected","plotly_relayout","plotly_brushed","plotly_brushing","plotly_clickannotation","plotly_doubleclick","plotly_deselect","plotly_afterplot","plotly_sunburstclick"],"base_url":"https://plot.ly"},"evals":[],"jsHooks":[]}</script>

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

    ## `summarise()` has grouped output by 'YEAR', 'relative_15'. You can override using the `.groups` argument.

    ## Warning: Removed 6 rows containing missing values (geom_point).

    ## Warning: Removed 6 row(s) containing missing values (geom_path).

![](exploratory_analysis_files/figure-markdown_strict/unnamed-chunk-6-2.png)

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

![](exploratory_analysis_files/figure-markdown_strict/Mean%20Income%20Over%20Time-1.png)

#### Relative Availability vs Intergenerational Childcare vs Wages

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

    ## `summarise()` has grouped output by 'relative_15', 'FAMILY_CARE_CAT', 'FAMILY_CARE_count'. You can override using the `.groups` argument.

![](exploratory_analysis_files/figure-markdown_strict/unnamed-chunk-7-1.png)
It does look like while most respondents with valid responses to
Relative-provided childcare did not have relatives within 15 miles,
(i.e., the pool people with relative care as a primary source of
chilcare and the pool of people without both have proportionally more
respondents without relatives living within 15 miles) respondents with
relatives within 15 miles tend to have proportionally more people with
relatives designated as a primary source of childcare.

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

    ## `summarise()` has grouped output by 'YEAR', 'CHILDCARE_TYPE'. You can override using the `.groups` argument.

    ## Warning: Removed 25 rows containing missing values (geom_point).

    ## Warning: Removed 25 row(s) containing missing values (geom_path).

![](exploratory_analysis_files/figure-markdown_strict/unnamed-chunk-8-1.png)

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

    ## `summarise()` has grouped output by 'YEAR', 'CHILDCARE_TYPE'. You can override using the `.groups` argument.

    ## Warning: Removed 25 rows containing missing values (geom_point).

    ## Warning: Removed 25 row(s) containing missing values (geom_path).

![](exploratory_analysis_files/figure-markdown_strict/unnamed-chunk-8-2.png)
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

    mean_maternal_ages <-  NLSY_Valid_Childcare_1 %>% dplyr::select(PUBID_1997,YEAR,WORK_EDU_HRS,FAMILY_CARE,MATERNAL_AGE) %>% subset(YEAR>2005) %>%
      dplyr::mutate(FAMILY_CARE_CAT = ifelse(`WORK_EDU_HRS`==0, 'No (Mother Provides Childcare)',ifelse(`FAMILY_CARE`==1,'Yes',ifelse(FAMILY_CARE==0,'No (Other Childcare)',NaN)))) %>%
      dplyr::group_by(YEAR,FAMILY_CARE_CAT) %>% mutate(Mean_Maternal_Age = mean(MATERNAL_AGE)) %>% ungroup() %>%
      dplyr::group_by(YEAR) %>% mutate(Overall_Mean_Maternal_Age = mean(MATERNAL_AGE)) %>% ungroup() %>% 
      group_by(YEAR,Mean_Maternal_Age,Overall_Mean_Maternal_Age,FAMILY_CARE_CAT) %>% dplyr::summarize() 

    ## `summarise()` has grouped output by 'YEAR', 'Mean_Maternal_Age', 'Overall_Mean_Maternal_Age'. You can override using the `.groups` argument.

    mean_maternal_ages

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

    ## Warning: Continuous limits supplied to discrete scale.
    ## Did you mean `limits = factor(...)` or `scale_*_continuous()`?

![](exploratory_analysis_files/figure-markdown_strict/unnamed-chunk-9-1.png)
The increasing age makes sense as we are following a cohort of
respondents starting at a certain average age. However, within these
respondents, there was not a big difference between average age of
mothers within different childcare provision options (stay at home
mothers seem to be a bit older on average than other).

##### Across Socioeconomic Statuses

Here, I did look through maternal ages (average) over the years and
across socioeconomic classes, noting that socioeconomic class here are
determined with CV\_INCOME\_FAMILY, using income metrics approximated
from the Balance Article using approximations from the Pew Research
Center \[2\].

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

    ## `summarise()` has grouped output by 'YEAR', 'Mean_Maternal_Age', 'Overall_Mean_Maternal_Age'. You can override using the `.groups` argument.

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

    ## Warning: Removed 24 rows containing missing values (geom_point).

    ## Warning: Removed 24 row(s) containing missing values (geom_path).

    ## Warning: Removed 20 rows containing missing values (geom_point).

    ## Warning: Removed 20 row(s) containing missing values (geom_path).

![](exploratory_analysis_files/figure-markdown_strict/unnamed-chunk-10-1.png)

On average, each year’s mean maternal age (with first child) appears to
be higher for upper classes vs for lower classes.

------------------------------------------------------------------------

\[1\] Budig, M. J., & England, P. (2001). The Wage Penalty for
Motherhood. American Sociological Review, 66(2), 204–225.
<https://doi.org/10.2307/2657415>  
\[2\]
<https://www.thebalance.com/definition-of-middle-class-income-4126870#toc-how-is-middle-class-income-measured>
