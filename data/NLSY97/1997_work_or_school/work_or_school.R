
# Set working directory
# setwd()


work_or_school <- read.table('work_or_school.dat', sep=' ')
names(work_or_school) <- c('R0000100',
  'R0536300',
  'R0536401',
  'R0536402',
  'R1235800',
  'R1482600',
  'R6737600',
  'S1048400',
  'S3127600',
  'S4795900',
  'S6457500',
  'S6460800',
  'S6489000',
  'S6489100',
  'S6489200',
  'S8492600',
  'T0885900',
  'T2954800',
  'T2958100',
  'T2988600',
  'T2988700',
  'T2988800',
  'T4402100',
  'T6051600',
  'T7503200',
  'T7507300',
  'T7534200',
  'T7534300',
  'T7534400',
  'T8972000',
  'U0911900',
  'U0915900',
  'U0944400',
  'U0944500',
  'U0944600',
  'U2856000',
  'U4281400')


# Handle missing values

  work_or_school[work_or_school == -1] = NA  # Refused 
  work_or_school[work_or_school == -2] = NA  # Dont know 
  work_or_school[work_or_school == -3] = NA  # Invalid missing 
  work_or_school[work_or_school == -4] = NA  # Valid missing 
  work_or_school[work_or_school == -5] = NA  # Non-interview 


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
  data$R6689100[1.0 <= data$R6689100 & data$R6689100 <= 4.0] <- 1.0
  data$R6689100[5.0 <= data$R6689100 & data$R6689100 <= 8.0] <- 5.0
  data$R6689100[9.0 <= data$R6689100 & data$R6689100 <= 14.0] <- 9.0
  data$R6689100[15.0 <= data$R6689100 & data$R6689100 <= 19.0] <- 15.0
  data$R6689100[20.0 <= data$R6689100 & data$R6689100 <= 24.0] <- 20.0
  data$R6689100[25.0 <= data$R6689100 & data$R6689100 <= 29.0] <- 25.0
  data$R6689100[30.0 <= data$R6689100 & data$R6689100 <= 34.0] <- 30.0
  data$R6689100[35.0 <= data$R6689100 & data$R6689100 <= 39.0] <- 35.0
  data$R6689100[40.0 <= data$R6689100 & data$R6689100 <= 44.0] <- 40.0
  data$R6689100[45.0 <= data$R6689100 & data$R6689100 <= 49.0] <- 45.0
  data$R6689100[50.0 <= data$R6689100 & data$R6689100 <= 9.9999999E7] <- 50.0
  data$R6689100 <- factor(data$R6689100, 
    levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0), 
    labels=c("0",
      "1 TO 4",
      "5 TO 8",
      "9 TO 14",
      "15 TO 19",
      "20 TO 24",
      "25 TO 29",
      "30 TO 34",
      "35 TO 39",
      "40 TO 44",
      "45 TO 49",
      "50 TO 99999999: 50+"))
  data$R6737600 <- factor(data$R6737600, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$S1048400[1.0 <= data$S1048400 & data$S1048400 <= 4.0] <- 1.0
  data$S1048400[5.0 <= data$S1048400 & data$S1048400 <= 8.0] <- 5.0
  data$S1048400[9.0 <= data$S1048400 & data$S1048400 <= 14.0] <- 9.0
  data$S1048400[15.0 <= data$S1048400 & data$S1048400 <= 19.0] <- 15.0
  data$S1048400[20.0 <= data$S1048400 & data$S1048400 <= 24.0] <- 20.0
  data$S1048400[25.0 <= data$S1048400 & data$S1048400 <= 29.0] <- 25.0
  data$S1048400[30.0 <= data$S1048400 & data$S1048400 <= 34.0] <- 30.0
  data$S1048400[35.0 <= data$S1048400 & data$S1048400 <= 39.0] <- 35.0
  data$S1048400[40.0 <= data$S1048400 & data$S1048400 <= 44.0] <- 40.0
  data$S1048400[45.0 <= data$S1048400 & data$S1048400 <= 49.0] <- 45.0
  data$S1048400[50.0 <= data$S1048400 & data$S1048400 <= 9.9999999E7] <- 50.0
  data$S1048400 <- factor(data$S1048400, 
    levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0), 
    labels=c("0",
      "1 TO 4",
      "5 TO 8",
      "9 TO 14",
      "15 TO 19",
      "20 TO 24",
      "25 TO 29",
      "30 TO 34",
      "35 TO 39",
      "40 TO 44",
      "45 TO 49",
      "50 TO 99999999: 50+"))
  data$S3127600[1.0 <= data$S3127600 & data$S3127600 <= 4.0] <- 1.0
  data$S3127600[5.0 <= data$S3127600 & data$S3127600 <= 8.0] <- 5.0
  data$S3127600[9.0 <= data$S3127600 & data$S3127600 <= 14.0] <- 9.0
  data$S3127600[15.0 <= data$S3127600 & data$S3127600 <= 19.0] <- 15.0
  data$S3127600[20.0 <= data$S3127600 & data$S3127600 <= 24.0] <- 20.0
  data$S3127600[25.0 <= data$S3127600 & data$S3127600 <= 29.0] <- 25.0
  data$S3127600[30.0 <= data$S3127600 & data$S3127600 <= 34.0] <- 30.0
  data$S3127600[35.0 <= data$S3127600 & data$S3127600 <= 39.0] <- 35.0
  data$S3127600[40.0 <= data$S3127600 & data$S3127600 <= 44.0] <- 40.0
  data$S3127600[45.0 <= data$S3127600 & data$S3127600 <= 49.0] <- 45.0
  data$S3127600[50.0 <= data$S3127600 & data$S3127600 <= 9.9999999E7] <- 50.0
  data$S3127600 <- factor(data$S3127600, 
    levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0), 
    labels=c("0",
      "1 TO 4",
      "5 TO 8",
      "9 TO 14",
      "15 TO 19",
      "20 TO 24",
      "25 TO 29",
      "30 TO 34",
      "35 TO 39",
      "40 TO 44",
      "45 TO 49",
      "50 TO 99999999: 50+"))
  data$S4795900[1.0 <= data$S4795900 & data$S4795900 <= 4.0] <- 1.0
  data$S4795900[5.0 <= data$S4795900 & data$S4795900 <= 8.0] <- 5.0
  data$S4795900[9.0 <= data$S4795900 & data$S4795900 <= 14.0] <- 9.0
  data$S4795900[15.0 <= data$S4795900 & data$S4795900 <= 19.0] <- 15.0
  data$S4795900[20.0 <= data$S4795900 & data$S4795900 <= 24.0] <- 20.0
  data$S4795900[25.0 <= data$S4795900 & data$S4795900 <= 29.0] <- 25.0
  data$S4795900[30.0 <= data$S4795900 & data$S4795900 <= 34.0] <- 30.0
  data$S4795900[35.0 <= data$S4795900 & data$S4795900 <= 39.0] <- 35.0
  data$S4795900[40.0 <= data$S4795900 & data$S4795900 <= 44.0] <- 40.0
  data$S4795900[45.0 <= data$S4795900 & data$S4795900 <= 49.0] <- 45.0
  data$S4795900[50.0 <= data$S4795900 & data$S4795900 <= 9.9999999E7] <- 50.0
  data$S4795900 <- factor(data$S4795900, 
    levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0), 
    labels=c("0",
      "1 TO 4",
      "5 TO 8",
      "9 TO 14",
      "15 TO 19",
      "20 TO 24",
      "25 TO 29",
      "30 TO 34",
      "35 TO 39",
      "40 TO 44",
      "45 TO 49",
      "50 TO 99999999: 50+"))
  data$S6457500[1.0 <= data$S6457500 & data$S6457500 <= 4.0] <- 1.0
  data$S6457500[5.0 <= data$S6457500 & data$S6457500 <= 8.0] <- 5.0
  data$S6457500[9.0 <= data$S6457500 & data$S6457500 <= 14.0] <- 9.0
  data$S6457500[15.0 <= data$S6457500 & data$S6457500 <= 19.0] <- 15.0
  data$S6457500[20.0 <= data$S6457500 & data$S6457500 <= 24.0] <- 20.0
  data$S6457500[25.0 <= data$S6457500 & data$S6457500 <= 29.0] <- 25.0
  data$S6457500[30.0 <= data$S6457500 & data$S6457500 <= 34.0] <- 30.0
  data$S6457500[35.0 <= data$S6457500 & data$S6457500 <= 39.0] <- 35.0
  data$S6457500[40.0 <= data$S6457500 & data$S6457500 <= 44.0] <- 40.0
  data$S6457500[45.0 <= data$S6457500 & data$S6457500 <= 49.0] <- 45.0
  data$S6457500[50.0 <= data$S6457500 & data$S6457500 <= 9.9999999E7] <- 50.0
  data$S6457500 <- factor(data$S6457500, 
    levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0), 
    labels=c("0",
      "1 TO 4",
      "5 TO 8",
      "9 TO 14",
      "15 TO 19",
      "20 TO 24",
      "25 TO 29",
      "30 TO 34",
      "35 TO 39",
      "40 TO 44",
      "45 TO 49",
      "50 TO 99999999: 50+"))
  data$S6460800[1.0 <= data$S6460800 & data$S6460800 <= 4.0] <- 1.0
  data$S6460800[5.0 <= data$S6460800 & data$S6460800 <= 8.0] <- 5.0
  data$S6460800[9.0 <= data$S6460800 & data$S6460800 <= 14.0] <- 9.0
  data$S6460800[15.0 <= data$S6460800 & data$S6460800 <= 19.0] <- 15.0
  data$S6460800[20.0 <= data$S6460800 & data$S6460800 <= 24.0] <- 20.0
  data$S6460800[25.0 <= data$S6460800 & data$S6460800 <= 29.0] <- 25.0
  data$S6460800[30.0 <= data$S6460800 & data$S6460800 <= 34.0] <- 30.0
  data$S6460800[35.0 <= data$S6460800 & data$S6460800 <= 39.0] <- 35.0
  data$S6460800[40.0 <= data$S6460800 & data$S6460800 <= 44.0] <- 40.0
  data$S6460800[45.0 <= data$S6460800 & data$S6460800 <= 49.0] <- 45.0
  data$S6460800[50.0 <= data$S6460800 & data$S6460800 <= 9.9999999E7] <- 50.0
  data$S6460800 <- factor(data$S6460800, 
    levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0), 
    labels=c("0",
      "1 TO 4",
      "5 TO 8",
      "9 TO 14",
      "15 TO 19",
      "20 TO 24",
      "25 TO 29",
      "30 TO 34",
      "35 TO 39",
      "40 TO 44",
      "45 TO 49",
      "50 TO 99999999: 50+"))
  data$S6489000 <- factor(data$S6489000, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,999.0), 
    labels=c("Respondent",
      "Child's father",
      "Equal split between R and child's father",
      "Respondent's spouse, partner (who is NOT child's father)",
      "This relative",
      "Other (SPECIFY)",
      "UNCODABLE"))
  data$S6489100 <- factor(data$S6489100, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,999.0), 
    labels=c("Respondent",
      "Child's father",
      "Equal split between R and child's father",
      "Respondent's spouse, partner (who is NOT child's father)",
      "This relative",
      "Other (SPECIFY)",
      "UNCODABLE"))
  data$S6489200 <- factor(data$S6489200, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,999.0), 
    labels=c("Respondent",
      "Child's father",
      "Equal split between R and child's father",
      "Respondent's spouse, partner (who is NOT child's father)",
      "This relative",
      "Other (SPECIFY)",
      "UNCODABLE"))
  data$S8492600[1.0 <= data$S8492600 & data$S8492600 <= 4.0] <- 1.0
  data$S8492600[5.0 <= data$S8492600 & data$S8492600 <= 8.0] <- 5.0
  data$S8492600[9.0 <= data$S8492600 & data$S8492600 <= 14.0] <- 9.0
  data$S8492600[15.0 <= data$S8492600 & data$S8492600 <= 19.0] <- 15.0
  data$S8492600[20.0 <= data$S8492600 & data$S8492600 <= 24.0] <- 20.0
  data$S8492600[25.0 <= data$S8492600 & data$S8492600 <= 29.0] <- 25.0
  data$S8492600[30.0 <= data$S8492600 & data$S8492600 <= 34.0] <- 30.0
  data$S8492600[35.0 <= data$S8492600 & data$S8492600 <= 39.0] <- 35.0
  data$S8492600[40.0 <= data$S8492600 & data$S8492600 <= 44.0] <- 40.0
  data$S8492600[45.0 <= data$S8492600 & data$S8492600 <= 49.0] <- 45.0
  data$S8492600[50.0 <= data$S8492600 & data$S8492600 <= 9.9999999E7] <- 50.0
  data$S8492600 <- factor(data$S8492600, 
    levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0), 
    labels=c("0",
      "1 TO 4",
      "5 TO 8",
      "9 TO 14",
      "15 TO 19",
      "20 TO 24",
      "25 TO 29",
      "30 TO 34",
      "35 TO 39",
      "40 TO 44",
      "45 TO 49",
      "50 TO 99999999: 50+"))
  data$T0885900[1.0 <= data$T0885900 & data$T0885900 <= 4.0] <- 1.0
  data$T0885900[5.0 <= data$T0885900 & data$T0885900 <= 8.0] <- 5.0
  data$T0885900[9.0 <= data$T0885900 & data$T0885900 <= 14.0] <- 9.0
  data$T0885900[15.0 <= data$T0885900 & data$T0885900 <= 19.0] <- 15.0
  data$T0885900[20.0 <= data$T0885900 & data$T0885900 <= 24.0] <- 20.0
  data$T0885900[25.0 <= data$T0885900 & data$T0885900 <= 29.0] <- 25.0
  data$T0885900[30.0 <= data$T0885900 & data$T0885900 <= 34.0] <- 30.0
  data$T0885900[35.0 <= data$T0885900 & data$T0885900 <= 39.0] <- 35.0
  data$T0885900[40.0 <= data$T0885900 & data$T0885900 <= 44.0] <- 40.0
  data$T0885900[45.0 <= data$T0885900 & data$T0885900 <= 49.0] <- 45.0
  data$T0885900[50.0 <= data$T0885900 & data$T0885900 <= 9.9999999E7] <- 50.0
  data$T0885900 <- factor(data$T0885900, 
    levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0), 
    labels=c("0",
      "1 TO 4",
      "5 TO 8",
      "9 TO 14",
      "15 TO 19",
      "20 TO 24",
      "25 TO 29",
      "30 TO 34",
      "35 TO 39",
      "40 TO 44",
      "45 TO 49",
      "50 TO 99999999: 50+"))
  data$T2954800[1.0 <= data$T2954800 & data$T2954800 <= 4.0] <- 1.0
  data$T2954800[5.0 <= data$T2954800 & data$T2954800 <= 8.0] <- 5.0
  data$T2954800[9.0 <= data$T2954800 & data$T2954800 <= 14.0] <- 9.0
  data$T2954800[15.0 <= data$T2954800 & data$T2954800 <= 19.0] <- 15.0
  data$T2954800[20.0 <= data$T2954800 & data$T2954800 <= 24.0] <- 20.0
  data$T2954800[25.0 <= data$T2954800 & data$T2954800 <= 29.0] <- 25.0
  data$T2954800[30.0 <= data$T2954800 & data$T2954800 <= 34.0] <- 30.0
  data$T2954800[35.0 <= data$T2954800 & data$T2954800 <= 39.0] <- 35.0
  data$T2954800[40.0 <= data$T2954800 & data$T2954800 <= 44.0] <- 40.0
  data$T2954800[45.0 <= data$T2954800 & data$T2954800 <= 49.0] <- 45.0
  data$T2954800[50.0 <= data$T2954800 & data$T2954800 <= 9.9999999E7] <- 50.0
  data$T2954800 <- factor(data$T2954800, 
    levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0), 
    labels=c("0",
      "1 TO 4",
      "5 TO 8",
      "9 TO 14",
      "15 TO 19",
      "20 TO 24",
      "25 TO 29",
      "30 TO 34",
      "35 TO 39",
      "40 TO 44",
      "45 TO 49",
      "50 TO 99999999: 50+"))
  data$T2958100[1.0 <= data$T2958100 & data$T2958100 <= 4.0] <- 1.0
  data$T2958100[5.0 <= data$T2958100 & data$T2958100 <= 8.0] <- 5.0
  data$T2958100[9.0 <= data$T2958100 & data$T2958100 <= 14.0] <- 9.0
  data$T2958100[15.0 <= data$T2958100 & data$T2958100 <= 19.0] <- 15.0
  data$T2958100[20.0 <= data$T2958100 & data$T2958100 <= 24.0] <- 20.0
  data$T2958100[25.0 <= data$T2958100 & data$T2958100 <= 29.0] <- 25.0
  data$T2958100[30.0 <= data$T2958100 & data$T2958100 <= 34.0] <- 30.0
  data$T2958100[35.0 <= data$T2958100 & data$T2958100 <= 39.0] <- 35.0
  data$T2958100[40.0 <= data$T2958100 & data$T2958100 <= 44.0] <- 40.0
  data$T2958100[45.0 <= data$T2958100 & data$T2958100 <= 49.0] <- 45.0
  data$T2958100[50.0 <= data$T2958100 & data$T2958100 <= 9.9999999E7] <- 50.0
  data$T2958100 <- factor(data$T2958100, 
    levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0), 
    labels=c("0",
      "1 TO 4",
      "5 TO 8",
      "9 TO 14",
      "15 TO 19",
      "20 TO 24",
      "25 TO 29",
      "30 TO 34",
      "35 TO 39",
      "40 TO 44",
      "45 TO 49",
      "50 TO 99999999: 50+"))
  data$T2988600 <- factor(data$T2988600, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,999.0), 
    labels=c("Respondent",
      "Child's father",
      "Equal split between R and child's father",
      "Respondent's spouse, partner (who is NOT child's father)",
      "This relative",
      "Other (SPECIFY)",
      "UNCODABLE"))
  data$T2988700 <- factor(data$T2988700, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,999.0), 
    labels=c("Respondent",
      "Child's father",
      "Equal split between R and child's father",
      "Respondent's spouse, partner (who is NOT child's father)",
      "This relative",
      "Other (SPECIFY)",
      "UNCODABLE"))
  data$T2988800 <- factor(data$T2988800, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,999.0), 
    labels=c("Respondent",
      "Child's father",
      "Equal split between R and child's father",
      "Respondent's spouse, partner (who is NOT child's father)",
      "This relative",
      "Other (SPECIFY)",
      "UNCODABLE"))
  data$T4402100[1.0 <= data$T4402100 & data$T4402100 <= 4.0] <- 1.0
  data$T4402100[5.0 <= data$T4402100 & data$T4402100 <= 8.0] <- 5.0
  data$T4402100[9.0 <= data$T4402100 & data$T4402100 <= 14.0] <- 9.0
  data$T4402100[15.0 <= data$T4402100 & data$T4402100 <= 19.0] <- 15.0
  data$T4402100[20.0 <= data$T4402100 & data$T4402100 <= 24.0] <- 20.0
  data$T4402100[25.0 <= data$T4402100 & data$T4402100 <= 29.0] <- 25.0
  data$T4402100[30.0 <= data$T4402100 & data$T4402100 <= 34.0] <- 30.0
  data$T4402100[35.0 <= data$T4402100 & data$T4402100 <= 39.0] <- 35.0
  data$T4402100[40.0 <= data$T4402100 & data$T4402100 <= 44.0] <- 40.0
  data$T4402100[45.0 <= data$T4402100 & data$T4402100 <= 49.0] <- 45.0
  data$T4402100[50.0 <= data$T4402100 & data$T4402100 <= 9.9999999E7] <- 50.0
  data$T4402100 <- factor(data$T4402100, 
    levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0), 
    labels=c("0",
      "1 TO 4",
      "5 TO 8",
      "9 TO 14",
      "15 TO 19",
      "20 TO 24",
      "25 TO 29",
      "30 TO 34",
      "35 TO 39",
      "40 TO 44",
      "45 TO 49",
      "50 TO 99999999: 50+"))
  data$T6051600[1.0 <= data$T6051600 & data$T6051600 <= 4.0] <- 1.0
  data$T6051600[5.0 <= data$T6051600 & data$T6051600 <= 8.0] <- 5.0
  data$T6051600[9.0 <= data$T6051600 & data$T6051600 <= 14.0] <- 9.0
  data$T6051600[15.0 <= data$T6051600 & data$T6051600 <= 19.0] <- 15.0
  data$T6051600[20.0 <= data$T6051600 & data$T6051600 <= 24.0] <- 20.0
  data$T6051600[25.0 <= data$T6051600 & data$T6051600 <= 29.0] <- 25.0
  data$T6051600[30.0 <= data$T6051600 & data$T6051600 <= 34.0] <- 30.0
  data$T6051600[35.0 <= data$T6051600 & data$T6051600 <= 39.0] <- 35.0
  data$T6051600[40.0 <= data$T6051600 & data$T6051600 <= 44.0] <- 40.0
  data$T6051600[45.0 <= data$T6051600 & data$T6051600 <= 49.0] <- 45.0
  data$T6051600[50.0 <= data$T6051600 & data$T6051600 <= 9.9999999E7] <- 50.0
  data$T6051600 <- factor(data$T6051600, 
    levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0), 
    labels=c("0",
      "1 TO 4",
      "5 TO 8",
      "9 TO 14",
      "15 TO 19",
      "20 TO 24",
      "25 TO 29",
      "30 TO 34",
      "35 TO 39",
      "40 TO 44",
      "45 TO 49",
      "50 TO 99999999: 50+"))
  data$T7503200[1.0 <= data$T7503200 & data$T7503200 <= 4.0] <- 1.0
  data$T7503200[5.0 <= data$T7503200 & data$T7503200 <= 8.0] <- 5.0
  data$T7503200[9.0 <= data$T7503200 & data$T7503200 <= 14.0] <- 9.0
  data$T7503200[15.0 <= data$T7503200 & data$T7503200 <= 19.0] <- 15.0
  data$T7503200[20.0 <= data$T7503200 & data$T7503200 <= 24.0] <- 20.0
  data$T7503200[25.0 <= data$T7503200 & data$T7503200 <= 29.0] <- 25.0
  data$T7503200[30.0 <= data$T7503200 & data$T7503200 <= 34.0] <- 30.0
  data$T7503200[35.0 <= data$T7503200 & data$T7503200 <= 39.0] <- 35.0
  data$T7503200[40.0 <= data$T7503200 & data$T7503200 <= 44.0] <- 40.0
  data$T7503200[45.0 <= data$T7503200 & data$T7503200 <= 49.0] <- 45.0
  data$T7503200[50.0 <= data$T7503200 & data$T7503200 <= 9.9999999E7] <- 50.0
  data$T7503200 <- factor(data$T7503200, 
    levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0), 
    labels=c("0",
      "1 TO 4",
      "5 TO 8",
      "9 TO 14",
      "15 TO 19",
      "20 TO 24",
      "25 TO 29",
      "30 TO 34",
      "35 TO 39",
      "40 TO 44",
      "45 TO 49",
      "50 TO 99999999: 50+"))
  data$T7507300[1.0 <= data$T7507300 & data$T7507300 <= 4.0] <- 1.0
  data$T7507300[5.0 <= data$T7507300 & data$T7507300 <= 8.0] <- 5.0
  data$T7507300[9.0 <= data$T7507300 & data$T7507300 <= 14.0] <- 9.0
  data$T7507300[15.0 <= data$T7507300 & data$T7507300 <= 19.0] <- 15.0
  data$T7507300[20.0 <= data$T7507300 & data$T7507300 <= 24.0] <- 20.0
  data$T7507300[25.0 <= data$T7507300 & data$T7507300 <= 29.0] <- 25.0
  data$T7507300[30.0 <= data$T7507300 & data$T7507300 <= 34.0] <- 30.0
  data$T7507300[35.0 <= data$T7507300 & data$T7507300 <= 39.0] <- 35.0
  data$T7507300[40.0 <= data$T7507300 & data$T7507300 <= 44.0] <- 40.0
  data$T7507300[45.0 <= data$T7507300 & data$T7507300 <= 49.0] <- 45.0
  data$T7507300[50.0 <= data$T7507300 & data$T7507300 <= 9.9999999E7] <- 50.0
  data$T7507300 <- factor(data$T7507300, 
    levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0), 
    labels=c("0",
      "1 TO 4",
      "5 TO 8",
      "9 TO 14",
      "15 TO 19",
      "20 TO 24",
      "25 TO 29",
      "30 TO 34",
      "35 TO 39",
      "40 TO 44",
      "45 TO 49",
      "50 TO 99999999: 50+"))
  data$T7534200 <- factor(data$T7534200, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,999.0), 
    labels=c("Respondent",
      "Child's father",
      "Equal split between R and child's father",
      "Respondent's spouse, partner (who is NOT child's father)",
      "This relative",
      "Other (SPECIFY)",
      "UNCODABLE"))
  data$T7534300 <- factor(data$T7534300, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,999.0), 
    labels=c("Respondent",
      "Child's father",
      "Equal split between R and child's father",
      "Respondent's spouse, partner (who is NOT child's father)",
      "This relative",
      "Other (SPECIFY)",
      "UNCODABLE"))
  data$T7534400 <- factor(data$T7534400, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,999.0), 
    labels=c("Respondent",
      "Child's father",
      "Equal split between R and child's father",
      "Respondent's spouse, partner (who is NOT child's father)",
      "This relative",
      "Other (SPECIFY)",
      "UNCODABLE"))
  data$T8972000[1.0 <= data$T8972000 & data$T8972000 <= 4.0] <- 1.0
  data$T8972000[5.0 <= data$T8972000 & data$T8972000 <= 8.0] <- 5.0
  data$T8972000[9.0 <= data$T8972000 & data$T8972000 <= 14.0] <- 9.0
  data$T8972000[15.0 <= data$T8972000 & data$T8972000 <= 19.0] <- 15.0
  data$T8972000[20.0 <= data$T8972000 & data$T8972000 <= 24.0] <- 20.0
  data$T8972000[25.0 <= data$T8972000 & data$T8972000 <= 29.0] <- 25.0
  data$T8972000[30.0 <= data$T8972000 & data$T8972000 <= 34.0] <- 30.0
  data$T8972000[35.0 <= data$T8972000 & data$T8972000 <= 39.0] <- 35.0
  data$T8972000[40.0 <= data$T8972000 & data$T8972000 <= 44.0] <- 40.0
  data$T8972000[45.0 <= data$T8972000 & data$T8972000 <= 49.0] <- 45.0
  data$T8972000[50.0 <= data$T8972000 & data$T8972000 <= 9.9999999E7] <- 50.0
  data$T8972000 <- factor(data$T8972000, 
    levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0), 
    labels=c("0",
      "1 TO 4",
      "5 TO 8",
      "9 TO 14",
      "15 TO 19",
      "20 TO 24",
      "25 TO 29",
      "30 TO 34",
      "35 TO 39",
      "40 TO 44",
      "45 TO 49",
      "50 TO 99999999: 50+"))
  data$U0911900[1.0 <= data$U0911900 & data$U0911900 <= 4.0] <- 1.0
  data$U0911900[5.0 <= data$U0911900 & data$U0911900 <= 8.0] <- 5.0
  data$U0911900[9.0 <= data$U0911900 & data$U0911900 <= 14.0] <- 9.0
  data$U0911900[15.0 <= data$U0911900 & data$U0911900 <= 19.0] <- 15.0
  data$U0911900[20.0 <= data$U0911900 & data$U0911900 <= 24.0] <- 20.0
  data$U0911900[25.0 <= data$U0911900 & data$U0911900 <= 29.0] <- 25.0
  data$U0911900[30.0 <= data$U0911900 & data$U0911900 <= 34.0] <- 30.0
  data$U0911900[35.0 <= data$U0911900 & data$U0911900 <= 39.0] <- 35.0
  data$U0911900[40.0 <= data$U0911900 & data$U0911900 <= 44.0] <- 40.0
  data$U0911900[45.0 <= data$U0911900 & data$U0911900 <= 49.0] <- 45.0
  data$U0911900[50.0 <= data$U0911900 & data$U0911900 <= 9.9999999E7] <- 50.0
  data$U0911900 <- factor(data$U0911900, 
    levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0), 
    labels=c("0",
      "1 TO 4",
      "5 TO 8",
      "9 TO 14",
      "15 TO 19",
      "20 TO 24",
      "25 TO 29",
      "30 TO 34",
      "35 TO 39",
      "40 TO 44",
      "45 TO 49",
      "50 TO 99999999: 50+"))
  data$U0915900[1.0 <= data$U0915900 & data$U0915900 <= 4.0] <- 1.0
  data$U0915900[5.0 <= data$U0915900 & data$U0915900 <= 8.0] <- 5.0
  data$U0915900[9.0 <= data$U0915900 & data$U0915900 <= 14.0] <- 9.0
  data$U0915900[15.0 <= data$U0915900 & data$U0915900 <= 19.0] <- 15.0
  data$U0915900[20.0 <= data$U0915900 & data$U0915900 <= 24.0] <- 20.0
  data$U0915900[25.0 <= data$U0915900 & data$U0915900 <= 29.0] <- 25.0
  data$U0915900[30.0 <= data$U0915900 & data$U0915900 <= 34.0] <- 30.0
  data$U0915900[35.0 <= data$U0915900 & data$U0915900 <= 39.0] <- 35.0
  data$U0915900[40.0 <= data$U0915900 & data$U0915900 <= 44.0] <- 40.0
  data$U0915900[45.0 <= data$U0915900 & data$U0915900 <= 49.0] <- 45.0
  data$U0915900[50.0 <= data$U0915900 & data$U0915900 <= 9.9999999E7] <- 50.0
  data$U0915900 <- factor(data$U0915900, 
    levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0), 
    labels=c("0",
      "1 TO 4",
      "5 TO 8",
      "9 TO 14",
      "15 TO 19",
      "20 TO 24",
      "25 TO 29",
      "30 TO 34",
      "35 TO 39",
      "40 TO 44",
      "45 TO 49",
      "50 TO 99999999: 50+"))
  data$U0944400 <- factor(data$U0944400, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,999.0), 
    labels=c("Respondent",
      "Child's father",
      "Equal split between R and child's father",
      "Respondent's spouse, partner (who is NOT child's father)",
      "This relative",
      "Other (SPECIFY)",
      "UNCODABLE"))
  data$U0944500 <- factor(data$U0944500, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,999.0), 
    labels=c("Respondent",
      "Child's father",
      "Equal split between R and child's father",
      "Respondent's spouse, partner (who is NOT child's father)",
      "This relative",
      "Other (SPECIFY)",
      "UNCODABLE"))
  data$U0944600 <- factor(data$U0944600, 
    levels=c(1.0,2.0,3.0,4.0,5.0,6.0,999.0), 
    labels=c("Respondent",
      "Child's father",
      "Equal split between R and child's father",
      "Respondent's spouse, partner (who is NOT child's father)",
      "This relative",
      "Other (SPECIFY)",
      "UNCODABLE"))
  data$U2856000[1.0 <= data$U2856000 & data$U2856000 <= 4.0] <- 1.0
  data$U2856000[5.0 <= data$U2856000 & data$U2856000 <= 8.0] <- 5.0
  data$U2856000[9.0 <= data$U2856000 & data$U2856000 <= 14.0] <- 9.0
  data$U2856000[15.0 <= data$U2856000 & data$U2856000 <= 19.0] <- 15.0
  data$U2856000[20.0 <= data$U2856000 & data$U2856000 <= 24.0] <- 20.0
  data$U2856000[25.0 <= data$U2856000 & data$U2856000 <= 29.0] <- 25.0
  data$U2856000[30.0 <= data$U2856000 & data$U2856000 <= 34.0] <- 30.0
  data$U2856000[35.0 <= data$U2856000 & data$U2856000 <= 39.0] <- 35.0
  data$U2856000[40.0 <= data$U2856000 & data$U2856000 <= 44.0] <- 40.0
  data$U2856000[45.0 <= data$U2856000 & data$U2856000 <= 49.0] <- 45.0
  data$U2856000[50.0 <= data$U2856000 & data$U2856000 <= 9.9999999E7] <- 50.0
  data$U2856000 <- factor(data$U2856000, 
    levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0), 
    labels=c("0",
      "1 TO 4",
      "5 TO 8",
      "9 TO 14",
      "15 TO 19",
      "20 TO 24",
      "25 TO 29",
      "30 TO 34",
      "35 TO 39",
      "40 TO 44",
      "45 TO 49",
      "50 TO 99999999: 50+"))
  data$U4281400[1.0 <= data$U4281400 & data$U4281400 <= 4.0] <- 1.0
  data$U4281400[5.0 <= data$U4281400 & data$U4281400 <= 8.0] <- 5.0
  data$U4281400[9.0 <= data$U4281400 & data$U4281400 <= 14.0] <- 9.0
  data$U4281400[15.0 <= data$U4281400 & data$U4281400 <= 19.0] <- 15.0
  data$U4281400[20.0 <= data$U4281400 & data$U4281400 <= 24.0] <- 20.0
  data$U4281400[25.0 <= data$U4281400 & data$U4281400 <= 29.0] <- 25.0
  data$U4281400[30.0 <= data$U4281400 & data$U4281400 <= 34.0] <- 30.0
  data$U4281400[35.0 <= data$U4281400 & data$U4281400 <= 39.0] <- 35.0
  data$U4281400[40.0 <= data$U4281400 & data$U4281400 <= 44.0] <- 40.0
  data$U4281400[45.0 <= data$U4281400 & data$U4281400 <= 49.0] <- 45.0
  data$U4281400[50.0 <= data$U4281400 & data$U4281400 <= 9.9999999E7] <- 50.0
  data$U4281400 <- factor(data$U4281400, 
    levels=c(0.0,1.0,5.0,9.0,15.0,20.0,25.0,30.0,35.0,40.0,45.0,50.0), 
    labels=c("0",
      "1 TO 4",
      "5 TO 8",
      "9 TO 14",
      "15 TO 19",
      "20 TO 24",
      "25 TO 29",
      "30 TO 34",
      "35 TO 39",
      "40 TO 44",
      "45 TO 49",
      "50 TO 99999999: 50+"))
  return(data)
}

