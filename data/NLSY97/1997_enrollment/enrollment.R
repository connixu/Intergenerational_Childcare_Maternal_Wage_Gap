
# Set working directory
# setwd()


new_data <- read.table('enrollment.dat', sep=' ')
names(new_data) <- c('R0000100',
  'R0536300',
  'R0536401',
  'R0536402',
  'R1201400',
  'R1235800',
  'R1482600',
  'R2560001',
  'R3881501',
  'R5460601',
  'R7224201',
  'S1538001',
  'S2007701',
  'S3808501',
  'S5408900',
  'S7509700',
  'T0013000',
  'T2015900',
  'T3606200',
  'T5206600',
  'T6656400',
  'T8128800',
  'U0008700',
  'U1845300',
  'U3443800')


# Handle missing values

  new_data[new_data == -1] = NA  # Refused 
  new_data[new_data == -2] = NA  # Dont know 
  new_data[new_data == -3] = NA  # Invalid missing 
  new_data[new_data == -4] = NA  # Valid missing 
  new_data[new_data == -5] = NA  # Non-interview 


# If there are values not categorized they will be represented as NA

vallabels = function(data) {
  data$R0000100[1.0 <= data$R0000100 & data$R0000100 <= 999.0] <- 1.0
  data$R0000100[1000.0 <= data$R0000100 & data$R0000100 <= 1999.0] <- 1000.0
  data$R0000100[2000.0 <= data$R0000100 & data$R0000100 <= 2999.0] <- 2000.0
  data$R0000100[3000.0 <= data$R0000100 & data$R0000100 <= 3999.0] <- 3000.0
  data$R0000100[4000.0 <= data$R0000100 & data$R0000100 <= 4999.0] <- 4000.0
  data$R0000100[5000.0 <= data$R0000100 & data$R0000100 <= 5999.0] <- 5000.0
  data$R0000100[6000.0 <= data$R0000100 & data$R0000100 <= 6999.0] <- 6000.0
  data$R0000100[7000.0 <= data$R0000100 & data$R0000100 <= 7999.0] <- 7000.0
  data$R0000100[8000.0 <= data$R0000100 & data$R0000100 <= 8999.0] <- 8000.0
  data$R0000100[9000.0 <= data$R0000100 & data$R0000100 <= 9999.0] <- 9000.0
  data$R0000100 <- factor(data$R0000100, 
    levels=c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0), 
    labels=c("0",
      "1 TO 999",
      "1000 TO 1999",
      "2000 TO 2999",
      "3000 TO 3999",
      "4000 TO 4999",
      "5000 TO 5999",
      "6000 TO 6999",
      "7000 TO 7999",
      "8000 TO 8999",
      "9000 TO 9999"))
  data$R0536300 <- factor(data$R0536300, 
    levels=c(0.0,1.0,2.0), 
    labels=c("No Information",
      "Male",
      "Female"))
  data$R0536401 <- factor(data$R0536401, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0), 
    labels=c("1: January",
      "2: February",
      "3: March",
      "4: April",
      "5: May",
      "6: June",
      "7: July",
      "8: August",
      "9: September",
      "10: October",
      "11: November",
      "12: December"))
  data$R1201400 <- factor(data$R1201400, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0), 
    labels=c("Not enrolled, no high school degree, no GED",
      "Not enrolled, GED",
      "Not enrolled, high school degree",
      "Not enrolled, some college",
      "Not enrolled, 2-year college graduate",
      "Not enrolled, 4-year college graduate",
      "Not enrolled, graduate degree",
      "Enrolled in grades 1-12, not a high school graduate",
      "Enrolled in a 2-year college",
      "Enrolled in a 4-year college",
      "Enrolled in a graduate program"))
  data$R1235800 <- factor(data$R1235800, 
    levels=c(0.0,1.0), 
    labels=c("Oversample",
      "Cross-sectional"))
  data$R1482600 <- factor(data$R1482600, 
    levels=c(1.0,2.0,3.0,4.0), 
    labels=c("Black",
      "Hispanic",
      "Mixed Race (Non-Hispanic)",
      "Non-Black / Non-Hispanic"))
  data$R2560001 <- factor(data$R2560001, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0), 
    labels=c("Not enrolled, no high school degree, no GED",
      "Not enrolled, GED",
      "Not enrolled, high school degree",
      "Not enrolled, some college",
      "Not enrolled, 2-year college graduate",
      "Not enrolled, 4-year college graduate",
      "Not enrolled, graduate degree",
      "Enrolled in grades 1-12, not a high school graduate",
      "Enrolled in a 2-year college",
      "Enrolled in a 4-year college",
      "Enrolled in a graduate program"))
  data$R3881501 <- factor(data$R3881501, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0), 
    labels=c("Not enrolled, no high school degree, no GED",
      "Not enrolled, GED",
      "Not enrolled, high school degree",
      "Not enrolled, some college",
      "Not enrolled, 2-year college graduate",
      "Not enrolled, 4-year college graduate",
      "Not enrolled, graduate degree",
      "Enrolled in grades 1-12, not a high school graduate",
      "Enrolled in a 2-year college",
      "Enrolled in a 4-year college",
      "Enrolled in a graduate program"))
  data$R5460601 <- factor(data$R5460601, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0), 
    labels=c("Not enrolled, no high school degree, no GED",
      "Not enrolled, GED",
      "Not enrolled, high school degree",
      "Not enrolled, some college",
      "Not enrolled, 2-year college graduate",
      "Not enrolled, 4-year college graduate",
      "Not enrolled, graduate degree",
      "Enrolled in grades 1-12, not a high school graduate",
      "Enrolled in a 2-year college",
      "Enrolled in a 4-year college",
      "Enrolled in a graduate program"))
  data$R7224201 <- factor(data$R7224201, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0), 
    labels=c("Not enrolled, no high school degree, no GED",
      "Not enrolled, GED",
      "Not enrolled, high school degree",
      "Not enrolled, some college",
      "Not enrolled, 2-year college graduate",
      "Not enrolled, 4-year college graduate",
      "Not enrolled, graduate degree",
      "Enrolled in grades 1-12, not a high school graduate",
      "Enrolled in a 2-year college",
      "Enrolled in a 4-year college",
      "Enrolled in a graduate program"))
  data$S1538001 <- factor(data$S1538001, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0), 
    labels=c("Not enrolled, no high school degree, no GED",
      "Not enrolled, GED",
      "Not enrolled, high school degree",
      "Not enrolled, some college",
      "Not enrolled, 2-year college graduate",
      "Not enrolled, 4-year college graduate",
      "Not enrolled, graduate degree",
      "Enrolled in grades 1-12, not a high school graduate",
      "Enrolled in a 2-year college",
      "Enrolled in a 4-year college",
      "Enrolled in a graduate program"))
  data$S2007701 <- factor(data$S2007701, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0), 
    labels=c("Not enrolled, no high school degree, no GED",
      "Not enrolled, GED",
      "Not enrolled, high school degree",
      "Not enrolled, some college",
      "Not enrolled, 2-year college graduate",
      "Not enrolled, 4-year college graduate",
      "Not enrolled, graduate degree",
      "Enrolled in grades 1-12, not a high school graduate",
      "Enrolled in a 2-year college",
      "Enrolled in a 4-year college",
      "Enrolled in a graduate program"))
  data$S3808501 <- factor(data$S3808501, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0), 
    labels=c("Not enrolled, no high school degree, no GED",
      "Not enrolled, GED",
      "Not enrolled, high school degree",
      "Not enrolled, some college",
      "Not enrolled, 2-year college graduate",
      "Not enrolled, 4-year college graduate",
      "Not enrolled, graduate degree",
      "Enrolled in grades 1-12, not a high school graduate",
      "Enrolled in a 2-year college",
      "Enrolled in a 4-year college",
      "Enrolled in a graduate program"))
  data$S5408900 <- factor(data$S5408900, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0), 
    labels=c("Not enrolled, no high school degree, no GED",
      "Not enrolled, GED",
      "Not enrolled, high school degree",
      "Not enrolled, some college",
      "Not enrolled, 2-year college graduate",
      "Not enrolled, 4-year college graduate",
      "Not enrolled, graduate degree",
      "Enrolled in grades 1-12, not a high school graduate",
      "Enrolled in a 2-year college",
      "Enrolled in a 4-year college",
      "Enrolled in a graduate program"))
  data$S7509700 <- factor(data$S7509700, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0), 
    labels=c("Not enrolled, no high school degree, no GED",
      "Not enrolled, GED",
      "Not enrolled, high school degree",
      "Not enrolled, some college",
      "Not enrolled, 2-year college graduate",
      "Not enrolled, 4-year college graduate",
      "Not enrolled, graduate degree",
      "Enrolled in grades 1-12, not a high school graduate",
      "Enrolled in a 2-year college",
      "Enrolled in a 4-year college",
      "Enrolled in a graduate program"))
  data$T0013000 <- factor(data$T0013000, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0), 
    labels=c("Not enrolled, no high school degree, no GED",
      "Not enrolled, GED",
      "Not enrolled, high school degree",
      "Not enrolled, some college",
      "Not enrolled, 2-year college graduate",
      "Not enrolled, 4-year college graduate",
      "Not enrolled, graduate degree",
      "Enrolled in grades 1-12, not a high school graduate",
      "Enrolled in a 2-year college",
      "Enrolled in a 4-year college",
      "Enrolled in a graduate program"))
  data$T2015900 <- factor(data$T2015900, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0), 
    labels=c("Not enrolled, no high school degree, no GED",
      "Not enrolled, GED",
      "Not enrolled, high school degree",
      "Not enrolled, some college",
      "Not enrolled, 2-year college graduate",
      "Not enrolled, 4-year college graduate",
      "Not enrolled, graduate degree",
      "Enrolled in grades 1-12, not a high school graduate",
      "Enrolled in a 2-year college",
      "Enrolled in a 4-year college",
      "Enrolled in a graduate program"))
  data$T3606200 <- factor(data$T3606200, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0), 
    labels=c("Not enrolled, no high school degree, no GED",
      "Not enrolled, GED",
      "Not enrolled, high school degree",
      "Not enrolled, some college",
      "Not enrolled, 2-year college graduate",
      "Not enrolled, 4-year college graduate",
      "Not enrolled, graduate degree",
      "Enrolled in grades 1-12, not a high school graduate",
      "Enrolled in a 2-year college",
      "Enrolled in a 4-year college",
      "Enrolled in a graduate program"))
  data$T5206600 <- factor(data$T5206600, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0), 
    labels=c("Not enrolled, no high school degree, no GED",
      "Not enrolled, GED",
      "Not enrolled, high school degree",
      "Not enrolled, some college",
      "Not enrolled, 2-year college graduate",
      "Not enrolled, 4-year college graduate",
      "Not enrolled, graduate degree",
      "Enrolled in grades 1-12, not a high school graduate",
      "Enrolled in a 2-year college",
      "Enrolled in a 4-year college",
      "Enrolled in a graduate program"))
  data$T6656400 <- factor(data$T6656400, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0), 
    labels=c("Not enrolled, no high school degree, no GED",
      "Not enrolled, GED",
      "Not enrolled, high school degree",
      "Not enrolled, some college",
      "Not enrolled, 2-year college graduate",
      "Not enrolled, 4-year college graduate",
      "Not enrolled, graduate degree",
      "Enrolled in grades 1-12, not a high school graduate",
      "Enrolled in a 2-year college",
      "Enrolled in a 4-year college",
      "Enrolled in a graduate program"))
  data$T8128800 <- factor(data$T8128800, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0), 
    labels=c("Not enrolled, no high school degree, no GED",
      "Not enrolled, GED",
      "Not enrolled, high school degree",
      "Not enrolled, some college",
      "Not enrolled, 2-year college graduate",
      "Not enrolled, 4-year college graduate",
      "Not enrolled, graduate degree",
      "Enrolled in grades 1-12, not a high school graduate",
      "Enrolled in a 2-year college",
      "Enrolled in a 4-year college",
      "Enrolled in a graduate program"))
  data$U0008700 <- factor(data$U0008700, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0), 
    labels=c("Not enrolled, no high school degree, no GED",
      "Not enrolled, GED",
      "Not enrolled, high school degree",
      "Not enrolled, some college",
      "Not enrolled, 2-year college graduate",
      "Not enrolled, 4-year college graduate",
      "Not enrolled, graduate degree",
      "Enrolled in grades 1-12, not a high school graduate",
      "Enrolled in a 2-year college",
      "Enrolled in a 4-year college",
      "Enrolled in a graduate program"))
  data$U1845300 <- factor(data$U1845300, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0), 
    labels=c("Not enrolled, no high school degree, no GED",
      "Not enrolled, GED",
      "Not enrolled, high school degree",
      "Not enrolled, some college",
      "Not enrolled, 2-year college graduate",
      "Not enrolled, 4-year college graduate",
      "Not enrolled, graduate degree",
      "Enrolled in grades 1-12, not a high school graduate",
      "Enrolled in a 2-year college",
      "Enrolled in a 4-year college",
      "Enrolled in a graduate program"))
  data$U3443800 <- factor(data$U3443800, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0), 
    labels=c("Not enrolled, no high school degree, no GED",
      "Not enrolled, GED",
      "Not enrolled, high school degree",
      "Not enrolled, some college",
      "Not enrolled, 2-year college graduate",
      "Not enrolled, 4-year college graduate",
      "Not enrolled, graduate degree",
      "Enrolled in grades 1-12, not a high school graduate",
      "Enrolled in a 2-year college",
      "Enrolled in a 4-year college",
      "Enrolled in a graduate program"))
  return(data)
}

