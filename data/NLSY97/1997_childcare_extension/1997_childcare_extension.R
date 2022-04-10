
# Set working directory
# setwd()


new_data <- read.table('1997_childcare_extension.dat', sep=' ')
names(new_data) <- c('R0000100',
  'R0536300',
  'R0536401',
  'R0536402',
  'R1235800',
  'R1482600',
  'R6689900',
  'R6690000',
  'R6690100',
  'R6690200',
  'R6737600',
  'R6737700',
  'R6737800',
  'S1048500',
  'S1048501',
  'S1048502',
  'S1048503',
  'S1048504',
  'S1048505',
  'S1048506',
  'S1048507',
  'S1048508',
  'S3127700',
  'S3127701',
  'S3127702',
  'S3127703',
  'S3127704',
  'S3127705',
  'S3127706',
  'S3127707',
  'S3127708',
  'S4796000',
  'S4796001',
  'S4796002',
  'S4796003',
  'S4796004',
  'S4796005',
  'S4796006',
  'S4796007',
  'S4796008',
  'S6457600',
  'S6457601',
  'S6457602',
  'S6457603',
  'S6457604',
  'S6457605',
  'S6457606',
  'S6457607',
  'S6457608',
  'S6495800',
  'S6495900',
  'S6496300',
  'S6496400',
  'S8492700',
  'S8492701',
  'S8492702',
  'S8492703',
  'S8492704',
  'S8492705',
  'S8492706',
  'S8492707',
  'S8492708',
  'T0886000',
  'T0886001',
  'T0886002',
  'T0886003',
  'T0886004',
  'T0886005',
  'T0886006',
  'T0886007',
  'T0886008',
  'T2954900',
  'T2954901',
  'T2954902',
  'T2954903',
  'T2954904',
  'T2954905',
  'T2954906',
  'T2954907',
  'T2954908',
  'T2997300',
  'T2997400',
  'T2997500',
  'T2997600',
  'T2997800',
  'T2997900',
  'T3000900',
  'T3001000',
  'T3001100',
  'T3001200',
  'T4402200',
  'T4402201',
  'T4402202',
  'T4402203',
  'T4402204',
  'T4402205',
  'T4402206',
  'T4402207',
  'T4402208',
  'T6051700',
  'T6051701',
  'T6051702',
  'T6051703',
  'T6051704',
  'T6051705',
  'T6051706',
  'T6051707',
  'T6051708',
  'T7503300',
  'T7503301',
  'T7503302',
  'T7503303',
  'T7503304',
  'T7503305',
  'T7503306',
  'T7503307',
  'T7540300',
  'T7540400',
  'T7540500',
  'T7540600',
  'T7540800',
  'T7540900',
  'T8972100',
  'T8972101',
  'T8972102',
  'T8972103',
  'T8972104',
  'T8972105',
  'T8972106',
  'T8972107',
  'U0912000',
  'U0912001',
  'U0912002',
  'U0912003',
  'U0912004',
  'U0912005',
  'U0912006',
  'U0912007',
  'U0951200',
  'U0951300',
  'U0951400',
  'U0951500',
  'U0951700',
  'U0951800',
  'U2856100',
  'U2856101',
  'U2856102',
  'U2856103',
  'U2856104',
  'U2856105',
  'U2856106',
  'U2856107',
  'U4281500',
  'U4281501',
  'U4281502',
  'U4281503',
  'U4281504',
  'U4281505',
  'U4281506',
  'U4281507')


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
  data$R6689900 <- factor(data$R6689900, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0), 
    labels=c("Spousal or Partner Care",
      "Relative Care",
      "Sibling Care",
      "Self-Care",
      "Non-relative Care",
      "Family Day Care",
      "Child Care Center",
      "Formal Schooling"))
  data$R6690000 <- factor(data$R6690000, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0), 
    labels=c("Spousal or Partner Care",
      "Relative Care",
      "Sibling Care",
      "Self-Care",
      "Non-relative Care",
      "Family Day Care",
      "Child Care Center",
      "Formal Schooling"))
  data$R6690100 <- factor(data$R6690100, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0), 
    labels=c("Spousal or Partner Care",
      "Relative Care",
      "Sibling Care",
      "Self-Care",
      "Non-relative Care",
      "Family Day Care",
      "Child Care Center",
      "Formal Schooling"))
  data$R6690200 <- factor(data$R6690200, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0), 
    labels=c("Spousal or Partner Care",
      "Relative Care",
      "Sibling Care",
      "Self-Care",
      "Non-relative Care",
      "Family Day Care",
      "Child Care Center",
      "Formal Schooling"))
  data$R6737600 <- factor(data$R6737600, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$R6737700[20.0 <= data$R6737700 & data$R6737700 <= 999999.0] <- 20.0
  data$R6737700 <- factor(data$R6737700, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0), 
    labels=c("0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12",
      "13",
      "14",
      "15",
      "16",
      "17",
      "18",
      "19",
      "20 TO 999999: 20+"))
  data$R6737800 <- factor(data$R6737800, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$S1048500 <- factor(data$S1048500, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Spousal or Partner Care"))
  data$S1048501[1.0 <= data$S1048501 & data$S1048501 <= 2.0] <- 1.0
  data$S1048501 <- factor(data$S1048501, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Relative Care"))
  data$S1048502[1.0 <= data$S1048502 & data$S1048502 <= 3.0] <- 1.0
  data$S1048502 <- factor(data$S1048502, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Sibling Care"))
  data$S1048503[1.0 <= data$S1048503 & data$S1048503 <= 4.0] <- 1.0
  data$S1048503 <- factor(data$S1048503, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Self-Care"))
  data$S1048504[1.0 <= data$S1048504 & data$S1048504 <= 5.0] <- 1.0
  data$S1048504 <- factor(data$S1048504, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Non-relative Care"))
  data$S1048505[1.0 <= data$S1048505 & data$S1048505 <= 6.0] <- 1.0
  data$S1048505 <- factor(data$S1048505, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Family Day Care"))
  data$S1048506[1.0 <= data$S1048506 & data$S1048506 <= 7.0] <- 1.0
  data$S1048506 <- factor(data$S1048506, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Child Care Center"))
  data$S1048507[1.0 <= data$S1048507 & data$S1048507 <= 8.0] <- 1.0
  data$S1048507 <- factor(data$S1048507, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Formal Schooling"))
  data$S1048508[1.0 <= data$S1048508 & data$S1048508 <= 9.0] <- 1.0
  data$S1048508 <- factor(data$S1048508, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "After School Care"))
  data$S3127700 <- factor(data$S3127700, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Spousal or Partner Care"))
  data$S3127701[1.0 <= data$S3127701 & data$S3127701 <= 2.0] <- 1.0
  data$S3127701 <- factor(data$S3127701, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Relative Care"))
  data$S3127702[1.0 <= data$S3127702 & data$S3127702 <= 3.0] <- 1.0
  data$S3127702 <- factor(data$S3127702, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Sibling Care"))
  data$S3127703[1.0 <= data$S3127703 & data$S3127703 <= 4.0] <- 1.0
  data$S3127703 <- factor(data$S3127703, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Self-Care"))
  data$S3127704[1.0 <= data$S3127704 & data$S3127704 <= 5.0] <- 1.0
  data$S3127704 <- factor(data$S3127704, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Non-relative Care"))
  data$S3127705[1.0 <= data$S3127705 & data$S3127705 <= 6.0] <- 1.0
  data$S3127705 <- factor(data$S3127705, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Family Day Care"))
  data$S3127706[1.0 <= data$S3127706 & data$S3127706 <= 7.0] <- 1.0
  data$S3127706 <- factor(data$S3127706, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Child Care Center"))
  data$S3127707[1.0 <= data$S3127707 & data$S3127707 <= 8.0] <- 1.0
  data$S3127707 <- factor(data$S3127707, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Formal Schooling"))
  data$S3127708[1.0 <= data$S3127708 & data$S3127708 <= 9.0] <- 1.0
  data$S3127708 <- factor(data$S3127708, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "After School Care"))
  data$S4796000 <- factor(data$S4796000, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Spousal or Partner Care - your spouse or partner looks after a child"))
  data$S4796001[1.0 <= data$S4796001 & data$S4796001 <= 2.0] <- 1.0
  data$S4796001 <- factor(data$S4796001, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Relative Care - another relative looks after your child/children"))
  data$S4796002[1.0 <= data$S4796002 & data$S4796002 <= 3.0] <- 1.0
  data$S4796002 <- factor(data$S4796002, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Sibling Care - your child's older brother or sister looks after a younger child/children"))
  data$S4796003[1.0 <= data$S4796003 & data$S4796003 <= 4.0] <- 1.0
  data$S4796003 <- factor(data$S4796003, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Self-Care -your child takes care of him or herself"))
  data$S4796004[1.0 <= data$S4796004 & data$S4796004 <= 5.0] <- 1.0
  data$S4796004 <- factor(data$S4796004, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Non-relative Care -a nonrelative looks after your child in your child's home"))
  data$S4796005[1.0 <= data$S4796005 & data$S4796005 <= 6.0] <- 1.0
  data$S4796005 <- factor(data$S4796005, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Family Day Care - your child goes to someone else's home to be looked after"))
  data$S4796006[1.0 <= data$S4796006 & data$S4796006 <= 7.0] <- 1.0
  data$S4796006 <- factor(data$S4796006, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Child Care Center - your child attends a regular pre-school, Headstart, Montessori, day-care center, or other pre-kindergarten program"))
  data$S4796007[1.0 <= data$S4796007 & data$S4796007 <= 8.0] <- 1.0
  data$S4796007 <- factor(data$S4796007, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Formal Schooling - your child attends a kindergarten or elementary school"))
  data$S4796008[1.0 <= data$S4796008 & data$S4796008 <= 9.0] <- 1.0
  data$S4796008 <- factor(data$S4796008, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "After School Care - your child attends a formal program for after the school day"))
  data$S6457600 <- factor(data$S6457600, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Spousal or Partner Care - your spouse or partner looks after a child"))
  data$S6457601[1.0 <= data$S6457601 & data$S6457601 <= 2.0] <- 1.0
  data$S6457601 <- factor(data$S6457601, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Relative Care - another relative looks after your child/children"))
  data$S6457602[1.0 <= data$S6457602 & data$S6457602 <= 3.0] <- 1.0
  data$S6457602 <- factor(data$S6457602, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Sibling Care - your child's older brother or sister looks after a younger child/children"))
  data$S6457603[1.0 <= data$S6457603 & data$S6457603 <= 4.0] <- 1.0
  data$S6457603 <- factor(data$S6457603, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Self-Care -your child takes care of him or herself"))
  data$S6457604[1.0 <= data$S6457604 & data$S6457604 <= 5.0] <- 1.0
  data$S6457604 <- factor(data$S6457604, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Non-relative Care -a nonrelative looks after your child in your child's home"))
  data$S6457605[1.0 <= data$S6457605 & data$S6457605 <= 6.0] <- 1.0
  data$S6457605 <- factor(data$S6457605, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Family Day Care - your child goes to someone else's home to be looked after"))
  data$S6457606[1.0 <= data$S6457606 & data$S6457606 <= 7.0] <- 1.0
  data$S6457606 <- factor(data$S6457606, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Child Care Center - your child attends a regular pre-school, Headstart, Montessori, day-care center, or other pre-kindergarten program"))
  data$S6457607[1.0 <= data$S6457607 & data$S6457607 <= 8.0] <- 1.0
  data$S6457607 <- factor(data$S6457607, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Formal Schooling - your child attends a kindergarten or elementary school"))
  data$S6457608[1.0 <= data$S6457608 & data$S6457608 <= 9.0] <- 1.0
  data$S6457608 <- factor(data$S6457608, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "After School Care - your child attends a formal program for after the school day"))
  data$S6495800 <- factor(data$S6495800, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$S6495900[20.0 <= data$S6495900 & data$S6495900 <= 999999.0] <- 20.0
  data$S6495900 <- factor(data$S6495900, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0), 
    labels=c("0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12",
      "13",
      "14",
      "15",
      "16",
      "17",
      "18",
      "19",
      "20 TO 999999: 20+"))
  data$S6496300 <- factor(data$S6496300, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$S6496400[20.0 <= data$S6496400 & data$S6496400 <= 999999.0] <- 20.0
  data$S6496400 <- factor(data$S6496400, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0), 
    labels=c("0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12",
      "13",
      "14",
      "15",
      "16",
      "17",
      "18",
      "19",
      "20 TO 999999: 20+"))
  data$S8492700 <- factor(data$S8492700, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Spousal or Partner Care - your spouse or partner looks after a child"))
  data$S8492701[1.0 <= data$S8492701 & data$S8492701 <= 2.0] <- 1.0
  data$S8492701 <- factor(data$S8492701, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Relative Care - another relative looks after your child/children"))
  data$S8492702[1.0 <= data$S8492702 & data$S8492702 <= 3.0] <- 1.0
  data$S8492702 <- factor(data$S8492702, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Sibling Care - your child's older brother or sister looks after a younger child/children"))
  data$S8492703[1.0 <= data$S8492703 & data$S8492703 <= 4.0] <- 1.0
  data$S8492703 <- factor(data$S8492703, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Self-Care -your child takes care of him or herself"))
  data$S8492704[1.0 <= data$S8492704 & data$S8492704 <= 5.0] <- 1.0
  data$S8492704 <- factor(data$S8492704, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Non-relative Care -a nonrelative looks after your child in your child's home"))
  data$S8492705[1.0 <= data$S8492705 & data$S8492705 <= 6.0] <- 1.0
  data$S8492705 <- factor(data$S8492705, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Family Day Care - your child goes to the caregiver's home to be looked after"))
  data$S8492706[1.0 <= data$S8492706 & data$S8492706 <= 7.0] <- 1.0
  data$S8492706 <- factor(data$S8492706, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Child Care Center - your child attends a regular pre-school, Headstart, Montessori, day-care center, or other pre-kindergarten program"))
  data$S8492707[1.0 <= data$S8492707 & data$S8492707 <= 8.0] <- 1.0
  data$S8492707 <- factor(data$S8492707, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Formal Schooling - your child attends a kindergarten or elementary school"))
  data$S8492708[1.0 <= data$S8492708 & data$S8492708 <= 9.0] <- 1.0
  data$S8492708 <- factor(data$S8492708, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "After School Care - your child attends a formal program for after the school day"))
  data$T0886000 <- factor(data$T0886000, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Spousal or Partner Care - your spouse or partner looks after a child"))
  data$T0886001[1.0 <= data$T0886001 & data$T0886001 <= 2.0] <- 1.0
  data$T0886001 <- factor(data$T0886001, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Relative Care - another relative looks after your child/children"))
  data$T0886002[1.0 <= data$T0886002 & data$T0886002 <= 3.0] <- 1.0
  data$T0886002 <- factor(data$T0886002, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Sibling Care - your child's older brother or sister looks after a younger child/children"))
  data$T0886003[1.0 <= data$T0886003 & data$T0886003 <= 4.0] <- 1.0
  data$T0886003 <- factor(data$T0886003, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Self-Care -your child takes care of him or herself"))
  data$T0886004[1.0 <= data$T0886004 & data$T0886004 <= 5.0] <- 1.0
  data$T0886004 <- factor(data$T0886004, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Non-relative Care -a nonrelative looks after your child in your child's home"))
  data$T0886005[1.0 <= data$T0886005 & data$T0886005 <= 6.0] <- 1.0
  data$T0886005 <- factor(data$T0886005, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Family Day Care - your child goes to the caregiver's home to be looked after"))
  data$T0886006[1.0 <= data$T0886006 & data$T0886006 <= 7.0] <- 1.0
  data$T0886006 <- factor(data$T0886006, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Child Care Center - your child attends a regular pre-school, Headstart, Montessori, day-care center, or other pre-kindergarten program"))
  data$T0886007[1.0 <= data$T0886007 & data$T0886007 <= 8.0] <- 1.0
  data$T0886007 <- factor(data$T0886007, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Formal Schooling - your child attends a kindergarten or elementary school"))
  data$T0886008[1.0 <= data$T0886008 & data$T0886008 <= 9.0] <- 1.0
  data$T0886008 <- factor(data$T0886008, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "After School Care - your child attends a formal program for after the school day"))
  data$T2954900 <- factor(data$T2954900, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Spousal or Partner Care - your spouse or partner looks after a child"))
  data$T2954901[1.0 <= data$T2954901 & data$T2954901 <= 2.0] <- 1.0
  data$T2954901 <- factor(data$T2954901, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Relative Care - another relative looks after your child/children"))
  data$T2954902[1.0 <= data$T2954902 & data$T2954902 <= 3.0] <- 1.0
  data$T2954902 <- factor(data$T2954902, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Sibling Care - your child's older brother or sister looks after a younger child/children"))
  data$T2954903[1.0 <= data$T2954903 & data$T2954903 <= 4.0] <- 1.0
  data$T2954903 <- factor(data$T2954903, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Self-Care -your child takes care of him or herself"))
  data$T2954904[1.0 <= data$T2954904 & data$T2954904 <= 5.0] <- 1.0
  data$T2954904 <- factor(data$T2954904, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Non-relative Care -a nonrelative looks after your child in your child's home"))
  data$T2954905[1.0 <= data$T2954905 & data$T2954905 <= 6.0] <- 1.0
  data$T2954905 <- factor(data$T2954905, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Family Day Care - your child goes to the caregiver's home to be looked after"))
  data$T2954906[1.0 <= data$T2954906 & data$T2954906 <= 7.0] <- 1.0
  data$T2954906 <- factor(data$T2954906, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Child Care Center - your child attends a regular pre-school, Headstart, Montessori, day-care center, or other pre-kindergarten program"))
  data$T2954907[1.0 <= data$T2954907 & data$T2954907 <= 8.0] <- 1.0
  data$T2954907 <- factor(data$T2954907, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Formal Schooling - your child attends a kindergarten or elementary school"))
  data$T2954908[1.0 <= data$T2954908 & data$T2954908 <= 9.0] <- 1.0
  data$T2954908 <- factor(data$T2954908, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "After School Care - your child attends a formal program for after the school day"))
  data$T2997300 <- factor(data$T2997300, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T2997400[20.0 <= data$T2997400 & data$T2997400 <= 999999.0] <- 20.0
  data$T2997400 <- factor(data$T2997400, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0), 
    labels=c("0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12",
      "13",
      "14",
      "15",
      "16",
      "17",
      "18",
      "19",
      "20 TO 999999: 20+"))
  data$T2997500 <- factor(data$T2997500, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T2997600 <- factor(data$T2997600, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T2997800 <- factor(data$T2997800, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T2997900[20.0 <= data$T2997900 & data$T2997900 <= 999999.0] <- 20.0
  data$T2997900 <- factor(data$T2997900, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0), 
    labels=c("0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12",
      "13",
      "14",
      "15",
      "16",
      "17",
      "18",
      "19",
      "20 TO 999999: 20+"))
  data$T3000900 <- factor(data$T3000900, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T3001000[20.0 <= data$T3001000 & data$T3001000 <= 999999.0] <- 20.0
  data$T3001000 <- factor(data$T3001000, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0), 
    labels=c("0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12",
      "13",
      "14",
      "15",
      "16",
      "17",
      "18",
      "19",
      "20 TO 999999: 20+"))
  data$T3001100 <- factor(data$T3001100, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T3001200 <- factor(data$T3001200, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T4402200 <- factor(data$T4402200, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Spousal or Partner Care - your spouse or partner looks after a child"))
  data$T4402201[1.0 <= data$T4402201 & data$T4402201 <= 2.0] <- 1.0
  data$T4402201 <- factor(data$T4402201, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Relative Care - another relative looks after your child/children"))
  data$T4402202[1.0 <= data$T4402202 & data$T4402202 <= 3.0] <- 1.0
  data$T4402202 <- factor(data$T4402202, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Sibling Care - your child's older brother or sister looks after a younger child/children"))
  data$T4402203[1.0 <= data$T4402203 & data$T4402203 <= 4.0] <- 1.0
  data$T4402203 <- factor(data$T4402203, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Self-Care -your child takes care of him or herself"))
  data$T4402204[1.0 <= data$T4402204 & data$T4402204 <= 5.0] <- 1.0
  data$T4402204 <- factor(data$T4402204, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Non-relative Care -a nonrelative looks after your child in your child's home"))
  data$T4402205[1.0 <= data$T4402205 & data$T4402205 <= 6.0] <- 1.0
  data$T4402205 <- factor(data$T4402205, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Family Day Care - your child goes to the caregiver's home to be looked after"))
  data$T4402206[1.0 <= data$T4402206 & data$T4402206 <= 7.0] <- 1.0
  data$T4402206 <- factor(data$T4402206, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Child Care Center - your child attends a regular pre-school, Headstart, Montessori, day-care center, or other pre-kindergarten program"))
  data$T4402207[1.0 <= data$T4402207 & data$T4402207 <= 8.0] <- 1.0
  data$T4402207 <- factor(data$T4402207, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Formal Schooling - your child attends a kindergarten or elementary school"))
  data$T4402208[1.0 <= data$T4402208 & data$T4402208 <= 9.0] <- 1.0
  data$T4402208 <- factor(data$T4402208, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "After School Care - your child attends a formal program for after the school day"))
  data$T6051700 <- factor(data$T6051700, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Spousal or Partner Care - your spouse or partner looks after a child"))
  data$T6051701[1.0 <= data$T6051701 & data$T6051701 <= 2.0] <- 1.0
  data$T6051701 <- factor(data$T6051701, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Relative Care - another relative looks after your child/children"))
  data$T6051702[1.0 <= data$T6051702 & data$T6051702 <= 3.0] <- 1.0
  data$T6051702 <- factor(data$T6051702, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Sibling Care - your child's older brother or sister looks after a younger child/children"))
  data$T6051703[1.0 <= data$T6051703 & data$T6051703 <= 4.0] <- 1.0
  data$T6051703 <- factor(data$T6051703, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Self-Care -your child takes care of him or herself"))
  data$T6051704[1.0 <= data$T6051704 & data$T6051704 <= 5.0] <- 1.0
  data$T6051704 <- factor(data$T6051704, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Non-relative Care -a nonrelative looks after your child in your child's home"))
  data$T6051705[1.0 <= data$T6051705 & data$T6051705 <= 6.0] <- 1.0
  data$T6051705 <- factor(data$T6051705, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Family Day Care - your child goes to the caregiver's home to be looked after"))
  data$T6051706[1.0 <= data$T6051706 & data$T6051706 <= 7.0] <- 1.0
  data$T6051706 <- factor(data$T6051706, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Child Care Center - your child attends a regular pre-school, Headstart, Montessori, day-care center, or other pre-kindergarten program"))
  data$T6051707[1.0 <= data$T6051707 & data$T6051707 <= 8.0] <- 1.0
  data$T6051707 <- factor(data$T6051707, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Formal Schooling - your child attends a kindergarten or elementary school"))
  data$T6051708[1.0 <= data$T6051708 & data$T6051708 <= 9.0] <- 1.0
  data$T6051708 <- factor(data$T6051708, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "After School Care - your child attends a formal program for after the school day"))
  data$T7503300 <- factor(data$T7503300, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Spousal or Partner Care - your spouse or partner looks after a child"))
  data$T7503301[1.0 <= data$T7503301 & data$T7503301 <= 2.0] <- 1.0
  data$T7503301 <- factor(data$T7503301, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Relative Care - another relative looks after your child/children"))
  data$T7503302[1.0 <= data$T7503302 & data$T7503302 <= 3.0] <- 1.0
  data$T7503302 <- factor(data$T7503302, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Sibling Care - your child's older brother or sister looks after a younger child/children"))
  data$T7503303[1.0 <= data$T7503303 & data$T7503303 <= 4.0] <- 1.0
  data$T7503303 <- factor(data$T7503303, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Self-Care -your child takes care of him or herself"))
  data$T7503304[1.0 <= data$T7503304 & data$T7503304 <= 5.0] <- 1.0
  data$T7503304 <- factor(data$T7503304, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Non-relative Care -a nonrelative looks after your child"))
  data$T7503305[1.0 <= data$T7503305 & data$T7503305 <= 7.0] <- 1.0
  data$T7503305 <- factor(data$T7503305, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Child Care Center - your child attends a regular pre-school, Headstart, Montessori, day-care center, or other program other than elementary school pre-kindergarten program"))
  data$T7503306[1.0 <= data$T7503306 & data$T7503306 <= 8.0] <- 1.0
  data$T7503306 <- factor(data$T7503306, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Formal Schooling - your child attends an elementary or middle school for pre-kindergarten, kindergarten, or another grade"))
  data$T7503307[1.0 <= data$T7503307 & data$T7503307 <= 9.0] <- 1.0
  data$T7503307 <- factor(data$T7503307, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "After School Care - your child attends a formal program for after the school day"))
  data$T7540300 <- factor(data$T7540300, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T7540400[20.0 <= data$T7540400 & data$T7540400 <= 999999.0] <- 20.0
  data$T7540400 <- factor(data$T7540400, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0), 
    labels=c("0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12",
      "13",
      "14",
      "15",
      "16",
      "17",
      "18",
      "19",
      "20 TO 999999: 20+"))
  data$T7540500 <- factor(data$T7540500, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T7540600 <- factor(data$T7540600, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T7540800 <- factor(data$T7540800, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T7540900[20.0 <= data$T7540900 & data$T7540900 <= 999999.0] <- 20.0
  data$T7540900 <- factor(data$T7540900, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0), 
    labels=c("0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12",
      "13",
      "14",
      "15",
      "16",
      "17",
      "18",
      "19",
      "20 TO 999999: 20+"))
  data$T8972100 <- factor(data$T8972100, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Spousal or Partner Care - your spouse or partner looks after a child"))
  data$T8972101[1.0 <= data$T8972101 & data$T8972101 <= 2.0] <- 1.0
  data$T8972101 <- factor(data$T8972101, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Relative Care - another relative looks after your child/children"))
  data$T8972102[1.0 <= data$T8972102 & data$T8972102 <= 3.0] <- 1.0
  data$T8972102 <- factor(data$T8972102, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Sibling Care - your child's older brother or sister looks after a younger child/children"))
  data$T8972103[1.0 <= data$T8972103 & data$T8972103 <= 4.0] <- 1.0
  data$T8972103 <- factor(data$T8972103, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Self-Care -your child takes care of him or herself"))
  data$T8972104[1.0 <= data$T8972104 & data$T8972104 <= 5.0] <- 1.0
  data$T8972104 <- factor(data$T8972104, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Non-relative Care -a nonrelative looks after your child"))
  data$T8972105[1.0 <= data$T8972105 & data$T8972105 <= 7.0] <- 1.0
  data$T8972105 <- factor(data$T8972105, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Child Care Center - your child attends a regular pre-school, Headstart, Montessori, day-care center, or other program other than elementary school pre-kindergarten program"))
  data$T8972106[1.0 <= data$T8972106 & data$T8972106 <= 8.0] <- 1.0
  data$T8972106 <- factor(data$T8972106, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Formal Schooling - your child attends an elementary or middle school for pre-kindergarten, kindergarten, or another grade"))
  data$T8972107[1.0 <= data$T8972107 & data$T8972107 <= 9.0] <- 1.0
  data$T8972107 <- factor(data$T8972107, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "After School Care - your child attends a formal program for after the school day"))
  data$U0912000 <- factor(data$U0912000, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Spousal or Partner Care - your spouse or partner looks after a child"))
  data$U0912001[1.0 <= data$U0912001 & data$U0912001 <= 2.0] <- 1.0
  data$U0912001 <- factor(data$U0912001, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Relative Care - another relative looks after your child/children"))
  data$U0912002[1.0 <= data$U0912002 & data$U0912002 <= 3.0] <- 1.0
  data$U0912002 <- factor(data$U0912002, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Sibling Care - your child's older brother or sister looks after a younger child/children"))
  data$U0912003[1.0 <= data$U0912003 & data$U0912003 <= 4.0] <- 1.0
  data$U0912003 <- factor(data$U0912003, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Self-Care -your child takes care of him or herself"))
  data$U0912004[1.0 <= data$U0912004 & data$U0912004 <= 5.0] <- 1.0
  data$U0912004 <- factor(data$U0912004, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Non-relative Care -a nonrelative looks after your child"))
  data$U0912005[1.0 <= data$U0912005 & data$U0912005 <= 7.0] <- 1.0
  data$U0912005 <- factor(data$U0912005, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Child Care Center - your child attends a regular pre-school, Headstart, Montessori, day-care center, or other program other than elementary school pre-kindergarten program"))
  data$U0912006[1.0 <= data$U0912006 & data$U0912006 <= 8.0] <- 1.0
  data$U0912006 <- factor(data$U0912006, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Formal Schooling - your child attends an elementary or middle school for pre-kindergarten, kindergarten, or another grade"))
  data$U0912007[1.0 <= data$U0912007 & data$U0912007 <= 9.0] <- 1.0
  data$U0912007 <- factor(data$U0912007, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "After School Care - your child attends a formal program for after the school day"))
  data$U0951200 <- factor(data$U0951200, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$U0951300[20.0 <= data$U0951300 & data$U0951300 <= 999999.0] <- 20.0
  data$U0951300 <- factor(data$U0951300, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0), 
    labels=c("0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12",
      "13",
      "14",
      "15",
      "16",
      "17",
      "18",
      "19",
      "20 TO 999999: 20+"))
  data$U0951400 <- factor(data$U0951400, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$U0951500 <- factor(data$U0951500, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$U0951700 <- factor(data$U0951700, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$U0951800[20.0 <= data$U0951800 & data$U0951800 <= 999999.0] <- 20.0
  data$U0951800 <- factor(data$U0951800, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0), 
    labels=c("0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12",
      "13",
      "14",
      "15",
      "16",
      "17",
      "18",
      "19",
      "20 TO 999999: 20+"))
  data$U2856100 <- factor(data$U2856100, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Spousal or Partner Care - your spouse or partner looks after a child"))
  data$U2856101[1.0 <= data$U2856101 & data$U2856101 <= 2.0] <- 1.0
  data$U2856101 <- factor(data$U2856101, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Relative Care - another relative looks after your child/children"))
  data$U2856102[1.0 <= data$U2856102 & data$U2856102 <= 3.0] <- 1.0
  data$U2856102 <- factor(data$U2856102, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Sibling Care - your child's older brother or sister looks after a younger child/children"))
  data$U2856103[1.0 <= data$U2856103 & data$U2856103 <= 4.0] <- 1.0
  data$U2856103 <- factor(data$U2856103, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Self-Care -your child takes care of him or herself"))
  data$U2856104[1.0 <= data$U2856104 & data$U2856104 <= 5.0] <- 1.0
  data$U2856104 <- factor(data$U2856104, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Non-relative Care -a nonrelative looks after your child"))
  data$U2856105[1.0 <= data$U2856105 & data$U2856105 <= 7.0] <- 1.0
  data$U2856105 <- factor(data$U2856105, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Child Care Center - your child attends a regular pre-school, Headstart, Montessori, day-care center, or other program other than elementary school pre-kindergarten program"))
  data$U2856106[1.0 <= data$U2856106 & data$U2856106 <= 8.0] <- 1.0
  data$U2856106 <- factor(data$U2856106, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Formal Schooling - your child attends an elementary or middle school for pre-kindergarten, kindergarten, or another grade"))
  data$U2856107[1.0 <= data$U2856107 & data$U2856107 <= 9.0] <- 1.0
  data$U2856107 <- factor(data$U2856107, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "After School Care - your child attends a formal program for after the school day"))
  data$U4281500 <- factor(data$U4281500, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Spousal or Partner Care - your spouse or partner looks after a child"))
  data$U4281501[1.0 <= data$U4281501 & data$U4281501 <= 2.0] <- 1.0
  data$U4281501 <- factor(data$U4281501, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Relative Care - another relative looks after your child/children"))
  data$U4281502[1.0 <= data$U4281502 & data$U4281502 <= 3.0] <- 1.0
  data$U4281502 <- factor(data$U4281502, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Sibling Care - your child's older brother or sister looks after a younger child/children"))
  data$U4281503[1.0 <= data$U4281503 & data$U4281503 <= 4.0] <- 1.0
  data$U4281503 <- factor(data$U4281503, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Self-Care -your child takes care of him or herself"))
  data$U4281504[1.0 <= data$U4281504 & data$U4281504 <= 5.0] <- 1.0
  data$U4281504 <- factor(data$U4281504, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Non-relative Care -a nonrelative looks after your child"))
  data$U4281505[1.0 <= data$U4281505 & data$U4281505 <= 7.0] <- 1.0
  data$U4281505 <- factor(data$U4281505, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Child Care Center - your child attends a regular pre-school, Headstart, Montessori, day-care center, or other program other than elementary school pre-kindergarten program"))
  data$U4281506[1.0 <= data$U4281506 & data$U4281506 <= 8.0] <- 1.0
  data$U4281506 <- factor(data$U4281506, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Formal Schooling - your child attends an elementary or middle school for pre-kindergarten, kindergarten, or another grade"))
  data$U4281507[1.0 <= data$U4281507 & data$U4281507 <= 9.0] <- 1.0
  data$U4281507 <- factor(data$U4281507, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "After School Care - your child attends a formal program for after the school day"))
  return(data)
}

varlabels <- c("PUBID - YTH ID CODE 1997",
  "KEY!SEX (SYMBOL) 1997",
  "KEY!BDATE M/Y (SYMBOL) 1997",
  "KEY!BDATE M/Y (SYMBOL) 1997",
  "CV_SAMPLE_TYPE 1997",
  "KEY!RACE_ETHNICITY (SYMBOL) 1997",
  "PRIMARY CHILD CARE ARRANGEMENT L1 2001",
  "PRIMARY CHILD CARE ARRANGEMENT L2 2001",
  "PRIMARY CHILD CARE ARRANGEMENT L3 2001",
  "PRIMARY CHILD CARE ARRANGEMENT L4 2001",
  "ANY RELATIVES W/IN 15 MINS 2001",
  "# RELATIVES W/IN 15 MINS 2001",
  "RELATV CARE FOR CHILD NO PAY 15 MIN 2001",
  "SELECT ALL CARE ARRANGEMENTS 2002",
  "SELECT ALL CARE ARRANGEMENTS 2002",
  "SELECT ALL CARE ARRANGEMENTS 2002",
  "SELECT ALL CARE ARRANGEMENTS 2002",
  "SELECT ALL CARE ARRANGEMENTS 2002",
  "SELECT ALL CARE ARRANGEMENTS 2002",
  "SELECT ALL CARE ARRANGEMENTS 2002",
  "SELECT ALL CARE ARRANGEMENTS 2002",
  "SELECT ALL CARE ARRANGEMENTS 2002",
  "SELECT ALL CARE ARRANGEMENTS 2003",
  "SELECT ALL CARE ARRANGEMENTS 2003",
  "SELECT ALL CARE ARRANGEMENTS 2003",
  "SELECT ALL CARE ARRANGEMENTS 2003",
  "SELECT ALL CARE ARRANGEMENTS 2003",
  "SELECT ALL CARE ARRANGEMENTS 2003",
  "SELECT ALL CARE ARRANGEMENTS 2003",
  "SELECT ALL CARE ARRANGEMENTS 2003",
  "SELECT ALL CARE ARRANGEMENTS 2003",
  "SELECT ALL CARE ARRANGEMENTS: SPOUSL/PRNTER 2004",
  "SELECT ALL CARE ARRANGEMENTS: RELAVTIVE CRE 2004",
  "SELECT ALL CARE ARRANGEMENTS: SBLING CARE 2004",
  "SELECT ALL CARE ARRANGEMENTS:SELF-CARE 2004",
  "SELECT ALL CARE ARRANGEMENTS: NON-REL CARE 2004",
  "SELECT ALL CARE ARRANGEMENTS 2004",
  "SELECT ALL CARE ARRANGEMENTS: CHILD CRE CENTRE 2004",
  "SELECT ALL CARE ARRANGEMENTS: FORMAL SCHOOLING 2004",
  "SELECT ALL CARE ARRANGEMENTSBFRE/AFTR SCHOOL CARE 2004",
  "SELECT ALL CARE ARRANGEMENTS 2005",
  "SELECT ALL CARE ARRANGEMENTS 2005",
  "SELECT ALL CARE ARRANGEMENTS 2005",
  "SELECT ALL CARE ARRANGEMENTS 2005",
  "SELECT ALL CARE ARRANGEMENTS 2005",
  "SELECT ALL CARE ARRANGEMENTS 2005",
  "SELECT ALL CARE ARRANGEMENTS 2005",
  "SELECT ALL CARE ARRANGEMENTS 2005",
  "SELECT ALL CARE ARRANGEMENTS 2005",
  "ANY RELATIVES W/IN 15 MINS 2005",
  "# RELATIVES W/IN 15 MINS 2005",
  "ANY RELATIVES W/IN 15-45 MINS 2005",
  "# RELATIVES W/IN 15-45 MINS 2005",
  "SELECT ALL CARE ARRANGEMENTS 2006",
  "SELECT ALL CARE ARRANGEMENTS 2006",
  "SELECT ALL CARE ARRANGEMENTS 2006",
  "SELECT ALL CARE ARRANGEMENTS 2006",
  "SELECT ALL CARE ARRANGEMENTS 2006",
  "SELECT ALL CARE ARRANGEMENTS 2006",
  "SELECT ALL CARE ARRANGEMENTS 2006",
  "SELECT ALL CARE ARRANGEMENTS 2006",
  "SELECT ALL CARE ARRANGEMENTS 2006",
  "SELECT ALL CARE ARRANGEMENTS 2007",
  "SELECT ALL CARE ARRANGEMENTS 2007",
  "SELECT ALL CARE ARRANGEMENTS 2007",
  "SELECT ALL CARE ARRANGEMENTS 2007",
  "SELECT ALL CARE ARRANGEMENTS 2007",
  "SELECT ALL CARE ARRANGEMENTS 2007",
  "SELECT ALL CARE ARRANGEMENTS 2007",
  "SELECT ALL CARE ARRANGEMENTS 2007",
  "SELECT ALL CARE ARRANGEMENTS 2007",
  "SELECT ALL CARE ARRANGEMENTS 2008",
  "SELECT ALL CARE ARRANGEMENTS 2008",
  "SELECT ALL CARE ARRANGEMENTS 2008",
  "SELECT ALL CARE ARRANGEMENTS 2008",
  "SELECT ALL CARE ARRANGEMENTS 2008",
  "SELECT ALL CARE ARRANGEMENTS 2008",
  "SELECT ALL CARE ARRANGEMENTS 2008",
  "SELECT ALL CARE ARRANGEMENTS 2008",
  "SELECT ALL CARE ARRANGEMENTS 2008",
  "ANY RELATIVES W/IN 15 MINS 2008",
  "# RELATIVES W/IN 15 MINS 2008",
  "RELATV CARE FOR CHILD NO PAY 15 MIN 2008",
  "RELATIVE CARE FOR CHILD WITH PAY 15 2008",
  "ANY RELATIVES W/IN 15-45 MINS 2008",
  "# RELATIVES W/IN 15-45 MINS 2008",
  "HAVE RELATIVES W/IN 15 MINS NO KIDS 2008",
  "# RELATIVES W/IN 15 MINS, NO KIDS 2008",
  "RELTV 15 MINS ABLE PROV CARE NO KID 2008",
  "HAVE RELATIVES W/IN 45 MINS NO KIDS 2008",
  "SELECT ALL CARE ARRANGEMENTS 2009",
  "SELECT ALL CARE ARRANGEMENTS 2009",
  "SELECT ALL CARE ARRANGEMENTS 2009",
  "SELECT ALL CARE ARRANGEMENTS 2009",
  "SELECT ALL CARE ARRANGEMENTS 2009",
  "SELECT ALL CARE ARRANGEMENTS 2009",
  "SELECT ALL CARE ARRANGEMENTS 2009",
  "SELECT ALL CARE ARRANGEMENTS 2009",
  "SELECT ALL CARE ARRANGEMENTS 2009",
  "SELECT ALL CARE ARRANGEMENTS 2010",
  "SELECT ALL CARE ARRANGEMENTS 2010",
  "SELECT ALL CARE ARRANGEMENTS 2010",
  "SELECT ALL CARE ARRANGEMENTS 2010",
  "SELECT ALL CARE ARRANGEMENTS 2010",
  "SELECT ALL CARE ARRANGEMENTS 2010",
  "SELECT ALL CARE ARRANGEMENTS 2010",
  "SELECT ALL CARE ARRANGEMENTS 2010",
  "SELECT ALL CARE ARRANGEMENTS 2010",
  "SELECT ALL CARE ARRANGEMENTS 2011",
  "SELECT ALL CARE ARRANGEMENTS 2011",
  "SELECT ALL CARE ARRANGEMENTS 2011",
  "SELECT ALL CARE ARRANGEMENTS 2011",
  "SELECT ALL CARE ARRANGEMENTS 2011",
  "SELECT ALL CARE ARRANGEMENTS 2011",
  "SELECT ALL CARE ARRANGEMENTS 2011",
  "SELECT ALL CARE ARRANGEMENTS 2011",
  "ANY RELATIVES W/IN 15 MINS 2011",
  "# RELATIVES W/IN 15 MINS 2011",
  "RELATV CARE FOR CHILD NO PAY 15 MIN 2011",
  "RELATIVE CARE FOR CHILD WITH PAY 15 2011",
  "ANY RELATIVES W/IN 15-45 MINS 2011",
  "# RELATIVES W/IN 15-45 MINS 2011",
  "SELECT ALL CARE ARRANGEMENTS 2013",
  "SELECT ALL CARE ARRANGEMENTS 2013",
  "SELECT ALL CARE ARRANGEMENTS 2013",
  "SELECT ALL CARE ARRANGEMENTS 2013",
  "SELECT ALL CARE ARRANGEMENTS 2013",
  "SELECT ALL CARE ARRANGEMENTS 2013",
  "SELECT ALL CARE ARRANGEMENTS 2013",
  "SELECT ALL CARE ARRANGEMENTS 2013",
  "SELECT ALL CARE ARRANGEMENTS 2015",
  "SELECT ALL CARE ARRANGEMENTS 2015",
  "SELECT ALL CARE ARRANGEMENTS 2015",
  "SELECT ALL CARE ARRANGEMENTS 2015",
  "SELECT ALL CARE ARRANGEMENTS 2015",
  "SELECT ALL CARE ARRANGEMENTS 2015",
  "SELECT ALL CARE ARRANGEMENTS 2015",
  "SELECT ALL CARE ARRANGEMENTS 2015",
  "ANY RELATIVES W/IN 15 MINS 2015",
  "# RELATIVES W/IN 15 MINS 2015",
  "RELATV CARE FOR CHILD NO PAY 15 MIN 2015",
  "RELATIVE CARE FOR CHILD WITH PAY 15 2015",
  "ANY RELATIVES W/IN 15-45 MINS 2015",
  "# RELATIVES W/IN 15-45 MINS 2015",
  "SELECT ALL CARE ARRANGEMENTS 2017",
  "SELECT ALL CARE ARRANGEMENTS 2017",
  "SELECT ALL CARE ARRANGEMENTS 2017",
  "SELECT ALL CARE ARRANGEMENTS 2017",
  "SELECT ALL CARE ARRANGEMENTS 2017",
  "SELECT ALL CARE ARRANGEMENTS 2017",
  "SELECT ALL CARE ARRANGEMENTS 2017",
  "SELECT ALL CARE ARRANGEMENTS 2017",
  "SELECT ALL CARE ARRANGEMENTS 2019",
  "SELECT ALL CARE ARRANGEMENTS 2019",
  "SELECT ALL CARE ARRANGEMENTS 2019",
  "SELECT ALL CARE ARRANGEMENTS 2019",
  "SELECT ALL CARE ARRANGEMENTS 2019",
  "SELECT ALL CARE ARRANGEMENTS 2019",
  "SELECT ALL CARE ARRANGEMENTS 2019",
  "SELECT ALL CARE ARRANGEMENTS 2019"
)


# Use qnames rather than rnums

qnames = function(data) {
  names(data) <- c("PUBID_1997",
    "KEY_SEX_1997",
    "KEY_BDATE_M_1997",
    "KEY_BDATE_Y_1997",
    "CV_SAMPLE_TYPE_1997",
    "KEY_RACE_ETHNICITY_1997",
    "YCCA-1100.01_2001",
    "YCCA-1100.02_2001",
    "YCCA-1100.03_2001",
    "YCCA-1100.04_2001",
    "YCCA-6800_2001",
    "YCCA-6900_2001",
    "YCCA-7000_2001",
    "YCCA-1100A~000001_2002",
    "YCCA-1100A~000002_2002",
    "YCCA-1100A~000003_2002",
    "YCCA-1100A~000004_2002",
    "YCCA-1100A~000005_2002",
    "YCCA-1100A~000006_2002",
    "YCCA-1100A~000007_2002",
    "YCCA-1100A~000008_2002",
    "YCCA-1100A~000009_2002",
    "YCCA-1100A~000001_2003",
    "YCCA-1100A~000002_2003",
    "YCCA-1100A~000003_2003",
    "YCCA-1100A~000004_2003",
    "YCCA-1100A~000005_2003",
    "YCCA-1100A~000006_2003",
    "YCCA-1100A~000007_2003",
    "YCCA-1100A~000008_2003",
    "YCCA-1100A~000009_2003",
    "YCCA-1100A~000001_2004",
    "YCCA-1100A~000002_2004",
    "YCCA-1100A~000003_2004",
    "YCCA-1100A~000004_2004",
    "YCCA-1100A~000005_2004",
    "YCCA-1100A~000006_2004",
    "YCCA-1100A~000007_2004",
    "YCCA-1100A~000008_2004",
    "YCCA-1100A~000009_2004",
    "YCCA-1100A~000001_2005",
    "YCCA-1100A~000002_2005",
    "YCCA-1100A~000003_2005",
    "YCCA-1100A~000004_2005",
    "YCCA-1100A~000005_2005",
    "YCCA-1100A~000006_2005",
    "YCCA-1100A~000007_2005",
    "YCCA-1100A~000008_2005",
    "YCCA-1100A~000009_2005",
    "YCCAL-6800_2005",
    "YCCAL-6900_2005",
    "YCCAL-7300_2005",
    "YCCAL-7400_2005",
    "YCCA-1100A~000001_2006",
    "YCCA-1100A~000002_2006",
    "YCCA-1100A~000003_2006",
    "YCCA-1100A~000004_2006",
    "YCCA-1100A~000005_2006",
    "YCCA-1100A~000006_2006",
    "YCCA-1100A~000007_2006",
    "YCCA-1100A~000008_2006",
    "YCCA-1100A~000009_2006",
    "YCCA-1100A~000001_2007",
    "YCCA-1100A~000002_2007",
    "YCCA-1100A~000003_2007",
    "YCCA-1100A~000004_2007",
    "YCCA-1100A~000005_2007",
    "YCCA-1100A~000006_2007",
    "YCCA-1100A~000007_2007",
    "YCCA-1100A~000008_2007",
    "YCCA-1100A~000009_2007",
    "YCCA-1100A~000001_2008",
    "YCCA-1100A~000002_2008",
    "YCCA-1100A~000003_2008",
    "YCCA-1100A~000004_2008",
    "YCCA-1100A~000005_2008",
    "YCCA-1100A~000006_2008",
    "YCCA-1100A~000007_2008",
    "YCCA-1100A~000008_2008",
    "YCCA-1100A~000009_2008",
    "YCCAL-6800_2008",
    "YCCAL-6900_2008",
    "YCCAL-7000_2008",
    "YCCAL-7100_2008",
    "YCCAL-7300_2008",
    "YCCAL-7400_2008",
    "YCCAL-9000_2008",
    "YCCAL-9100_2008",
    "YCCAL-9200_2008",
    "YCCAL-9300_2008",
    "YCCA-1100A~000001_2009",
    "YCCA-1100A~000002_2009",
    "YCCA-1100A~000003_2009",
    "YCCA-1100A~000004_2009",
    "YCCA-1100A~000005_2009",
    "YCCA-1100A~000006_2009",
    "YCCA-1100A~000007_2009",
    "YCCA-1100A~000008_2009",
    "YCCA-1100A~000009_2009",
    "YCCA-1100A~000001_2010",
    "YCCA-1100A~000002_2010",
    "YCCA-1100A~000003_2010",
    "YCCA-1100A~000004_2010",
    "YCCA-1100A~000005_2010",
    "YCCA-1100A~000006_2010",
    "YCCA-1100A~000007_2010",
    "YCCA-1100A~000008_2010",
    "YCCA-1100A~000009_2010",
    "YCCA-1100A~000001_2011",
    "YCCA-1100A~000002_2011",
    "YCCA-1100A~000003_2011",
    "YCCA-1100A~000004_2011",
    "YCCA-1100A~000005_2011",
    "YCCA-1100A~000007_2011",
    "YCCA-1100A~000008_2011",
    "YCCA-1100A~000009_2011",
    "YCCAL-6800_2011",
    "YCCAL-6900_2011",
    "YCCAL-7000_2011",
    "YCCAL-7100_2011",
    "YCCAL-7300_2011",
    "YCCAL-7400_2011",
    "YCCA-1100A~000001_2013",
    "YCCA-1100A~000002_2013",
    "YCCA-1100A~000003_2013",
    "YCCA-1100A~000004_2013",
    "YCCA-1100A~000005_2013",
    "YCCA-1100A~000007_2013",
    "YCCA-1100A~000008_2013",
    "YCCA-1100A~000009_2013",
    "YCCA-1100A~000001_2015",
    "YCCA-1100A~000002_2015",
    "YCCA-1100A~000003_2015",
    "YCCA-1100A~000004_2015",
    "YCCA-1100A~000005_2015",
    "YCCA-1100A~000007_2015",
    "YCCA-1100A~000008_2015",
    "YCCA-1100A~000009_2015",
    "YCCAL-6800_2015",
    "YCCAL-6900_2015",
    "YCCAL-7000_2015",
    "YCCAL-7100_2015",
    "YCCAL-7300_2015",
    "YCCAL-7400_2015",
    "YCCA-1100A~000001_2017",
    "YCCA-1100A~000002_2017",
    "YCCA-1100A~000003_2017",
    "YCCA-1100A~000004_2017",
    "YCCA-1100A~000005_2017",
    "YCCA-1100A~000007_2017",
    "YCCA-1100A~000008_2017",
    "YCCA-1100A~000009_2017",
    "YCCA-1100A~000001_2019",
    "YCCA-1100A~000002_2019",
    "YCCA-1100A~000003_2019",
    "YCCA-1100A~000004_2019",
    "YCCA-1100A~000005_2019",
    "YCCA-1100A~000007_2019",
    "YCCA-1100A~000008_2019",
    "YCCA-1100A~000009_2019")
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