varlabels <- c("PUBID - YTH ID CODE 1997",
  "KEY!SEX (SYMBOL) 1997",
  "KEY!BDATE M/Y (SYMBOL) 1997",
  "KEY!BDATE M/Y (SYMBOL) 1997",
  "CV_SAMPLE_TYPE 1997",
  "KEY!RACE_ETHNICITY (SYMBOL) 1997",
  "AVG HRS WORK PER WK (CCA) 2001",
  "ANY RELATIVES W/IN 15 MINS 2001",
  "AVG HRS WORK PER WK (CCA) 2002",
  "AVG HRS WORK PER WK (CCA) 2003",
  "AVG HRS WORK PER WK (CCA) 2004",
  "AVG HRS WORK PER WK (CCA) 2005",
  "AVG HRS WORK PER WK (CCA) 2005",
  "WHO TAKE CHILD TO/FROM FAM DC L1,6 2005",
  "WHO TAKE CHILD TO/FROM FAM DC L2,6 2005",
  "WHO TAKE CHILD TO/FROM FAM DC L3,6 2005",
  "AVG HRS WORK PER WK (CCA) 2006",
  "AVG HRS WORK PER WK (CCA) 2007",
  "AVG HRS WORK PER WK (CCA) 2008",
  "AVG HRS WORK PER WK (CCA) 2008",
  "WHO TAKE CHILD TO/FROM FAM DC L1,6 2008",
  "WHO TAKE CHILD TO/FROM FAM DC L2,6 2008",
  "WHO TAKE CHILD TO/FROM FAM DC L3,6 2008",
  "AVG HRS WORK PER WK (CCA) 2009",
  "AVG HRS WORK PER WK (CCA) 2010",
  "AVG HRS WORK PER WK (CCA) 2011",
  "AVG HRS WORK PER WK (CCA) 2011",
  "WHO TAKE CHILD TO/FROM FAM DC L1,5 2011",
  "WHO TAKE CHILD TO/FROM FAM DC L2,5 2011",
  "WHO TAKE CHILD TO/FROM FAM DC L3,5 2011",
  "AVG HRS WORK PER WK (CCA) 2013",
  "AVG HRS WORK PER WK (CCA) 2015",
  "AVG HRS WORK PER WK (CCA) 2015",
  "WHO TAKE CHILD TO/FROM FAM DC L1,5 2015",
  "WHO TAKE CHILD TO/FROM FAM DC L2,5 2015",
  "WHO TAKE CHILD TO/FROM FAM DC L3,5 2015",
  "AVG HRS WORK PER WK (CCA) 2017",
  "AVG HRS WORK PER WK (CCA) 2019"
)