varlabels <- c("PUBID - YTH ID CODE 1997",
  "KEY!SEX (SYMBOL) 1997",
  "KEY!BDATE M/Y (SYMBOL) 1997",
  "KEY!BDATE M/Y (SYMBOL) 1997",
  "CV_ENROLLSTAT 1997",
  "CV_SAMPLE_TYPE 1997",
  "KEY!RACE_ETHNICITY (SYMBOL) 1997",
  "CV_ENROLLSTAT_EDT 1998",
  "CV_ENROLLSTAT_EDT 1999",
  "CV_ENROLLSTAT_EDT 2000",
  "CV_ENROLLSTAT_EDT 2001",
  "CV_ENROLLSTAT_EDT 2002",
  "CV_ENROLLSTAT_EDT 2003",
  "CV_ENROLLSTAT_EDT 2004",
  "CV_ENROLLSTAT 2005",
  "CV_ENROLLSTAT 2006",
  "CV_ENROLLSTAT 2007",
  "CV_ENROLLSTAT 2008",
  "CV_ENROLLSTAT 2009",
  "CV_ENROLLSTAT 2010",
  "CV_ENROLLSTAT 2011",
  "CV_ENROLLSTAT 2013",
  "CV_ENROLLSTAT 2015",
  "CV_ENROLLSTAT 2017",
  "CV_ENROLLSTAT 2019"
)


