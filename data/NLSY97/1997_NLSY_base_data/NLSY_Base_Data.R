
# Set working directory
# setwd()


new_data <- read.table('NLSY_Base_Data.dat', sep=' ')
names(new_data) <- c('R0000100',
  'R0489900',
  'R0490200',
  'R0536300',
  'R0536401',
  'R0536402',
  'R0551500',
  'R0552100',
  'R0552101',
  'R0552102',
  'R0552103',
  'R0552104',
  'R0552105',
  'R0552106',
  'R0552107',
  'R0552108',
  'R0552109',
  'R0552110',
  'R0552111',
  'R0552112',
  'R0552113',
  'R0552114',
  'R0552115',
  'R0552116',
  'R0552117',
  'R0552118',
  'R0552119',
  'R0552120',
  'R0552121',
  'R0552122',
  'R0552123',
  'R0552124',
  'R0552125',
  'R0552126',
  'R0552127',
  'R0552128',
  'R0552129',
  'R0552130',
  'R0552131',
  'R0552132',
  'R0552133',
  'R0552134',
  'R0552135',
  'R0552136',
  'R0552137',
  'R0552138',
  'R0552139',
  'R0552140',
  'R0552141',
  'R0552142',
  'R0552143',
  'R0552144',
  'R0552145',
  'R0552146',
  'R0552147',
  'R0552148',
  'R0552149',
  'R0552150',
  'R0552151',
  'R0552152',
  'R0552153',
  'R0555000',
  'R0555600',
  'R0555601',
  'R0555602',
  'R0555603',
  'R0555604',
  'R0555605',
  'R0555606',
  'R0555607',
  'R0555608',
  'R0555609',
  'R0555610',
  'R0555611',
  'R0555612',
  'R0555613',
  'R0555614',
  'R0555615',
  'R0555616',
  'R0555617',
  'R0555618',
  'R0555619',
  'R0555620',
  'R0555621',
  'R0555622',
  'R0555623',
  'R0555624',
  'R0555625',
  'R0555626',
  'R0555627',
  'R0555628',
  'R0555629',
  'R0555630',
  'R0555631',
  'R0555632',
  'R0555633',
  'R0555634',
  'R0555635',
  'R0555636',
  'R0555637',
  'R0555638',
  'R0555639',
  'R0555640',
  'R0555641',
  'R0555642',
  'R0555643',
  'R0555644',
  'R0555645',
  'R0555646',
  'R0555647',
  'R0555648',
  'R0555649',
  'R0555650',
  'R0555651',
  'R0555652',
  'R0555653',
  'R1201300',
  'R1235800',
  'R1482600',
  'R2340900',
  'R2341200',
  'R3649900',
  'R3650200',
  'R5098600',
  'R5098900',
  'R5821400',
  'R5821700',
  'R6827200',
  'R6827500',
  'S0191300',
  'S1055500',
  'S1055800',
  'S2175900',
  'S2176200',
  'S2176400',
  'S3134400',
  'S3134600',
  'S3952000',
  'S4799400',
  'S4799600',
  'S6500800',
  'S6501000',
  'S7642200',
  'S8496300',
  'S8496500',
  'T0135800',
  'T0889600',
  'T0889800',
  'T2110700',
  'T3002800',
  'T3003000',
  'T3721700',
  'T4405800',
  'T4406000',
  'T5313500',
  'T6055300',
  'T6055500',
  'T6758500',
  'T7545400',
  'T7545600',
  'T8232600',
  'T8976500',
  'T8976700',
  'U0128300',
  'U0956700',
  'U0956900',
  'U1981300',
  'U2857000',
  'U2857200',
  'U4282100',
  'U4282300',
  'Z0501800',
  'Z0502000')


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
  data$R0489900 <- factor(data$R0489900, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$R0490200[1.0 <= data$R0490200 & data$R0490200 <= 499.0] <- 1.0
  data$R0490200[500.0 <= data$R0490200 & data$R0490200 <= 999.0] <- 500.0
  data$R0490200[1000.0 <= data$R0490200 & data$R0490200 <= 1499.0] <- 1000.0
  data$R0490200[1500.0 <= data$R0490200 & data$R0490200 <= 1999.0] <- 1500.0
  data$R0490200[2000.0 <= data$R0490200 & data$R0490200 <= 2499.0] <- 2000.0
  data$R0490200[2500.0 <= data$R0490200 & data$R0490200 <= 2999.0] <- 2500.0
  data$R0490200[3000.0 <= data$R0490200 & data$R0490200 <= 3499.0] <- 3000.0
  data$R0490200[3500.0 <= data$R0490200 & data$R0490200 <= 3999.0] <- 3500.0
  data$R0490200[4000.0 <= data$R0490200 & data$R0490200 <= 4499.0] <- 4000.0
  data$R0490200[4500.0 <= data$R0490200 & data$R0490200 <= 4999.0] <- 4500.0
  data$R0490200[5000.0 <= data$R0490200 & data$R0490200 <= 6999.0] <- 5000.0
  data$R0490200[7000.0 <= data$R0490200 & data$R0490200 <= 9999.0] <- 7000.0
  data$R0490200[10000.0 <= data$R0490200 & data$R0490200 <= 19999.0] <- 10000.0
  data$R0490200[20000.0 <= data$R0490200 & data$R0490200 <= 49999.0] <- 20000.0
  data$R0490200[50000.0 <= data$R0490200 & data$R0490200 <= 999999.0] <- 50000.0
  data$R0490200 <- factor(data$R0490200, 
    levels=c(0.0,1.0,500.0,1000.0,1500.0,2000.0,2500.0,3000.0,3500.0,4000.0,4500.0,5000.0,7000.0,10000.0,20000.0,50000.0), 
    labels=c("0",
      "1 TO 499",
      "500 TO 999",
      "1000 TO 1499",
      "1500 TO 1999",
      "2000 TO 2499",
      "2500 TO 2999",
      "3000 TO 3499",
      "3500 TO 3999",
      "4000 TO 4499",
      "4500 TO 4999",
      "5000 TO 6999",
      "7000 TO 9999",
      "10000 TO 19999",
      "20000 TO 49999",
      "50000 TO 999999: 50000+"))
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
  data$R0551500 <- factor(data$R0551500, 
    levels=c(0.0,1.0), 
    labels=c("No",
      "Yes"))
  data$R0552100 <- factor(data$R0552100, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "1.  Arab"))
  data$R0552101[1.0 <= data$R0552101 & data$R0552101 <= 2.0] <- 1.0
  data$R0552101 <- factor(data$R0552101, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "2.  Black, African-American, or Negro"))
  data$R0552102[1.0 <= data$R0552102 & data$R0552102 <= 3.0] <- 1.0
  data$R0552102 <- factor(data$R0552102, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "3.  Chinese"))
  data$R0552103[1.0 <= data$R0552103 & data$R0552103 <= 4.0] <- 1.0
  data$R0552103 <- factor(data$R0552103, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "4.  Czech or Slovak"))
  data$R0552104[1.0 <= data$R0552104 & data$R0552104 <= 5.0] <- 1.0
  data$R0552104 <- factor(data$R0552104, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "5.  Danish"))
  data$R0552105[1.0 <= data$R0552105 & data$R0552105 <= 6.0] <- 1.0
  data$R0552105 <- factor(data$R0552105, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "6.  Dutch"))
  data$R0552106[1.0 <= data$R0552106 & data$R0552106 <= 7.0] <- 1.0
  data$R0552106 <- factor(data$R0552106, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "7.  English"))
  data$R0552107[1.0 <= data$R0552107 & data$R0552107 <= 8.0] <- 1.0
  data$R0552107 <- factor(data$R0552107, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "8.  Filipino or Philipino"))
  data$R0552108[1.0 <= data$R0552108 & data$R0552108 <= 9.0] <- 1.0
  data$R0552108 <- factor(data$R0552108, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "9.  French"))
  data$R0552109[1.0 <= data$R0552109 & data$R0552109 <= 10.0] <- 1.0
  data$R0552109 <- factor(data$R0552109, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "10.  German"))
  data$R0552110[1.0 <= data$R0552110 & data$R0552110 <= 11.0] <- 1.0
  data$R0552110 <- factor(data$R0552110, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "11.  Greek"))
  data$R0552111[1.0 <= data$R0552111 & data$R0552111 <= 12.0] <- 1.0
  data$R0552111 <- factor(data$R0552111, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "12.  Haitian"))
  data$R0552112[1.0 <= data$R0552112 & data$R0552112 <= 13.0] <- 1.0
  data$R0552112 <- factor(data$R0552112, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "13.  Hawaiian or Pacific Islander"))
  data$R0552113[1.0 <= data$R0552113 & data$R0552113 <= 14.0] <- 1.0
  data$R0552113 <- factor(data$R0552113, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "14.  Hungarian"))
  data$R0552114[1.0 <= data$R0552114 & data$R0552114 <= 15.0] <- 1.0
  data$R0552114 <- factor(data$R0552114, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "15.  Indian-American or Native American"))
  data$R0552115[1.0 <= data$R0552115 & data$R0552115 <= 16.0] <- 1.0
  data$R0552115 <- factor(data$R0552115, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "16.  Indian-Asian"))
  data$R0552116[1.0 <= data$R0552116 & data$R0552116 <= 17.0] <- 1.0
  data$R0552116 <- factor(data$R0552116, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "17.  Irish"))
  data$R0552117[1.0 <= data$R0552117 & data$R0552117 <= 18.0] <- 1.0
  data$R0552117 <- factor(data$R0552117, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "18.  Italian"))
  data$R0552118[1.0 <= data$R0552118 & data$R0552118 <= 19.0] <- 1.0
  data$R0552118 <- factor(data$R0552118, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "19.  Japanese"))
  data$R0552119[1.0 <= data$R0552119 & data$R0552119 <= 20.0] <- 1.0
  data$R0552119 <- factor(data$R0552119, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "20.  Korean"))
  data$R0552120[1.0 <= data$R0552120 & data$R0552120 <= 21.0] <- 1.0
  data$R0552120 <- factor(data$R0552120, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "21.  LATINO OR SPANISH DESCENT  - Cuban or Cubano"))
  data$R0552121[1.0 <= data$R0552121 & data$R0552121 <= 22.0] <- 1.0
  data$R0552121 <- factor(data$R0552121, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "22.               - Chicano"))
  data$R0552122[1.0 <= data$R0552122 & data$R0552122 <= 23.0] <- 1.0
  data$R0552122 <- factor(data$R0552122, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "23.               - Mexican or Mexicano"))
  data$R0552123[1.0 <= data$R0552123 & data$R0552123 <= 24.0] <- 1.0
  data$R0552123 <- factor(data$R0552123, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "24.               - Mexican-American"))
  data$R0552124[1.0 <= data$R0552124 & data$R0552124 <= 25.0] <- 1.0
  data$R0552124 <- factor(data$R0552124, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "25.               - Puerto Rican, Puertorriqueno or Borincano"))
  data$R0552125[1.0 <= data$R0552125 & data$R0552125 <= 26.0] <- 1.0
  data$R0552125 <- factor(data$R0552125, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "26.               - Other Latino, Hispano, or Latin-American descent"))
  data$R0552126[1.0 <= data$R0552126 & data$R0552126 <= 27.0] <- 1.0
  data$R0552126 <- factor(data$R0552126, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "27.               - Other Spanish descent"))
  data$R0552127[1.0 <= data$R0552127 & data$R0552127 <= 28.0] <- 1.0
  data$R0552127 <- factor(data$R0552127, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "28.  Norwegian"))
  data$R0552128[1.0 <= data$R0552128 & data$R0552128 <= 29.0] <- 1.0
  data$R0552128 <- factor(data$R0552128, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "29.  Polish"))
  data$R0552129[1.0 <= data$R0552129 & data$R0552129 <= 30.0] <- 1.0
  data$R0552129 <- factor(data$R0552129, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "30.  Portuguese"))
  data$R0552130[1.0 <= data$R0552130 & data$R0552130 <= 31.0] <- 1.0
  data$R0552130 <- factor(data$R0552130, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "31.  Russian"))
  data$R0552131[1.0 <= data$R0552131 & data$R0552131 <= 32.0] <- 1.0
  data$R0552131 <- factor(data$R0552131, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "32.  Scottish"))
  data$R0552132[1.0 <= data$R0552132 & data$R0552132 <= 33.0] <- 1.0
  data$R0552132 <- factor(data$R0552132, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "33.  Swedish"))
  data$R0552133[1.0 <= data$R0552133 & data$R0552133 <= 34.0] <- 1.0
  data$R0552133 <- factor(data$R0552133, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "34.  Taiwanese"))
  data$R0552134[1.0 <= data$R0552134 & data$R0552134 <= 35.0] <- 1.0
  data$R0552134 <- factor(data$R0552134, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "35.  Vietnamese"))
  data$R0552135[1.0 <= data$R0552135 & data$R0552135 <= 36.0] <- 1.0
  data$R0552135 <- factor(data$R0552135, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "36.  Welsh"))
  data$R0552136[1.0 <= data$R0552136 & data$R0552136 <= 39.0] <- 1.0
  data$R0552136 <- factor(data$R0552136, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "37.  Armenian"))
  data$R0552137[1.0 <= data$R0552137 & data$R0552137 <= 40.0] <- 1.0
  data$R0552137 <- factor(data$R0552137, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "38.  Austrian"))
  data$R0552138[1.0 <= data$R0552138 & data$R0552138 <= 41.0] <- 1.0
  data$R0552138 <- factor(data$R0552138, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "39.  Canadian"))
  data$R0552139[1.0 <= data$R0552139 & data$R0552139 <= 42.0] <- 1.0
  data$R0552139 <- factor(data$R0552139, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "40.  Croatian"))
  data$R0552140[1.0 <= data$R0552140 & data$R0552140 <= 43.0] <- 1.0
  data$R0552140 <- factor(data$R0552140, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "41.  Finnish"))
  data$R0552141[1.0 <= data$R0552141 & data$R0552141 <= 44.0] <- 1.0
  data$R0552141 <- factor(data$R0552141, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "42.  French Canadian"))
  data$R0552142[1.0 <= data$R0552142 & data$R0552142 <= 45.0] <- 1.0
  data$R0552142 <- factor(data$R0552142, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "43.  Lithuanian"))
  data$R0552143[1.0 <= data$R0552143 & data$R0552143 <= 46.0] <- 1.0
  data$R0552143 <- factor(data$R0552143, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "44.  Romanian"))
  data$R0552144[1.0 <= data$R0552144 & data$R0552144 <= 47.0] <- 1.0
  data$R0552144 <- factor(data$R0552144, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "45.  Slovenian"))
  data$R0552145[1.0 <= data$R0552145 & data$R0552145 <= 48.0] <- 1.0
  data$R0552145 <- factor(data$R0552145, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "46.  Swiss"))
  data$R0552146[1.0 <= data$R0552146 & data$R0552146 <= 49.0] <- 1.0
  data$R0552146 <- factor(data$R0552146, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "47.  Ukranian"))
  data$R0552147[1.0 <= data$R0552147 & data$R0552147 <= 51.0] <- 1.0
  data$R0552147 <- factor(data$R0552147, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "48.  Other European"))
  data$R0552148[1.0 <= data$R0552148 & data$R0552148 <= 52.0] <- 1.0
  data$R0552148 <- factor(data$R0552148, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "49.  Other Latin, Central, South American"))
  data$R0552149[1.0 <= data$R0552149 & data$R0552149 <= 53.0] <- 1.0
  data$R0552149 <- factor(data$R0552149, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "50.  Other Asian, Pacific Island"))
  data$R0552150[1.0 <= data$R0552150 & data$R0552150 <= 54.0] <- 1.0
  data$R0552150 <- factor(data$R0552150, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "51.  Other African"))
  data$R0552151[1.0 <= data$R0552151 & data$R0552151 <= 38.0] <- 1.0
  data$R0552151 <- factor(data$R0552151, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "(IF VOLUNTEERED:) American"))
  data$R0552152[1.0 <= data$R0552152 & data$R0552152 <= 37.0] <- 1.0
  data$R0552152 <- factor(data$R0552152, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Other (SPECIFY)"))
  data$R0552153 <- factor(data$R0552153, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "None"))
  data$R0555000 <- factor(data$R0555000, 
    levels=c(0.0,1.0), 
    labels=c("No",
      "Yes"))
  data$R0555600 <- factor(data$R0555600, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "1.  Arab"))
  data$R0555601[1.0 <= data$R0555601 & data$R0555601 <= 2.0] <- 1.0
  data$R0555601 <- factor(data$R0555601, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "2.  Black, African-American, or Negro"))
  data$R0555602[1.0 <= data$R0555602 & data$R0555602 <= 3.0] <- 1.0
  data$R0555602 <- factor(data$R0555602, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "3.  Chinese"))
  data$R0555603[1.0 <= data$R0555603 & data$R0555603 <= 4.0] <- 1.0
  data$R0555603 <- factor(data$R0555603, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "4.  Czech or Slovak"))
  data$R0555604[1.0 <= data$R0555604 & data$R0555604 <= 5.0] <- 1.0
  data$R0555604 <- factor(data$R0555604, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "5.  Danish"))
  data$R0555605[1.0 <= data$R0555605 & data$R0555605 <= 6.0] <- 1.0
  data$R0555605 <- factor(data$R0555605, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "6.  Dutch"))
  data$R0555606[1.0 <= data$R0555606 & data$R0555606 <= 7.0] <- 1.0
  data$R0555606 <- factor(data$R0555606, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "7.  English"))
  data$R0555607[1.0 <= data$R0555607 & data$R0555607 <= 8.0] <- 1.0
  data$R0555607 <- factor(data$R0555607, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "8.  Filipino or Philipino"))
  data$R0555608[1.0 <= data$R0555608 & data$R0555608 <= 9.0] <- 1.0
  data$R0555608 <- factor(data$R0555608, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "9.  French"))
  data$R0555609[1.0 <= data$R0555609 & data$R0555609 <= 10.0] <- 1.0
  data$R0555609 <- factor(data$R0555609, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "10.  German"))
  data$R0555610[1.0 <= data$R0555610 & data$R0555610 <= 11.0] <- 1.0
  data$R0555610 <- factor(data$R0555610, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "11.  Greek"))
  data$R0555611[1.0 <= data$R0555611 & data$R0555611 <= 12.0] <- 1.0
  data$R0555611 <- factor(data$R0555611, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "12.  Haitian"))
  data$R0555612[1.0 <= data$R0555612 & data$R0555612 <= 13.0] <- 1.0
  data$R0555612 <- factor(data$R0555612, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "13.  Hawaiian or Pacific Islander"))
  data$R0555613[1.0 <= data$R0555613 & data$R0555613 <= 14.0] <- 1.0
  data$R0555613 <- factor(data$R0555613, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "14.  Hungarian"))
  data$R0555614[1.0 <= data$R0555614 & data$R0555614 <= 15.0] <- 1.0
  data$R0555614 <- factor(data$R0555614, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "15.  Indian-American or Native American"))
  data$R0555615[1.0 <= data$R0555615 & data$R0555615 <= 16.0] <- 1.0
  data$R0555615 <- factor(data$R0555615, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "16.  Indian-Asian"))
  data$R0555616[1.0 <= data$R0555616 & data$R0555616 <= 17.0] <- 1.0
  data$R0555616 <- factor(data$R0555616, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "17.  Irish"))
  data$R0555617[1.0 <= data$R0555617 & data$R0555617 <= 18.0] <- 1.0
  data$R0555617 <- factor(data$R0555617, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "18.  Italian"))
  data$R0555618[1.0 <= data$R0555618 & data$R0555618 <= 19.0] <- 1.0
  data$R0555618 <- factor(data$R0555618, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "19.  Japanese"))
  data$R0555619[1.0 <= data$R0555619 & data$R0555619 <= 20.0] <- 1.0
  data$R0555619 <- factor(data$R0555619, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "20.  Korean"))
  data$R0555620[1.0 <= data$R0555620 & data$R0555620 <= 21.0] <- 1.0
  data$R0555620 <- factor(data$R0555620, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "21.  LATINO OR SPANISH DESCENT  - Cuban or Cubano"))
  data$R0555621[1.0 <= data$R0555621 & data$R0555621 <= 22.0] <- 1.0
  data$R0555621 <- factor(data$R0555621, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "22.               - Chicano"))
  data$R0555622[1.0 <= data$R0555622 & data$R0555622 <= 23.0] <- 1.0
  data$R0555622 <- factor(data$R0555622, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "23.               - Mexican or Mexicano"))
  data$R0555623[1.0 <= data$R0555623 & data$R0555623 <= 24.0] <- 1.0
  data$R0555623 <- factor(data$R0555623, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "24.               - Mexican-American"))
  data$R0555624[1.0 <= data$R0555624 & data$R0555624 <= 25.0] <- 1.0
  data$R0555624 <- factor(data$R0555624, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "25.               - Puerto Rican, Puertorriqueno or Borincano"))
  data$R0555625[1.0 <= data$R0555625 & data$R0555625 <= 26.0] <- 1.0
  data$R0555625 <- factor(data$R0555625, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "26.               - Other Latino, Hispano, or Latin-American descent"))
  data$R0555626[1.0 <= data$R0555626 & data$R0555626 <= 27.0] <- 1.0
  data$R0555626 <- factor(data$R0555626, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "27.               - Other Spanish descent"))
  data$R0555627[1.0 <= data$R0555627 & data$R0555627 <= 28.0] <- 1.0
  data$R0555627 <- factor(data$R0555627, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "28.  Norwegian"))
  data$R0555628[1.0 <= data$R0555628 & data$R0555628 <= 29.0] <- 1.0
  data$R0555628 <- factor(data$R0555628, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "29.  Polish"))
  data$R0555629[1.0 <= data$R0555629 & data$R0555629 <= 30.0] <- 1.0
  data$R0555629 <- factor(data$R0555629, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "30.  Portuguese"))
  data$R0555630[1.0 <= data$R0555630 & data$R0555630 <= 31.0] <- 1.0
  data$R0555630 <- factor(data$R0555630, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "31.  Russian"))
  data$R0555631[1.0 <= data$R0555631 & data$R0555631 <= 32.0] <- 1.0
  data$R0555631 <- factor(data$R0555631, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "32.  Scottish"))
  data$R0555632[1.0 <= data$R0555632 & data$R0555632 <= 33.0] <- 1.0
  data$R0555632 <- factor(data$R0555632, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "33.  Swedish"))
  data$R0555633[1.0 <= data$R0555633 & data$R0555633 <= 34.0] <- 1.0
  data$R0555633 <- factor(data$R0555633, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "34.  Taiwanese"))
  data$R0555634[1.0 <= data$R0555634 & data$R0555634 <= 35.0] <- 1.0
  data$R0555634 <- factor(data$R0555634, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "35.  Vietnamese"))
  data$R0555635[1.0 <= data$R0555635 & data$R0555635 <= 36.0] <- 1.0
  data$R0555635 <- factor(data$R0555635, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "36.  Welsh"))
  data$R0555636[1.0 <= data$R0555636 & data$R0555636 <= 39.0] <- 1.0
  data$R0555636 <- factor(data$R0555636, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "37.  Armenian"))
  data$R0555637[1.0 <= data$R0555637 & data$R0555637 <= 40.0] <- 1.0
  data$R0555637 <- factor(data$R0555637, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "38.  Austrian"))
  data$R0555638[1.0 <= data$R0555638 & data$R0555638 <= 41.0] <- 1.0
  data$R0555638 <- factor(data$R0555638, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "39.  Canadian"))
  data$R0555639[1.0 <= data$R0555639 & data$R0555639 <= 42.0] <- 1.0
  data$R0555639 <- factor(data$R0555639, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "40.  Croatian"))
  data$R0555640[1.0 <= data$R0555640 & data$R0555640 <= 43.0] <- 1.0
  data$R0555640 <- factor(data$R0555640, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "41.  Finnish"))
  data$R0555641[1.0 <= data$R0555641 & data$R0555641 <= 44.0] <- 1.0
  data$R0555641 <- factor(data$R0555641, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "42.  French Canadian"))
  data$R0555642[1.0 <= data$R0555642 & data$R0555642 <= 45.0] <- 1.0
  data$R0555642 <- factor(data$R0555642, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "43.  Lithuanian"))
  data$R0555643[1.0 <= data$R0555643 & data$R0555643 <= 46.0] <- 1.0
  data$R0555643 <- factor(data$R0555643, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "44.  Romanian"))
  data$R0555644[1.0 <= data$R0555644 & data$R0555644 <= 47.0] <- 1.0
  data$R0555644 <- factor(data$R0555644, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "45.  Slovenian"))
  data$R0555645[1.0 <= data$R0555645 & data$R0555645 <= 48.0] <- 1.0
  data$R0555645 <- factor(data$R0555645, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "46.  Swiss"))
  data$R0555646[1.0 <= data$R0555646 & data$R0555646 <= 49.0] <- 1.0
  data$R0555646 <- factor(data$R0555646, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "47.  Ukranian"))
  data$R0555647[1.0 <= data$R0555647 & data$R0555647 <= 51.0] <- 1.0
  data$R0555647 <- factor(data$R0555647, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "48.  Other European"))
  data$R0555648[1.0 <= data$R0555648 & data$R0555648 <= 52.0] <- 1.0
  data$R0555648 <- factor(data$R0555648, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "49.  Other Latin, Central, South American"))
  data$R0555649[1.0 <= data$R0555649 & data$R0555649 <= 53.0] <- 1.0
  data$R0555649 <- factor(data$R0555649, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "50.  Other Asian, Pacific Island"))
  data$R0555650[1.0 <= data$R0555650 & data$R0555650 <= 54.0] <- 1.0
  data$R0555650 <- factor(data$R0555650, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "51.  Other African"))
  data$R0555651[1.0 <= data$R0555651 & data$R0555651 <= 38.0] <- 1.0
  data$R0555651 <- factor(data$R0555651, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "(IF VOLUNTEERED:) American"))
  data$R0555652[1.0 <= data$R0555652 & data$R0555652 <= 37.0] <- 1.0
  data$R0555652 <- factor(data$R0555652, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "Other (SPECIFY)"))
  data$R0555653 <- factor(data$R0555653, 
    levels=c(0.0,1.0), 
    labels=c("NOT SELECTED",
      "None"))
  data$R1201300 <- factor(data$R1201300, 
    levels=c(1.0,2.0,3.0), 
    labels=c("Citizen, born in the U.S.",
      "Unknown, not born in U.S.",
      "Unknown, can't determine birthplace"))
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
  data$R2340900 <- factor(data$R2340900, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$R2341200[1.0 <= data$R2341200 & data$R2341200 <= 499.0] <- 1.0
  data$R2341200[500.0 <= data$R2341200 & data$R2341200 <= 999.0] <- 500.0
  data$R2341200[1000.0 <= data$R2341200 & data$R2341200 <= 1499.0] <- 1000.0
  data$R2341200[1500.0 <= data$R2341200 & data$R2341200 <= 1999.0] <- 1500.0
  data$R2341200[2000.0 <= data$R2341200 & data$R2341200 <= 2499.0] <- 2000.0
  data$R2341200[2500.0 <= data$R2341200 & data$R2341200 <= 2999.0] <- 2500.0
  data$R2341200[3000.0 <= data$R2341200 & data$R2341200 <= 3499.0] <- 3000.0
  data$R2341200[3500.0 <= data$R2341200 & data$R2341200 <= 3999.0] <- 3500.0
  data$R2341200[4000.0 <= data$R2341200 & data$R2341200 <= 4499.0] <- 4000.0
  data$R2341200[4500.0 <= data$R2341200 & data$R2341200 <= 4999.0] <- 4500.0
  data$R2341200[5000.0 <= data$R2341200 & data$R2341200 <= 6999.0] <- 5000.0
  data$R2341200[7000.0 <= data$R2341200 & data$R2341200 <= 9.9999999E7] <- 7000.0
  data$R2341200 <- factor(data$R2341200, 
    levels=c(0.0,1.0,500.0,1000.0,1500.0,2000.0,2500.0,3000.0,3500.0,4000.0,4500.0,5000.0,7000.0), 
    labels=c("0",
      "1 TO 499",
      "500 TO 999",
      "1000 TO 1499",
      "1500 TO 1999",
      "2000 TO 2499",
      "2500 TO 2999",
      "3000 TO 3499",
      "3500 TO 3999",
      "4000 TO 4499",
      "4500 TO 4999",
      "5000 TO 6999",
      "7000 TO 99999999: 7000+"))
  data$R3649900 <- factor(data$R3649900, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$R3650200[1.0 <= data$R3650200 & data$R3650200 <= 499.0] <- 1.0
  data$R3650200[500.0 <= data$R3650200 & data$R3650200 <= 999.0] <- 500.0
  data$R3650200[1000.0 <= data$R3650200 & data$R3650200 <= 1499.0] <- 1000.0
  data$R3650200[1500.0 <= data$R3650200 & data$R3650200 <= 1999.0] <- 1500.0
  data$R3650200[2000.0 <= data$R3650200 & data$R3650200 <= 2499.0] <- 2000.0
  data$R3650200[2500.0 <= data$R3650200 & data$R3650200 <= 2999.0] <- 2500.0
  data$R3650200[3000.0 <= data$R3650200 & data$R3650200 <= 3499.0] <- 3000.0
  data$R3650200[3500.0 <= data$R3650200 & data$R3650200 <= 3999.0] <- 3500.0
  data$R3650200[4000.0 <= data$R3650200 & data$R3650200 <= 4499.0] <- 4000.0
  data$R3650200[4500.0 <= data$R3650200 & data$R3650200 <= 4999.0] <- 4500.0
  data$R3650200[5000.0 <= data$R3650200 & data$R3650200 <= 6999.0] <- 5000.0
  data$R3650200[7000.0 <= data$R3650200 & data$R3650200 <= 9.9999999E7] <- 7000.0
  data$R3650200 <- factor(data$R3650200, 
    levels=c(0.0,1.0,500.0,1000.0,1500.0,2000.0,2500.0,3000.0,3500.0,4000.0,4500.0,5000.0,7000.0), 
    labels=c("0",
      "1 TO 499",
      "500 TO 999",
      "1000 TO 1499",
      "1500 TO 1999",
      "2000 TO 2499",
      "2500 TO 2999",
      "3000 TO 3499",
      "3500 TO 3999",
      "4000 TO 4499",
      "4500 TO 4999",
      "5000 TO 6999",
      "7000 TO 99999999: 7000+"))
  data$R5098600 <- factor(data$R5098600, 
    levels=c(0.0,1.0), 
    labels=c("No",
      "Yes"))
  data$R5098900[1.0 <= data$R5098900 & data$R5098900 <= 999.0] <- 1.0
  data$R5098900[1000.0 <= data$R5098900 & data$R5098900 <= 1999.0] <- 1000.0
  data$R5098900[2000.0 <= data$R5098900 & data$R5098900 <= 2999.0] <- 2000.0
  data$R5098900[3000.0 <= data$R5098900 & data$R5098900 <= 3999.0] <- 3000.0
  data$R5098900[4000.0 <= data$R5098900 & data$R5098900 <= 4999.0] <- 4000.0
  data$R5098900[5000.0 <= data$R5098900 & data$R5098900 <= 5999.0] <- 5000.0
  data$R5098900[6000.0 <= data$R5098900 & data$R5098900 <= 6999.0] <- 6000.0
  data$R5098900[7000.0 <= data$R5098900 & data$R5098900 <= 7999.0] <- 7000.0
  data$R5098900[8000.0 <= data$R5098900 & data$R5098900 <= 8999.0] <- 8000.0
  data$R5098900[9000.0 <= data$R5098900 & data$R5098900 <= 9999.0] <- 9000.0
  data$R5098900[10000.0 <= data$R5098900 & data$R5098900 <= 14999.0] <- 10000.0
  data$R5098900[15000.0 <= data$R5098900 & data$R5098900 <= 19999.0] <- 15000.0
  data$R5098900[20000.0 <= data$R5098900 & data$R5098900 <= 24999.0] <- 20000.0
  data$R5098900[25000.0 <= data$R5098900 & data$R5098900 <= 49999.0] <- 25000.0
  data$R5098900[50000.0 <= data$R5098900 & data$R5098900 <= 9.9999999E7] <- 50000.0
  data$R5098900 <- factor(data$R5098900, 
    levels=c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0), 
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
      "9000 TO 9999",
      "10000 TO 14999",
      "15000 TO 19999",
      "20000 TO 24999",
      "25000 TO 49999",
      "50000 TO 99999999: 50000+"))
  data$R5821400 <- factor(data$R5821400, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$R5821700 <- factor(data$R5821700, 
    levels=c(1.0,2.0,3.0), 
    labels=c("Citizen of the U.S. by birth",
      "Citizen of the U.S. by naturalization",
      "Not a U.S. citizen"))
  data$R6827200 <- factor(data$R6827200, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$R6827500[1.0 <= data$R6827500 & data$R6827500 <= 999.0] <- 1.0
  data$R6827500[1000.0 <= data$R6827500 & data$R6827500 <= 1999.0] <- 1000.0
  data$R6827500[2000.0 <= data$R6827500 & data$R6827500 <= 2999.0] <- 2000.0
  data$R6827500[3000.0 <= data$R6827500 & data$R6827500 <= 3999.0] <- 3000.0
  data$R6827500[4000.0 <= data$R6827500 & data$R6827500 <= 4999.0] <- 4000.0
  data$R6827500[5000.0 <= data$R6827500 & data$R6827500 <= 5999.0] <- 5000.0
  data$R6827500[6000.0 <= data$R6827500 & data$R6827500 <= 6999.0] <- 6000.0
  data$R6827500[7000.0 <= data$R6827500 & data$R6827500 <= 7999.0] <- 7000.0
  data$R6827500[8000.0 <= data$R6827500 & data$R6827500 <= 8999.0] <- 8000.0
  data$R6827500[9000.0 <= data$R6827500 & data$R6827500 <= 9999.0] <- 9000.0
  data$R6827500[10000.0 <= data$R6827500 & data$R6827500 <= 14999.0] <- 10000.0
  data$R6827500[15000.0 <= data$R6827500 & data$R6827500 <= 19999.0] <- 15000.0
  data$R6827500[20000.0 <= data$R6827500 & data$R6827500 <= 24999.0] <- 20000.0
  data$R6827500[25000.0 <= data$R6827500 & data$R6827500 <= 49999.0] <- 25000.0
  data$R6827500[50000.0 <= data$R6827500 & data$R6827500 <= 9.9999999E7] <- 50000.0
  data$R6827500 <- factor(data$R6827500, 
    levels=c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0), 
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
      "9000 TO 9999",
      "10000 TO 14999",
      "15000 TO 19999",
      "20000 TO 24999",
      "25000 TO 49999",
      "50000 TO 99999999: 50000+"))
  data$S0191300 <- factor(data$S0191300, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$S1055500 <- factor(data$S1055500, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$S1055800[1.0 <= data$S1055800 & data$S1055800 <= 999.0] <- 1.0
  data$S1055800[1000.0 <= data$S1055800 & data$S1055800 <= 1999.0] <- 1000.0
  data$S1055800[2000.0 <= data$S1055800 & data$S1055800 <= 2999.0] <- 2000.0
  data$S1055800[3000.0 <= data$S1055800 & data$S1055800 <= 3999.0] <- 3000.0
  data$S1055800[4000.0 <= data$S1055800 & data$S1055800 <= 4999.0] <- 4000.0
  data$S1055800[5000.0 <= data$S1055800 & data$S1055800 <= 5999.0] <- 5000.0
  data$S1055800[6000.0 <= data$S1055800 & data$S1055800 <= 6999.0] <- 6000.0
  data$S1055800[7000.0 <= data$S1055800 & data$S1055800 <= 7999.0] <- 7000.0
  data$S1055800[8000.0 <= data$S1055800 & data$S1055800 <= 8999.0] <- 8000.0
  data$S1055800[9000.0 <= data$S1055800 & data$S1055800 <= 9999.0] <- 9000.0
  data$S1055800[10000.0 <= data$S1055800 & data$S1055800 <= 14999.0] <- 10000.0
  data$S1055800[15000.0 <= data$S1055800 & data$S1055800 <= 19999.0] <- 15000.0
  data$S1055800[20000.0 <= data$S1055800 & data$S1055800 <= 24999.0] <- 20000.0
  data$S1055800[25000.0 <= data$S1055800 & data$S1055800 <= 49999.0] <- 25000.0
  data$S1055800[50000.0 <= data$S1055800 & data$S1055800 <= 9.9999999E7] <- 50000.0
  data$S1055800 <- factor(data$S1055800, 
    levels=c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0), 
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
      "9000 TO 9999",
      "10000 TO 14999",
      "15000 TO 19999",
      "20000 TO 24999",
      "25000 TO 49999",
      "50000 TO 99999999: 50000+"))
  data$S2175900 <- factor(data$S2175900, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$S2176200 <- factor(data$S2176200, 
    levels=c(1.0,2.0,3.0), 
    labels=c("Citizen of the U.S. by birth",
      "Citizen of the U.S. by naturalization",
      "Not a U.S. citizen"))
  data$S2176400 <- factor(data$S2176400, 
    levels=c(0.0,1.0), 
    labels=c("0: 0  CONDITION DOES NOT APPLY",
      "1: 1  CONDITION APPLIES"))
  data$S3134400 <- factor(data$S3134400, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$S3134600[1.0 <= data$S3134600 & data$S3134600 <= 999.0] <- 1.0
  data$S3134600[1000.0 <= data$S3134600 & data$S3134600 <= 1999.0] <- 1000.0
  data$S3134600[2000.0 <= data$S3134600 & data$S3134600 <= 2999.0] <- 2000.0
  data$S3134600[3000.0 <= data$S3134600 & data$S3134600 <= 3999.0] <- 3000.0
  data$S3134600[4000.0 <= data$S3134600 & data$S3134600 <= 4999.0] <- 4000.0
  data$S3134600[5000.0 <= data$S3134600 & data$S3134600 <= 5999.0] <- 5000.0
  data$S3134600[6000.0 <= data$S3134600 & data$S3134600 <= 6999.0] <- 6000.0
  data$S3134600[7000.0 <= data$S3134600 & data$S3134600 <= 7999.0] <- 7000.0
  data$S3134600[8000.0 <= data$S3134600 & data$S3134600 <= 8999.0] <- 8000.0
  data$S3134600[9000.0 <= data$S3134600 & data$S3134600 <= 9999.0] <- 9000.0
  data$S3134600[10000.0 <= data$S3134600 & data$S3134600 <= 14999.0] <- 10000.0
  data$S3134600[15000.0 <= data$S3134600 & data$S3134600 <= 19999.0] <- 15000.0
  data$S3134600[20000.0 <= data$S3134600 & data$S3134600 <= 24999.0] <- 20000.0
  data$S3134600[25000.0 <= data$S3134600 & data$S3134600 <= 49999.0] <- 25000.0
  data$S3134600[50000.0 <= data$S3134600 & data$S3134600 <= 9.9999999E7] <- 50000.0
  data$S3134600 <- factor(data$S3134600, 
    levels=c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0), 
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
      "9000 TO 9999",
      "10000 TO 14999",
      "15000 TO 19999",
      "20000 TO 24999",
      "25000 TO 49999",
      "50000 TO 99999999: 50000+"))
  data$S3952000 <- factor(data$S3952000, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$S4799400 <- factor(data$S4799400, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$S4799600[1.0 <= data$S4799600 & data$S4799600 <= 999.0] <- 1.0
  data$S4799600[1000.0 <= data$S4799600 & data$S4799600 <= 1999.0] <- 1000.0
  data$S4799600[2000.0 <= data$S4799600 & data$S4799600 <= 2999.0] <- 2000.0
  data$S4799600[3000.0 <= data$S4799600 & data$S4799600 <= 3999.0] <- 3000.0
  data$S4799600[4000.0 <= data$S4799600 & data$S4799600 <= 4999.0] <- 4000.0
  data$S4799600[5000.0 <= data$S4799600 & data$S4799600 <= 5999.0] <- 5000.0
  data$S4799600[6000.0 <= data$S4799600 & data$S4799600 <= 6999.0] <- 6000.0
  data$S4799600[7000.0 <= data$S4799600 & data$S4799600 <= 7999.0] <- 7000.0
  data$S4799600[8000.0 <= data$S4799600 & data$S4799600 <= 8999.0] <- 8000.0
  data$S4799600[9000.0 <= data$S4799600 & data$S4799600 <= 9999.0] <- 9000.0
  data$S4799600[10000.0 <= data$S4799600 & data$S4799600 <= 14999.0] <- 10000.0
  data$S4799600[15000.0 <= data$S4799600 & data$S4799600 <= 19999.0] <- 15000.0
  data$S4799600[20000.0 <= data$S4799600 & data$S4799600 <= 24999.0] <- 20000.0
  data$S4799600[25000.0 <= data$S4799600 & data$S4799600 <= 49999.0] <- 25000.0
  data$S4799600[50000.0 <= data$S4799600 & data$S4799600 <= 9.9999999E7] <- 50000.0
  data$S4799600 <- factor(data$S4799600, 
    levels=c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0), 
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
      "9000 TO 9999",
      "10000 TO 14999",
      "15000 TO 19999",
      "20000 TO 24999",
      "25000 TO 49999",
      "50000 TO 99999999: 50000+"))
  data$S6500800 <- factor(data$S6500800, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$S6501000[1.0 <= data$S6501000 & data$S6501000 <= 999.0] <- 1.0
  data$S6501000[1000.0 <= data$S6501000 & data$S6501000 <= 1999.0] <- 1000.0
  data$S6501000[2000.0 <= data$S6501000 & data$S6501000 <= 2999.0] <- 2000.0
  data$S6501000[3000.0 <= data$S6501000 & data$S6501000 <= 3999.0] <- 3000.0
  data$S6501000[4000.0 <= data$S6501000 & data$S6501000 <= 4999.0] <- 4000.0
  data$S6501000[5000.0 <= data$S6501000 & data$S6501000 <= 5999.0] <- 5000.0
  data$S6501000[6000.0 <= data$S6501000 & data$S6501000 <= 6999.0] <- 6000.0
  data$S6501000[7000.0 <= data$S6501000 & data$S6501000 <= 7999.0] <- 7000.0
  data$S6501000[8000.0 <= data$S6501000 & data$S6501000 <= 8999.0] <- 8000.0
  data$S6501000[9000.0 <= data$S6501000 & data$S6501000 <= 9999.0] <- 9000.0
  data$S6501000[10000.0 <= data$S6501000 & data$S6501000 <= 14999.0] <- 10000.0
  data$S6501000[15000.0 <= data$S6501000 & data$S6501000 <= 19999.0] <- 15000.0
  data$S6501000[20000.0 <= data$S6501000 & data$S6501000 <= 24999.0] <- 20000.0
  data$S6501000[25000.0 <= data$S6501000 & data$S6501000 <= 49999.0] <- 25000.0
  data$S6501000[50000.0 <= data$S6501000 & data$S6501000 <= 9.9999999E7] <- 50000.0
  data$S6501000 <- factor(data$S6501000, 
    levels=c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0), 
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
      "9000 TO 9999",
      "10000 TO 14999",
      "15000 TO 19999",
      "20000 TO 24999",
      "25000 TO 49999",
      "50000 TO 99999999: 50000+"))
  data$S7642200 <- factor(data$S7642200, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$S8496300 <- factor(data$S8496300, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$S8496500[1.0 <= data$S8496500 & data$S8496500 <= 999.0] <- 1.0
  data$S8496500[1000.0 <= data$S8496500 & data$S8496500 <= 1999.0] <- 1000.0
  data$S8496500[2000.0 <= data$S8496500 & data$S8496500 <= 2999.0] <- 2000.0
  data$S8496500[3000.0 <= data$S8496500 & data$S8496500 <= 3999.0] <- 3000.0
  data$S8496500[4000.0 <= data$S8496500 & data$S8496500 <= 4999.0] <- 4000.0
  data$S8496500[5000.0 <= data$S8496500 & data$S8496500 <= 5999.0] <- 5000.0
  data$S8496500[6000.0 <= data$S8496500 & data$S8496500 <= 6999.0] <- 6000.0
  data$S8496500[7000.0 <= data$S8496500 & data$S8496500 <= 7999.0] <- 7000.0
  data$S8496500[8000.0 <= data$S8496500 & data$S8496500 <= 8999.0] <- 8000.0
  data$S8496500[9000.0 <= data$S8496500 & data$S8496500 <= 9999.0] <- 9000.0
  data$S8496500[10000.0 <= data$S8496500 & data$S8496500 <= 14999.0] <- 10000.0
  data$S8496500[15000.0 <= data$S8496500 & data$S8496500 <= 19999.0] <- 15000.0
  data$S8496500[20000.0 <= data$S8496500 & data$S8496500 <= 24999.0] <- 20000.0
  data$S8496500[25000.0 <= data$S8496500 & data$S8496500 <= 49999.0] <- 25000.0
  data$S8496500[50000.0 <= data$S8496500 & data$S8496500 <= 9.9999999E7] <- 50000.0
  data$S8496500 <- factor(data$S8496500, 
    levels=c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0), 
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
      "9000 TO 9999",
      "10000 TO 14999",
      "15000 TO 19999",
      "20000 TO 24999",
      "25000 TO 49999",
      "50000 TO 99999999: 50000+"))
  data$T0135800 <- factor(data$T0135800, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T0889600 <- factor(data$T0889600, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T0889800[1.0 <= data$T0889800 & data$T0889800 <= 999.0] <- 1.0
  data$T0889800[1000.0 <= data$T0889800 & data$T0889800 <= 1999.0] <- 1000.0
  data$T0889800[2000.0 <= data$T0889800 & data$T0889800 <= 2999.0] <- 2000.0
  data$T0889800[3000.0 <= data$T0889800 & data$T0889800 <= 3999.0] <- 3000.0
  data$T0889800[4000.0 <= data$T0889800 & data$T0889800 <= 4999.0] <- 4000.0
  data$T0889800[5000.0 <= data$T0889800 & data$T0889800 <= 5999.0] <- 5000.0
  data$T0889800[6000.0 <= data$T0889800 & data$T0889800 <= 6999.0] <- 6000.0
  data$T0889800[7000.0 <= data$T0889800 & data$T0889800 <= 7999.0] <- 7000.0
  data$T0889800[8000.0 <= data$T0889800 & data$T0889800 <= 8999.0] <- 8000.0
  data$T0889800[9000.0 <= data$T0889800 & data$T0889800 <= 9999.0] <- 9000.0
  data$T0889800[10000.0 <= data$T0889800 & data$T0889800 <= 14999.0] <- 10000.0
  data$T0889800[15000.0 <= data$T0889800 & data$T0889800 <= 19999.0] <- 15000.0
  data$T0889800[20000.0 <= data$T0889800 & data$T0889800 <= 24999.0] <- 20000.0
  data$T0889800[25000.0 <= data$T0889800 & data$T0889800 <= 49999.0] <- 25000.0
  data$T0889800[50000.0 <= data$T0889800 & data$T0889800 <= 9.9999999E7] <- 50000.0
  data$T0889800 <- factor(data$T0889800, 
    levels=c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0), 
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
      "9000 TO 9999",
      "10000 TO 14999",
      "15000 TO 19999",
      "20000 TO 24999",
      "25000 TO 49999",
      "50000 TO 99999999: 50000+"))
  data$T2110700 <- factor(data$T2110700, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T3002800 <- factor(data$T3002800, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T3003000[1.0 <= data$T3003000 & data$T3003000 <= 999.0] <- 1.0
  data$T3003000[1000.0 <= data$T3003000 & data$T3003000 <= 1999.0] <- 1000.0
  data$T3003000[2000.0 <= data$T3003000 & data$T3003000 <= 2999.0] <- 2000.0
  data$T3003000[3000.0 <= data$T3003000 & data$T3003000 <= 3999.0] <- 3000.0
  data$T3003000[4000.0 <= data$T3003000 & data$T3003000 <= 4999.0] <- 4000.0
  data$T3003000[5000.0 <= data$T3003000 & data$T3003000 <= 5999.0] <- 5000.0
  data$T3003000[6000.0 <= data$T3003000 & data$T3003000 <= 6999.0] <- 6000.0
  data$T3003000[7000.0 <= data$T3003000 & data$T3003000 <= 7999.0] <- 7000.0
  data$T3003000[8000.0 <= data$T3003000 & data$T3003000 <= 8999.0] <- 8000.0
  data$T3003000[9000.0 <= data$T3003000 & data$T3003000 <= 9999.0] <- 9000.0
  data$T3003000[10000.0 <= data$T3003000 & data$T3003000 <= 14999.0] <- 10000.0
  data$T3003000[15000.0 <= data$T3003000 & data$T3003000 <= 19999.0] <- 15000.0
  data$T3003000[20000.0 <= data$T3003000 & data$T3003000 <= 24999.0] <- 20000.0
  data$T3003000[25000.0 <= data$T3003000 & data$T3003000 <= 49999.0] <- 25000.0
  data$T3003000[50000.0 <= data$T3003000 & data$T3003000 <= 9.9999999E7] <- 50000.0
  data$T3003000 <- factor(data$T3003000, 
    levels=c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0), 
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
      "9000 TO 9999",
      "10000 TO 14999",
      "15000 TO 19999",
      "20000 TO 24999",
      "25000 TO 49999",
      "50000 TO 99999999: 50000+"))
  data$T3721700 <- factor(data$T3721700, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T4405800 <- factor(data$T4405800, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T4406000[1.0 <= data$T4406000 & data$T4406000 <= 999.0] <- 1.0
  data$T4406000[1000.0 <= data$T4406000 & data$T4406000 <= 1999.0] <- 1000.0
  data$T4406000[2000.0 <= data$T4406000 & data$T4406000 <= 2999.0] <- 2000.0
  data$T4406000[3000.0 <= data$T4406000 & data$T4406000 <= 3999.0] <- 3000.0
  data$T4406000[4000.0 <= data$T4406000 & data$T4406000 <= 4999.0] <- 4000.0
  data$T4406000[5000.0 <= data$T4406000 & data$T4406000 <= 5999.0] <- 5000.0
  data$T4406000[6000.0 <= data$T4406000 & data$T4406000 <= 6999.0] <- 6000.0
  data$T4406000[7000.0 <= data$T4406000 & data$T4406000 <= 7999.0] <- 7000.0
  data$T4406000[8000.0 <= data$T4406000 & data$T4406000 <= 8999.0] <- 8000.0
  data$T4406000[9000.0 <= data$T4406000 & data$T4406000 <= 9999.0] <- 9000.0
  data$T4406000[10000.0 <= data$T4406000 & data$T4406000 <= 14999.0] <- 10000.0
  data$T4406000[15000.0 <= data$T4406000 & data$T4406000 <= 19999.0] <- 15000.0
  data$T4406000[20000.0 <= data$T4406000 & data$T4406000 <= 24999.0] <- 20000.0
  data$T4406000[25000.0 <= data$T4406000 & data$T4406000 <= 49999.0] <- 25000.0
  data$T4406000[50000.0 <= data$T4406000 & data$T4406000 <= 9.9999999E7] <- 50000.0
  data$T4406000 <- factor(data$T4406000, 
    levels=c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0), 
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
      "9000 TO 9999",
      "10000 TO 14999",
      "15000 TO 19999",
      "20000 TO 24999",
      "25000 TO 49999",
      "50000 TO 99999999: 50000+"))
  data$T5313500 <- factor(data$T5313500, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T6055300 <- factor(data$T6055300, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T6055500[1.0 <= data$T6055500 & data$T6055500 <= 999.0] <- 1.0
  data$T6055500[1000.0 <= data$T6055500 & data$T6055500 <= 1999.0] <- 1000.0
  data$T6055500[2000.0 <= data$T6055500 & data$T6055500 <= 2999.0] <- 2000.0
  data$T6055500[3000.0 <= data$T6055500 & data$T6055500 <= 3999.0] <- 3000.0
  data$T6055500[4000.0 <= data$T6055500 & data$T6055500 <= 4999.0] <- 4000.0
  data$T6055500[5000.0 <= data$T6055500 & data$T6055500 <= 5999.0] <- 5000.0
  data$T6055500[6000.0 <= data$T6055500 & data$T6055500 <= 6999.0] <- 6000.0
  data$T6055500[7000.0 <= data$T6055500 & data$T6055500 <= 7999.0] <- 7000.0
  data$T6055500[8000.0 <= data$T6055500 & data$T6055500 <= 8999.0] <- 8000.0
  data$T6055500[9000.0 <= data$T6055500 & data$T6055500 <= 9999.0] <- 9000.0
  data$T6055500[10000.0 <= data$T6055500 & data$T6055500 <= 14999.0] <- 10000.0
  data$T6055500[15000.0 <= data$T6055500 & data$T6055500 <= 19999.0] <- 15000.0
  data$T6055500[20000.0 <= data$T6055500 & data$T6055500 <= 24999.0] <- 20000.0
  data$T6055500[25000.0 <= data$T6055500 & data$T6055500 <= 49999.0] <- 25000.0
  data$T6055500[50000.0 <= data$T6055500 & data$T6055500 <= 9.9999999E7] <- 50000.0
  data$T6055500 <- factor(data$T6055500, 
    levels=c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0), 
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
      "9000 TO 9999",
      "10000 TO 14999",
      "15000 TO 19999",
      "20000 TO 24999",
      "25000 TO 49999",
      "50000 TO 99999999: 50000+"))
  data$T6758500 <- factor(data$T6758500, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T7545400 <- factor(data$T7545400, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T7545600[1.0 <= data$T7545600 & data$T7545600 <= 999.0] <- 1.0
  data$T7545600[1000.0 <= data$T7545600 & data$T7545600 <= 1999.0] <- 1000.0
  data$T7545600[2000.0 <= data$T7545600 & data$T7545600 <= 2999.0] <- 2000.0
  data$T7545600[3000.0 <= data$T7545600 & data$T7545600 <= 3999.0] <- 3000.0
  data$T7545600[4000.0 <= data$T7545600 & data$T7545600 <= 4999.0] <- 4000.0
  data$T7545600[5000.0 <= data$T7545600 & data$T7545600 <= 5999.0] <- 5000.0
  data$T7545600[6000.0 <= data$T7545600 & data$T7545600 <= 6999.0] <- 6000.0
  data$T7545600[7000.0 <= data$T7545600 & data$T7545600 <= 7999.0] <- 7000.0
  data$T7545600[8000.0 <= data$T7545600 & data$T7545600 <= 8999.0] <- 8000.0
  data$T7545600[9000.0 <= data$T7545600 & data$T7545600 <= 9999.0] <- 9000.0
  data$T7545600[10000.0 <= data$T7545600 & data$T7545600 <= 14999.0] <- 10000.0
  data$T7545600[15000.0 <= data$T7545600 & data$T7545600 <= 19999.0] <- 15000.0
  data$T7545600[20000.0 <= data$T7545600 & data$T7545600 <= 24999.0] <- 20000.0
  data$T7545600[25000.0 <= data$T7545600 & data$T7545600 <= 49999.0] <- 25000.0
  data$T7545600[50000.0 <= data$T7545600 & data$T7545600 <= 9.9999999E7] <- 50000.0
  data$T7545600 <- factor(data$T7545600, 
    levels=c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0), 
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
      "9000 TO 9999",
      "10000 TO 14999",
      "15000 TO 19999",
      "20000 TO 24999",
      "25000 TO 49999",
      "50000 TO 99999999: 50000+"))
  data$T8232600 <- factor(data$T8232600, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T8976500 <- factor(data$T8976500, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$T8976700[1.0 <= data$T8976700 & data$T8976700 <= 999.0] <- 1.0
  data$T8976700[1000.0 <= data$T8976700 & data$T8976700 <= 1999.0] <- 1000.0
  data$T8976700[2000.0 <= data$T8976700 & data$T8976700 <= 2999.0] <- 2000.0
  data$T8976700[3000.0 <= data$T8976700 & data$T8976700 <= 3999.0] <- 3000.0
  data$T8976700[4000.0 <= data$T8976700 & data$T8976700 <= 4999.0] <- 4000.0
  data$T8976700[5000.0 <= data$T8976700 & data$T8976700 <= 5999.0] <- 5000.0
  data$T8976700[6000.0 <= data$T8976700 & data$T8976700 <= 6999.0] <- 6000.0
  data$T8976700[7000.0 <= data$T8976700 & data$T8976700 <= 7999.0] <- 7000.0
  data$T8976700[8000.0 <= data$T8976700 & data$T8976700 <= 8999.0] <- 8000.0
  data$T8976700[9000.0 <= data$T8976700 & data$T8976700 <= 9999.0] <- 9000.0
  data$T8976700[10000.0 <= data$T8976700 & data$T8976700 <= 14999.0] <- 10000.0
  data$T8976700[15000.0 <= data$T8976700 & data$T8976700 <= 19999.0] <- 15000.0
  data$T8976700[20000.0 <= data$T8976700 & data$T8976700 <= 24999.0] <- 20000.0
  data$T8976700[25000.0 <= data$T8976700 & data$T8976700 <= 49999.0] <- 25000.0
  data$T8976700[50000.0 <= data$T8976700 & data$T8976700 <= 9.9999999E7] <- 50000.0
  data$T8976700 <- factor(data$T8976700, 
    levels=c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0), 
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
      "9000 TO 9999",
      "10000 TO 14999",
      "15000 TO 19999",
      "20000 TO 24999",
      "25000 TO 49999",
      "50000 TO 99999999: 50000+"))
  data$U0128300 <- factor(data$U0128300, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$U0956700 <- factor(data$U0956700, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$U0956900[1.0 <= data$U0956900 & data$U0956900 <= 999.0] <- 1.0
  data$U0956900[1000.0 <= data$U0956900 & data$U0956900 <= 1999.0] <- 1000.0
  data$U0956900[2000.0 <= data$U0956900 & data$U0956900 <= 2999.0] <- 2000.0
  data$U0956900[3000.0 <= data$U0956900 & data$U0956900 <= 3999.0] <- 3000.0
  data$U0956900[4000.0 <= data$U0956900 & data$U0956900 <= 4999.0] <- 4000.0
  data$U0956900[5000.0 <= data$U0956900 & data$U0956900 <= 5999.0] <- 5000.0
  data$U0956900[6000.0 <= data$U0956900 & data$U0956900 <= 6999.0] <- 6000.0
  data$U0956900[7000.0 <= data$U0956900 & data$U0956900 <= 7999.0] <- 7000.0
  data$U0956900[8000.0 <= data$U0956900 & data$U0956900 <= 8999.0] <- 8000.0
  data$U0956900[9000.0 <= data$U0956900 & data$U0956900 <= 9999.0] <- 9000.0
  data$U0956900[10000.0 <= data$U0956900 & data$U0956900 <= 14999.0] <- 10000.0
  data$U0956900[15000.0 <= data$U0956900 & data$U0956900 <= 19999.0] <- 15000.0
  data$U0956900[20000.0 <= data$U0956900 & data$U0956900 <= 24999.0] <- 20000.0
  data$U0956900[25000.0 <= data$U0956900 & data$U0956900 <= 49999.0] <- 25000.0
  data$U0956900[50000.0 <= data$U0956900 & data$U0956900 <= 9.9999999E7] <- 50000.0
  data$U0956900 <- factor(data$U0956900, 
    levels=c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0,10000.0,15000.0,20000.0,25000.0,50000.0), 
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
      "9000 TO 9999",
      "10000 TO 14999",
      "15000 TO 19999",
      "20000 TO 24999",
      "25000 TO 49999",
      "50000 TO 99999999: 50000+"))
  data$U1981300 <- factor(data$U1981300, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$U2857000 <- factor(data$U2857000, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$U2857200[1.0 <= data$U2857200 & data$U2857200 <= 4999.0] <- 1.0
  data$U2857200[5000.0 <= data$U2857200 & data$U2857200 <= 9999.0] <- 5000.0
  data$U2857200[10000.0 <= data$U2857200 & data$U2857200 <= 14999.0] <- 10000.0
  data$U2857200[15000.0 <= data$U2857200 & data$U2857200 <= 19999.0] <- 15000.0
  data$U2857200[20000.0 <= data$U2857200 & data$U2857200 <= 24999.0] <- 20000.0
  data$U2857200[25000.0 <= data$U2857200 & data$U2857200 <= 29999.0] <- 25000.0
  data$U2857200[30000.0 <= data$U2857200 & data$U2857200 <= 39999.0] <- 30000.0
  data$U2857200[40000.0 <= data$U2857200 & data$U2857200 <= 49999.0] <- 40000.0
  data$U2857200[50000.0 <= data$U2857200 & data$U2857200 <= 59999.0] <- 50000.0
  data$U2857200[60000.0 <= data$U2857200 & data$U2857200 <= 69999.0] <- 60000.0
  data$U2857200[70000.0 <= data$U2857200 & data$U2857200 <= 79999.0] <- 70000.0
  data$U2857200[80000.0 <= data$U2857200 & data$U2857200 <= 89999.0] <- 80000.0
  data$U2857200[90000.0 <= data$U2857200 & data$U2857200 <= 99999.0] <- 90000.0
  data$U2857200[100000.0 <= data$U2857200 & data$U2857200 <= 149999.0] <- 100000.0
  data$U2857200[150000.0 <= data$U2857200 & data$U2857200 <= 9.9999999E7] <- 150000.0
  data$U2857200 <- factor(data$U2857200, 
    levels=c(0.0,1.0,5000.0,10000.0,15000.0,20000.0,25000.0,30000.0,40000.0,50000.0,60000.0,70000.0,80000.0,90000.0,100000.0,150000.0), 
    labels=c("0",
      "1 TO 4999",
      "5000 TO 9999",
      "10000 TO 14999",
      "15000 TO 19999",
      "20000 TO 24999",
      "25000 TO 29999",
      "30000 TO 39999",
      "40000 TO 49999",
      "50000 TO 59999",
      "60000 TO 69999",
      "70000 TO 79999",
      "80000 TO 89999",
      "90000 TO 99999",
      "100000 TO 149999",
      "150000 TO 99999999: 150000+"))
  data$U4282100 <- factor(data$U4282100, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$U4282300[1.0 <= data$U4282300 & data$U4282300 <= 4999.0] <- 1.0
  data$U4282300[5000.0 <= data$U4282300 & data$U4282300 <= 9999.0] <- 5000.0
  data$U4282300[10000.0 <= data$U4282300 & data$U4282300 <= 14999.0] <- 10000.0
  data$U4282300[15000.0 <= data$U4282300 & data$U4282300 <= 19999.0] <- 15000.0
  data$U4282300[20000.0 <= data$U4282300 & data$U4282300 <= 24999.0] <- 20000.0
  data$U4282300[25000.0 <= data$U4282300 & data$U4282300 <= 29999.0] <- 25000.0
  data$U4282300[30000.0 <= data$U4282300 & data$U4282300 <= 39999.0] <- 30000.0
  data$U4282300[40000.0 <= data$U4282300 & data$U4282300 <= 49999.0] <- 40000.0
  data$U4282300[50000.0 <= data$U4282300 & data$U4282300 <= 59999.0] <- 50000.0
  data$U4282300[60000.0 <= data$U4282300 & data$U4282300 <= 69999.0] <- 60000.0
  data$U4282300[70000.0 <= data$U4282300 & data$U4282300 <= 79999.0] <- 70000.0
  data$U4282300[80000.0 <= data$U4282300 & data$U4282300 <= 89999.0] <- 80000.0
  data$U4282300[90000.0 <= data$U4282300 & data$U4282300 <= 99999.0] <- 90000.0
  data$U4282300[100000.0 <= data$U4282300 & data$U4282300 <= 149999.0] <- 100000.0
  data$U4282300[150000.0 <= data$U4282300 & data$U4282300 <= 9.9999999E7] <- 150000.0
  data$U4282300 <- factor(data$U4282300, 
    levels=c(0.0,1.0,5000.0,10000.0,15000.0,20000.0,25000.0,30000.0,40000.0,50000.0,60000.0,70000.0,80000.0,90000.0,100000.0,150000.0), 
    labels=c("0",
      "1 TO 4999",
      "5000 TO 9999",
      "10000 TO 14999",
      "15000 TO 19999",
      "20000 TO 24999",
      "25000 TO 29999",
      "30000 TO 39999",
      "40000 TO 49999",
      "50000 TO 59999",
      "60000 TO 69999",
      "70000 TO 79999",
      "80000 TO 89999",
      "90000 TO 99999",
      "100000 TO 149999",
      "150000 TO 99999999: 150000+"))
  data$Z0501800 <- factor(data$Z0501800, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  data$Z0502000 <- factor(data$Z0502000, 
    levels=c(0.0,1.0), 
    labels=c("NO",
      "YES"))
  return(data)
}

varlabels <- c("PUBID - YTH ID CODE 1997",
  "R RCV INC FROM JOB PAST YR? 1997",
  "TTL INC WAGES, SALARY PAST YR 1997",
  "KEY!SEX (SYMBOL) 1997",
  "KEY!BDATE M/Y (SYMBOL) 1997",
  "KEY!BDATE M/Y (SYMBOL) 1997",
  "WAS PR BORN IN U.S.? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WHAT IS PR RACIAL ORIGIN? 1997",
  "WAS PR SP/PART BORN IN U.S.? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "WHAT IS PR SP/PART RACE ORIGIN? 1997",
  "CV_CITIZENSHIP 1997",
  "CV_SAMPLE_TYPE 1997",
  "KEY!RACE_ETHNICITY (SYMBOL) 1997",
  "R RCV INC FROM JOB PAST YR? 1998",
  "TTL INC WAGES, SALARY PAST YR 1998",
  "R RCV INC FROM JOB PAST YR? 1999",
  "TTL INC WAGES, SALARY PAST YR 1999",
  "R RCV INC FROM JOB PAST YR? 2000",
  "TTL INC WAGES, SALARY PAST YR 2000",
  "R BORN IN U.S OR TERRITORIES 2001",
  "R'S CITIZENSHIP STATUS 2001",
  "R RCV INC FROM JOB PAST YR? 2001",
  "TTL INC WAGES, SALARY PAST YR 2001",
  "R BORN IN U.S OR TERRITORIES 2002",
  "R RCV INC FROM JOB PAST YR? 2002",
  "TTL INC WAGES, SALARY PAST YR 2002",
  "R BORN IN U.S OR TERRITORIES 2003",
  "R'S CITIZENSHIP STATUS 2003",
  "CHK R IS NOT A U.S. CITIZEN 2003",
  "R RCV INC FROM JOB PAST YR? 2003",
  "TTL INC WAGES, SALARY PAST YR 2003",
  "R BORN IN U.S OR TERRITORIES 2004",
  "R RCV INC FROM JOB PAST YR? 2004",
  "TTL INC WAGES, SALARY PAST YR 2004",
  "R RCV INC FROM JOB PAST YR? 2005",
  "TTL INC WAGES, SALARY PAST YR 2005",
  "R BORN IN U.S OR TERRITORIES 2006",
  "R RCV INC FROM JOB PAST YR? 2006",
  "TTL INC WAGES, SALARY PAST YR 2006",
  "R BORN IN U.S OR TERRITORIES 2007",
  "R RCV INC FROM JOB PAST YR? 2007",
  "TTL INC WAGES, SALARY PAST YR 2007",
  "R BORN IN U.S OR TERRITORIES 2008",
  "R RCV INC FROM JOB PAST YR? 2008",
  "TTL INC WAGES, SALARY PAST YR 2008",
  "R BORN IN U.S OR TERRITORIES 2009",
  "R RCV INC FROM JOB PAST YR? 2009",
  "TTL INC WAGES, SALARY PAST YR 2009",
  "R BORN IN U.S OR TERRITORIES 2010",
  "R RCV INC FROM JOB PAST YR? 2010",
  "TTL INC WAGES, SALARY PAST YR 2010",
  "R BORN IN U.S OR TERRITORIES 2011",
  "R RCV INC FROM JOB PAST YR? 2011",
  "TTL INC WAGES, SALARY PAST YR 2011",
  "R BORN IN U.S OR TERRITORIES 2013",
  "R RCV INC FROM JOB PAST YR? 2013",
  "TTL INC WAGES, SALARY PAST YR 2013",
  "R BORN IN U.S OR TERRITORIES 2015",
  "R RCV INC FROM JOB PAST YR? 2015",
  "TTL INC WAGES, SALARY PAST YR 2015",
  "R BORN IN U.S OR TERRITORIES 2017",
  "R RCV INC FROM JOB PAST YR? 2017",
  "TTL INC WAGES, SALARY PAST YR 2017",
  "R RCV INC FROM JOB PAST YR? 2019",
  "TTL INC WAGES, SALARY PAST YR 2019",
  "R'S BIO MOTHER BORN IN USA",
  "R'S BIO FATHER BORN IN USA"
)


# Use qnames rather than rnums

qnames = function(data) {
  names(data) <- c("PUBID_1997",
    "YINC-1400_1997",
    "YINC-1700_1997",
    "KEY_SEX_1997",
    "KEY_BDATE_M_1997",
    "KEY_BDATE_Y_1997",
    "P2-001_1997",
    "P2-012_000001_1997",
    "P2-012_000002_1997",
    "P2-012_000003_1997",
    "P2-012_000004_1997",
    "P2-012_000005_1997",
    "P2-012_000006_1997",
    "P2-012_000007_1997",
    "P2-012_000008_1997",
    "P2-012_000009_1997",
    "P2-012_000010_1997",
    "P2-012_000011_1997",
    "P2-012_000012_1997",
    "P2-012_000013_1997",
    "P2-012_000014_1997",
    "P2-012_000015_1997",
    "P2-012_000016_1997",
    "P2-012_000017_1997",
    "P2-012_000018_1997",
    "P2-012_000019_1997",
    "P2-012_000020_1997",
    "P2-012_000021_1997",
    "P2-012_000022_1997",
    "P2-012_000023_1997",
    "P2-012_000024_1997",
    "P2-012_000025_1997",
    "P2-012_000026_1997",
    "P2-012_000027_1997",
    "P2-012_000028_1997",
    "P2-012_000029_1997",
    "P2-012_000030_1997",
    "P2-012_000031_1997",
    "P2-012_000032_1997",
    "P2-012_000033_1997",
    "P2-012_000034_1997",
    "P2-012_000035_1997",
    "P2-012_000036_1997",
    "P2-012_000039_1997",
    "P2-012_000040_1997",
    "P2-012_000041_1997",
    "P2-012_000042_1997",
    "P2-012_000043_1997",
    "P2-012_000044_1997",
    "P2-012_000045_1997",
    "P2-012_000046_1997",
    "P2-012_000047_1997",
    "P2-012_000048_1997",
    "P2-012_000049_1997",
    "P2-012_000051_1997",
    "P2-012_000052_1997",
    "P2-012_000053_1997",
    "P2-012_000054_1997",
    "P2-012_000038_1997",
    "P2-012_000037_1997",
    "P2-012_000000_1997",
    "P2-037_1997",
    "P2-048_000001_1997",
    "P2-048_000002_1997",
    "P2-048_000003_1997",
    "P2-048_000004_1997",
    "P2-048_000005_1997",
    "P2-048_000006_1997",
    "P2-048_000007_1997",
    "P2-048_000008_1997",
    "P2-048_000009_1997",
    "P2-048_000010_1997",
    "P2-048_000011_1997",
    "P2-048_000012_1997",
    "P2-048_000013_1997",
    "P2-048_000014_1997",
    "P2-048_000015_1997",
    "P2-048_000016_1997",
    "P2-048_000017_1997",
    "P2-048_000018_1997",
    "P2-048_000019_1997",
    "P2-048_000020_1997",
    "P2-048_000021_1997",
    "P2-048_000022_1997",
    "P2-048_000023_1997",
    "P2-048_000024_1997",
    "P2-048_000025_1997",
    "P2-048_000026_1997",
    "P2-048_000027_1997",
    "P2-048_000028_1997",
    "P2-048_000029_1997",
    "P2-048_000030_1997",
    "P2-048_000031_1997",
    "P2-048_000032_1997",
    "P2-048_000033_1997",
    "P2-048_000034_1997",
    "P2-048_000035_1997",
    "P2-048_000036_1997",
    "P2-048_000039_1997",
    "P2-048_000040_1997",
    "P2-048_000041_1997",
    "P2-048_000042_1997",
    "P2-048_000043_1997",
    "P2-048_000044_1997",
    "P2-048_000045_1997",
    "P2-048_000046_1997",
    "P2-048_000047_1997",
    "P2-048_000048_1997",
    "P2-048_000049_1997",
    "P2-048_000051_1997",
    "P2-048_000052_1997",
    "P2-048_000053_1997",
    "P2-048_000054_1997",
    "P2-048_000038_1997",
    "P2-048_000037_1997",
    "P2-048_000000_1997",
    "CV_CITIZENSHIP_1997",
    "CV_SAMPLE_TYPE_1997",
    "KEY_RACE_ETHNICITY_1997",
    "YINC-1400_1998",
    "YINC-1700_1998",
    "YINC-1400_1999",
    "YINC-1700_1999",
    "YINC-1400_2000",
    "YINC-1700_2000",
    "YHHI-55701_2001",
    "YHHI-55704_2001",
    "YINC-1400_2001",
    "YINC-1700_2001",
    "YHHI-55701_2002",
    "YINC-1400_2002",
    "YINC-1700_2002",
    "YHHI-55701_2003",
    "YHHI-55704_2003",
    "YHHI-55705A_2003",
    "YINC-1400_2003",
    "YINC-1700_2003",
    "YHHI-55701_2004",
    "YINC-1400_2004",
    "YINC-1700_2004",
    "YINC-1400_2005",
    "YINC-1700_2005",
    "YHHI-55701_2006",
    "YINC-1400_2006",
    "YINC-1700_2006",
    "YHHI-55701_2007",
    "YINC-1400_2007",
    "YINC-1700_2007",
    "YHHI-55701_2008",
    "YINC-1400_2008",
    "YINC-1700_2008",
    "YHHI-55701_2009",
    "YINC-1400_2009",
    "YINC-1700_2009",
    "YHHI-55701_2010",
    "YINC-1400_2010",
    "YINC-1700_2010",
    "YHHI-55701_2011",
    "YINC-1400_2011",
    "YINC-1700_2011",
    "YHHI-55701_2013",
    "YINC-1400_2013",
    "YINC-1700_2013",
    "YHHI-55701_2015",
    "YINC-1400_2015",
    "YINC-1700_2015",
    "YHHI-55701_2017",
    "YINC-1400_2017",
    "YINC-1700_2017",
    "YINC-1400_2019",
    "YINC-1700_2019",
    "YCHR-1160_COMB_XRND",
    "YCHR-1180_COMB_XRND")
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