# Use qnames rather than rnums

qnames = function(data) {
  names(data) <- c("PUBID_1997",
    "KEY_SEX_1997",
    "KEY_BDATE_M_1997",
    "KEY_BDATE_Y_1997",
    "CV_SAMPLE_TYPE_1997",
    "KEY_RACE_ETHNICITY_1997",
    "YCCA-450_2001",
    "YCCA-6800_2001",
    "YCCA-450_2002",
    "YCCA-450_2003",
    "YCCA-450_2004",
    "YCCA-450_2005",
    "YCCAL-450_2005",
    "YCCAL-4500.01.06_2005",
    "YCCAL-4500.02.06_2005",
    "YCCAL-4500.03.06_2005",
    "YCCA-450_2006",
    "YCCA-450_2007",
    "YCCA-450_2008",
    "YCCAL-450_2008",
    "YCCAL-4500.01.06_2008",
    "YCCAL-4500.02.06_2008",
    "YCCAL-4500.03.06_2008",
    "YCCA-450_2009",
    "YCCA-450_2010",
    "YCCA-450_2011",
    "YCCAL-450_2011",
    "YCCAL-4500.01.05_2011",
    "YCCAL-4500.02.05_2011",
    "YCCAL-4500.03.05_2011",
    "YCCA-450_2013",
    "YCCA-450_2015",
    "YCCAL-450_2015",
    "YCCAL-4500.01.05_2015",
    "YCCAL-4500.02.05_2015",
    "YCCAL-4500.03.05_2015",
    "YCCA-450_2017",
    "YCCA-450_2019")
  return(data)
}


#********************************************************************************************************

# Remove the '#' before the following line to create a data file called "categories" with value labels. 
#categories <- vallabels(work_or_school)

# Remove the '#' before the following lines to rename variables using Qnames instead of Reference Numbers
#work_or_school <- qnames(work_or_school)
#categories <- qnames(categories)

# Produce summaries for the raw (uncategorized) data file
summary(work_or_school)

# Remove the '#' before the following lines to produce summaries for the "categories" data file.
#categories <- vallabels(work_or_school)
#summary(categories)

#************************************************************************************************************