# Use qnames rather than rnums

qnames = function(data) {
  names(data) <- c("PUBID_1997",
    "KEY_SEX_1997",
    "KEY_BDATE_M_1997",
    "KEY_BDATE_Y_1997",
    "CV_ENROLLSTAT_1997",
    "CV_SAMPLE_TYPE_1997",
    "KEY_RACE_ETHNICITY_1997",
    "CV_ENROLLSTAT_EDT_1998",
    "CV_ENROLLSTAT_EDT_1999",
    "CV_ENROLLSTAT_EDT_2000",
    "CV_ENROLLSTAT_EDT_2001",
    "CV_ENROLLSTAT_EDT_2002",
    "CV_ENROLLSTAT_EDT_2003",
    "CV_ENROLLSTAT_EDT_2004",
    "CV_ENROLLSTAT_2005",
    "CV_ENROLLSTAT_2006",
    "CV_ENROLLSTAT_2007",
    "CV_ENROLLSTAT_2008",
    "CV_ENROLLSTAT_2009",
    "CV_ENROLLSTAT_2010",
    "CV_ENROLLSTAT_2011",
    "CV_ENROLLSTAT_2013",
    "CV_ENROLLSTAT_2015",
    "CV_ENROLLSTAT_2017",
    "CV_ENROLLSTAT_2019")
  return(data)
}


#********************************************************************************************************

# Remove the '#' before the following line to create a data file called "categories" with value labels. 
#categories <- vallabels(new_data)

# Remove the '#' before the following lines to rename variables using Qnames instead of Reference Numbers
#new_data <- qnames(new_data)
#categories <- qnames(categories)

# Produce summaries for the raw (uncategorized) data file
summary(new_data)

# Remove the '#' before the following lines to produce summaries for the "categories" data file.
#categories <- vallabels(new_data)
#summary(categories)

#************************************************************************************************************

