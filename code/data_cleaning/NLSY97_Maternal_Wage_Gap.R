# nlsy base data

nlsy_base_data <- read.table('/Users/ConnieXu/QMSS/Intergenerational_Childcare_Maternal_Wage_Gap/data/NLSY97/1997_NLSY_base_data/NLSY_Base_Data.dat', sep=' ')
names(nlsy_base_data) <- c('R0000100',
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

  nlsy_base_data[nlsy_base_data == -1] = NA  # Refused 
  nlsy_base_data[nlsy_base_data == -2] = NA  # Dont know 
  nlsy_base_data[nlsy_base_data == -3] = NA  # Invalid missing 
  nlsy_base_data[nlsy_base_data == -4] = NA  # Valid missing 
  nlsy_base_data[nlsy_base_data == -5] = NA  # Non-interview 


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
nlsy_base_data_cat <- vallabels(nlsy_base_data)

# Remove the '#' before the following lines to rename variables using Qnames instead of Reference Numbers
nlsy_base_data <- qnames(nlsy_base_data)
nlsy_base_data_cat <- qnames(nlsy_base_data_cat)

# Produce summaries for the raw (uncategorized) data file
summary(nlsy_base_data)

# Remove the '#' before the following lines to produce summaries for the "categories" data file.
#categories <- vallabels(nlsy_base_data)
summary(nlsy_base_data_cat)

#************************************************************************************************************


# childcare}
# Set working directory
# setwd()
childcare_nlsy <- read.table('/Users/ConnieXu/QMSS/Intergenerational_Childcare_Maternal_Wage_Gap/data/NLSY97/1997_childcare/ChildcareNLSY.dat', sep=' ')
names(childcare_nlsy) <- c('R0000100',
                           'R0536300',
                           'R0536401',
                           'R0536402',
                           'R1235800',
                           'R1482600',
                           'R6689400',
                           'R6689500',
                           'R6689600',
                           'R6689700',
                           'R6689800',
                           'R6689900',
                           'R6690000',
                           'R6690100',
                           'R6690200',
                           'R6690300',
                           'R6733300',
                           'R6733400',
                           'R6733500',
                           'R6733600',
                           'R6733700',
                           'S1048500',
                           'S6461000',
                           'S6461001',
                           'S6461002',
                           'S6461003',
                           'S6461004',
                           'S6461005',
                           'S6461006',
                           'S6461007',
                           'S6461008',
                           'S6461100',
                           'S6461101',
                           'S6461102',
                           'S6461103',
                           'S6461104',
                           'S6461105',
                           'S6461106',
                           'S6461107',
                           'S6461108',
                           'S6461200',
                           'S6461201',
                           'S6461202',
                           'S6461203',
                           'S6461204',
                           'S6461205',
                           'S6461206',
                           'S6461207',
                           'S6461208',
                           'T2958300',
                           'T2958301',
                           'T2958302',
                           'T2958303',
                           'T2958304',
                           'T2958305',
                           'T2958306',
                           'T2958307',
                           'T2958308',
                           'T2958400',
                           'T2958401',
                           'T2958402',
                           'T2958403',
                           'T2958404',
                           'T2958405',
                           'T2958406',
                           'T2958407',
                           'T2958408',
                           'T2958500',
                           'T2958501',
                           'T2958502',
                           'T2958503',
                           'T2958504',
                           'T2958505',
                           'T2958506',
                           'T2958507',
                           'T2958508',
                           'T2958600',
                           'T2958601',
                           'T2958602',
                           'T2958603',
                           'T2958604',
                           'T2958605',
                           'T2958606',
                           'T2958607',
                           'T2958608',
                           'T2958700',
                           'T2958701',
                           'T2958702',
                           'T2958703',
                           'T2958704',
                           'T2958705',
                           'T2958706',
                           'T2958707',
                           'T2958708',
                           'T7507400',
                           'T7507401',
                           'T7507402',
                           'T7507403',
                           'T7507404',
                           'T7507405',
                           'T7507406',
                           'T7507407',
                           'T7507500',
                           'T7507501',
                           'T7507502',
                           'T7507503',
                           'T7507504',
                           'T7507505',
                           'T7507506',
                           'T7507507',
                           'T7507600',
                           'T7507601',
                           'T7507602',
                           'T7507603',
                           'T7507604',
                           'T7507605',
                           'T7507606',
                           'T7507607',
                           'T7507700',
                           'T7507701',
                           'T7507702',
                           'T7507703',
                           'T7507704',
                           'T7507705',
                           'T7507706',
                           'T7507707',
                           'U0916100',
                           'U0916101',
                           'U0916102',
                           'U0916103',
                           'U0916104',
                           'U0916105',
                           'U0916106',
                           'U0916107',
                           'U0916200',
                           'U0916201',
                           'U0916202',
                           'U0916203',
                           'U0916204',
                           'U0916205',
                           'U0916206',
                           'U0916207',
                           'U0916300',
                           'U0916301',
                           'U0916302',
                           'U0916303',
                           'U0916304',
                           'U0916305',
                           'U0916306',
                           'U0916307',
                           'U0916400',
                           'U0916401',
                           'U0916402',
                           'U0916403',
                           'U0916404',
                           'U0916405',
                           'U0916406',
                           'U0916407',
                           'U2856100',
                           'U4281505',
                           'U4281506',
                           'U4281507')


# Handle missing values

childcare_nlsy[childcare_nlsy == -1] = NA  # Refused 
childcare_nlsy[childcare_nlsy == -2] = NA  # Dont know 
childcare_nlsy[childcare_nlsy == -3] = NA  # Invalid missing 
childcare_nlsy[childcare_nlsy == -4] = NA  # Valid missing 
childcare_nlsy[childcare_nlsy == -5] = NA  # Non-interview 


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
  data$R6689400 <- factor(data$R6689400, 
                          levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0), 
                          labels=c("Spousal or Partner Care",
                                   "Relative Care",
                                   "Sibling Care",
                                   "Self-Care",
                                   "Non-relative Care",
                                   "Family Day Care",
                                   "Child Care Center",
                                   "Formal Schooling",
                                   "No other type of care used"))
  data$R6689500 <- factor(data$R6689500, 
                          levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0), 
                          labels=c("Spousal or Partner Care",
                                   "Relative Care",
                                   "Sibling Care",
                                   "Self-Care",
                                   "Non-relative Care",
                                   "Family Day Care",
                                   "Child Care Center",
                                   "Formal Schooling",
                                   "No other type of care used"))
  data$R6689600 <- factor(data$R6689600, 
                          levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0), 
                          labels=c("Spousal or Partner Care",
                                   "Relative Care",
                                   "Sibling Care",
                                   "Self-Care",
                                   "Non-relative Care",
                                   "Family Day Care",
                                   "Child Care Center",
                                   "Formal Schooling",
                                   "No other type of care used"))
  data$R6689700 <- factor(data$R6689700, 
                          levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0), 
                          labels=c("Spousal or Partner Care",
                                   "Relative Care",
                                   "Sibling Care",
                                   "Self-Care",
                                   "Non-relative Care",
                                   "Family Day Care",
                                   "Child Care Center",
                                   "Formal Schooling",
                                   "No other type of care used"))
  data$R6689800 <- factor(data$R6689800, 
                          levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0), 
                          labels=c("Spousal or Partner Care",
                                   "Relative Care",
                                   "Sibling Care",
                                   "Self-Care",
                                   "Non-relative Care",
                                   "Family Day Care",
                                   "Child Care Center",
                                   "Formal Schooling",
                                   "No other type of care used"))
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
  data$R6690300 <- factor(data$R6690300, 
                          levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0), 
                          labels=c("Spousal or Partner Care",
                                   "Relative Care",
                                   "Sibling Care",
                                   "Self-Care",
                                   "Non-relative Care",
                                   "Family Day Care",
                                   "Child Care Center",
                                   "Formal Schooling"))
  data$R6733300 <- factor(data$R6733300, 
                          levels=c(1.0,2.0,3.0), 
                          labels=c("Per Hour",
                                   "Per Day",
                                   "Per Week"))
  data$R6733400 <- factor(data$R6733400, 
                          levels=c(1.0,2.0,3.0), 
                          labels=c("Per Hour",
                                   "Per Day",
                                   "Per Week"))
  data$R6733500 <- factor(data$R6733500, 
                          levels=c(1.0,2.0,3.0), 
                          labels=c("Per Hour",
                                   "Per Day",
                                   "Per Week"))
  data$R6733600 <- factor(data$R6733600, 
                          levels=c(1.0,2.0,3.0), 
                          labels=c("Per Hour",
                                   "Per Day",
                                   "Per Week"))
  data$R6733700 <- factor(data$R6733700, 
                          levels=c(1.0,2.0,3.0), 
                          labels=c("Per Hour",
                                   "Per Day",
                                   "Per Week"))
  data$S1048500 <- factor(data$S1048500, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Spousal or Partner Care"))
  data$S6461000 <- factor(data$S6461000, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Spousal or Partner Care - your spouse or partner looks after a child"))
  data$S6461001[1.0 <= data$S6461001 & data$S6461001 <= 2.0] <- 1.0
  data$S6461001 <- factor(data$S6461001, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Relative Care - another relative looks after your child/children"))
  data$S6461002[1.0 <= data$S6461002 & data$S6461002 <= 3.0] <- 1.0
  data$S6461002 <- factor(data$S6461002, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Sibling Care - your child's older brother or sister looks after a younger child/children"))
  data$S6461003[1.0 <= data$S6461003 & data$S6461003 <= 4.0] <- 1.0
  data$S6461003 <- factor(data$S6461003, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Self-Care -your child takes care of him or herself"))
  data$S6461004[1.0 <= data$S6461004 & data$S6461004 <= 5.0] <- 1.0
  data$S6461004 <- factor(data$S6461004, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Non-relative Care -a nonrelative looks after your child in your child's home"))
  data$S6461005[1.0 <= data$S6461005 & data$S6461005 <= 6.0] <- 1.0
  data$S6461005 <- factor(data$S6461005, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Family Day Care - your child goes to someone else's home to be looked after"))
  data$S6461006[1.0 <= data$S6461006 & data$S6461006 <= 7.0] <- 1.0
  data$S6461006 <- factor(data$S6461006, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Child Care Center - your child attends a regular pre-school, Headstart, Montessori, day-care center, or other pre-kindergarten program"))
  data$S6461007[1.0 <= data$S6461007 & data$S6461007 <= 8.0] <- 1.0
  data$S6461007 <- factor(data$S6461007, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Formal Schooling - your child attends a kindergarten or elementary school"))
  data$S6461008[1.0 <= data$S6461008 & data$S6461008 <= 9.0] <- 1.0
  data$S6461008 <- factor(data$S6461008, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "After School Care - your child attends a formal program for after the school day"))
  data$S6461100 <- factor(data$S6461100, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Spousal or Partner Care - your spouse or partner looks after a child"))
  data$S6461101[1.0 <= data$S6461101 & data$S6461101 <= 2.0] <- 1.0
  data$S6461101 <- factor(data$S6461101, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Relative Care - another relative looks after your child/children"))
  data$S6461102[1.0 <= data$S6461102 & data$S6461102 <= 3.0] <- 1.0
  data$S6461102 <- factor(data$S6461102, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Sibling Care - your child's older brother or sister looks after a younger child/children"))
  data$S6461103[1.0 <= data$S6461103 & data$S6461103 <= 4.0] <- 1.0
  data$S6461103 <- factor(data$S6461103, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Self-Care -your child takes care of him or herself"))
  data$S6461104[1.0 <= data$S6461104 & data$S6461104 <= 5.0] <- 1.0
  data$S6461104 <- factor(data$S6461104, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Non-relative Care -a nonrelative looks after your child in your child's home"))
  data$S6461105[1.0 <= data$S6461105 & data$S6461105 <= 6.0] <- 1.0
  data$S6461105 <- factor(data$S6461105, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Family Day Care - your child goes to someone else's home to be looked after"))
  data$S6461106[1.0 <= data$S6461106 & data$S6461106 <= 7.0] <- 1.0
  data$S6461106 <- factor(data$S6461106, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Child Care Center - your child attends a regular pre-school, Headstart, Montessori, day-care center, or other pre-kindergarten program"))
  data$S6461107[1.0 <= data$S6461107 & data$S6461107 <= 8.0] <- 1.0
  data$S6461107 <- factor(data$S6461107, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Formal Schooling - your child attends a kindergarten or elementary school"))
  data$S6461108[1.0 <= data$S6461108 & data$S6461108 <= 9.0] <- 1.0
  data$S6461108 <- factor(data$S6461108, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "After School Care - your child attends a formal program for after the school day"))
  data$S6461200 <- factor(data$S6461200, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Spousal or Partner Care - your spouse or partner looks after a child"))
  data$S6461201[1.0 <= data$S6461201 & data$S6461201 <= 2.0] <- 1.0
  data$S6461201 <- factor(data$S6461201, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Relative Care - another relative looks after your child/children"))
  data$S6461202[1.0 <= data$S6461202 & data$S6461202 <= 3.0] <- 1.0
  data$S6461202 <- factor(data$S6461202, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Sibling Care - your child's older brother or sister looks after a younger child/children"))
  data$S6461203[1.0 <= data$S6461203 & data$S6461203 <= 4.0] <- 1.0
  data$S6461203 <- factor(data$S6461203, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Self-Care -your child takes care of him or herself"))
  data$S6461204[1.0 <= data$S6461204 & data$S6461204 <= 5.0] <- 1.0
  data$S6461204 <- factor(data$S6461204, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Non-relative Care -a nonrelative looks after your child in your child's home"))
  data$S6461205[1.0 <= data$S6461205 & data$S6461205 <= 6.0] <- 1.0
  data$S6461205 <- factor(data$S6461205, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Family Day Care - your child goes to someone else's home to be looked after"))
  data$S6461206[1.0 <= data$S6461206 & data$S6461206 <= 7.0] <- 1.0
  data$S6461206 <- factor(data$S6461206, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Child Care Center - your child attends a regular pre-school, Headstart, Montessori, day-care center, or other pre-kindergarten program"))
  data$S6461207[1.0 <= data$S6461207 & data$S6461207 <= 8.0] <- 1.0
  data$S6461207 <- factor(data$S6461207, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Formal Schooling - your child attends a kindergarten or elementary school"))
  data$S6461208[1.0 <= data$S6461208 & data$S6461208 <= 9.0] <- 1.0
  data$S6461208 <- factor(data$S6461208, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "After School Care - your child attends a formal program for after the school day"))
  data$T2958300 <- factor(data$T2958300, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Spousal or Partner Care - your spouse or partner looks after a child"))
  data$T2958301[1.0 <= data$T2958301 & data$T2958301 <= 2.0] <- 1.0
  data$T2958301 <- factor(data$T2958301, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Relative Care - another relative looks after your child/children"))
  data$T2958302[1.0 <= data$T2958302 & data$T2958302 <= 3.0] <- 1.0
  data$T2958302 <- factor(data$T2958302, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Sibling Care - your child's older brother or sister looks after a younger child/children"))
  data$T2958303[1.0 <= data$T2958303 & data$T2958303 <= 4.0] <- 1.0
  data$T2958303 <- factor(data$T2958303, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Self-Care -your child takes care of him or herself"))
  data$T2958304[1.0 <= data$T2958304 & data$T2958304 <= 5.0] <- 1.0
  data$T2958304 <- factor(data$T2958304, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Non-relative Care -a nonrelative looks after your child in your child's home"))
  data$T2958305[1.0 <= data$T2958305 & data$T2958305 <= 6.0] <- 1.0
  data$T2958305 <- factor(data$T2958305, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Family Day Care - your child goes to the caregiver's home to be looked after"))
  data$T2958306[1.0 <= data$T2958306 & data$T2958306 <= 7.0] <- 1.0
  data$T2958306 <- factor(data$T2958306, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Child Care Center - your child attends a regular pre-school, Headstart, Montessori, day-care center, or other pre-kindergarten program"))
  data$T2958307[1.0 <= data$T2958307 & data$T2958307 <= 8.0] <- 1.0
  data$T2958307 <- factor(data$T2958307, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Formal Schooling - your child attends a kindergarten or elementary school"))
  data$T2958308[1.0 <= data$T2958308 & data$T2958308 <= 9.0] <- 1.0
  data$T2958308 <- factor(data$T2958308, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "After School Care - your child attends a formal program for after the school day"))
  data$T2958400 <- factor(data$T2958400, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Spousal or Partner Care - your spouse or partner looks after a child"))
  data$T2958401[1.0 <= data$T2958401 & data$T2958401 <= 2.0] <- 1.0
  data$T2958401 <- factor(data$T2958401, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Relative Care - another relative looks after your child/children"))
  data$T2958402[1.0 <= data$T2958402 & data$T2958402 <= 3.0] <- 1.0
  data$T2958402 <- factor(data$T2958402, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Sibling Care - your child's older brother or sister looks after a younger child/children"))
  data$T2958403[1.0 <= data$T2958403 & data$T2958403 <= 4.0] <- 1.0
  data$T2958403 <- factor(data$T2958403, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Self-Care -your child takes care of him or herself"))
  data$T2958404[1.0 <= data$T2958404 & data$T2958404 <= 5.0] <- 1.0
  data$T2958404 <- factor(data$T2958404, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Non-relative Care -a nonrelative looks after your child in your child's home"))
  data$T2958405[1.0 <= data$T2958405 & data$T2958405 <= 6.0] <- 1.0
  data$T2958405 <- factor(data$T2958405, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Family Day Care - your child goes to the caregiver's home to be looked after"))
  data$T2958406[1.0 <= data$T2958406 & data$T2958406 <= 7.0] <- 1.0
  data$T2958406 <- factor(data$T2958406, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Child Care Center - your child attends a regular pre-school, Headstart, Montessori, day-care center, or other pre-kindergarten program"))
  data$T2958407[1.0 <= data$T2958407 & data$T2958407 <= 8.0] <- 1.0
  data$T2958407 <- factor(data$T2958407, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Formal Schooling - your child attends a kindergarten or elementary school"))
  data$T2958408[1.0 <= data$T2958408 & data$T2958408 <= 9.0] <- 1.0
  data$T2958408 <- factor(data$T2958408, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "After School Care - your child attends a formal program for after the school day"))
  data$T2958500 <- factor(data$T2958500, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Spousal or Partner Care - your spouse or partner looks after a child"))
  data$T2958501[1.0 <= data$T2958501 & data$T2958501 <= 2.0] <- 1.0
  data$T2958501 <- factor(data$T2958501, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Relative Care - another relative looks after your child/children"))
  data$T2958502[1.0 <= data$T2958502 & data$T2958502 <= 3.0] <- 1.0
  data$T2958502 <- factor(data$T2958502, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Sibling Care - your child's older brother or sister looks after a younger child/children"))
  data$T2958503[1.0 <= data$T2958503 & data$T2958503 <= 4.0] <- 1.0
  data$T2958503 <- factor(data$T2958503, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Self-Care -your child takes care of him or herself"))
  data$T2958504[1.0 <= data$T2958504 & data$T2958504 <= 5.0] <- 1.0
  data$T2958504 <- factor(data$T2958504, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Non-relative Care -a nonrelative looks after your child in your child's home"))
  data$T2958505[1.0 <= data$T2958505 & data$T2958505 <= 6.0] <- 1.0
  data$T2958505 <- factor(data$T2958505, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Family Day Care - your child goes to the caregiver's home to be looked after"))
  data$T2958506[1.0 <= data$T2958506 & data$T2958506 <= 7.0] <- 1.0
  data$T2958506 <- factor(data$T2958506, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Child Care Center - your child attends a regular pre-school, Headstart, Montessori, day-care center, or other pre-kindergarten program"))
  data$T2958507[1.0 <= data$T2958507 & data$T2958507 <= 8.0] <- 1.0
  data$T2958507 <- factor(data$T2958507, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Formal Schooling - your child attends a kindergarten or elementary school"))
  data$T2958508[1.0 <= data$T2958508 & data$T2958508 <= 9.0] <- 1.0
  data$T2958508 <- factor(data$T2958508, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "After School Care - your child attends a formal program for after the school day"))
  data$T2958600 <- factor(data$T2958600, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Spousal or Partner Care - your spouse or partner looks after a child"))
  data$T2958601[1.0 <= data$T2958601 & data$T2958601 <= 2.0] <- 1.0
  data$T2958601 <- factor(data$T2958601, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Relative Care - another relative looks after your child/children"))
  data$T2958602[1.0 <= data$T2958602 & data$T2958602 <= 3.0] <- 1.0
  data$T2958602 <- factor(data$T2958602, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Sibling Care - your child's older brother or sister looks after a younger child/children"))
  data$T2958603[1.0 <= data$T2958603 & data$T2958603 <= 4.0] <- 1.0
  data$T2958603 <- factor(data$T2958603, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Self-Care -your child takes care of him or herself"))
  data$T2958604[1.0 <= data$T2958604 & data$T2958604 <= 5.0] <- 1.0
  data$T2958604 <- factor(data$T2958604, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Non-relative Care -a nonrelative looks after your child in your child's home"))
  data$T2958605[1.0 <= data$T2958605 & data$T2958605 <= 6.0] <- 1.0
  data$T2958605 <- factor(data$T2958605, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Family Day Care - your child goes to the caregiver's home to be looked after"))
  data$T2958606[1.0 <= data$T2958606 & data$T2958606 <= 7.0] <- 1.0
  data$T2958606 <- factor(data$T2958606, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Child Care Center - your child attends a regular pre-school, Headstart, Montessori, day-care center, or other pre-kindergarten program"))
  data$T2958607[1.0 <= data$T2958607 & data$T2958607 <= 8.0] <- 1.0
  data$T2958607 <- factor(data$T2958607, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Formal Schooling - your child attends a kindergarten or elementary school"))
  data$T2958608[1.0 <= data$T2958608 & data$T2958608 <= 9.0] <- 1.0
  data$T2958608 <- factor(data$T2958608, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "After School Care - your child attends a formal program for after the school day"))
  data$T2958700 <- factor(data$T2958700, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Spousal or Partner Care - your spouse or partner looks after a child"))
  data$T2958701[1.0 <= data$T2958701 & data$T2958701 <= 2.0] <- 1.0
  data$T2958701 <- factor(data$T2958701, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Relative Care - another relative looks after your child/children"))
  data$T2958702[1.0 <= data$T2958702 & data$T2958702 <= 3.0] <- 1.0
  data$T2958702 <- factor(data$T2958702, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Sibling Care - your child's older brother or sister looks after a younger child/children"))
  data$T2958703[1.0 <= data$T2958703 & data$T2958703 <= 4.0] <- 1.0
  data$T2958703 <- factor(data$T2958703, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Self-Care -your child takes care of him or herself"))
  data$T2958704[1.0 <= data$T2958704 & data$T2958704 <= 5.0] <- 1.0
  data$T2958704 <- factor(data$T2958704, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Non-relative Care -a nonrelative looks after your child in your child's home"))
  data$T2958705[1.0 <= data$T2958705 & data$T2958705 <= 6.0] <- 1.0
  data$T2958705 <- factor(data$T2958705, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Family Day Care - your child goes to the caregiver's home to be looked after"))
  data$T2958706[1.0 <= data$T2958706 & data$T2958706 <= 7.0] <- 1.0
  data$T2958706 <- factor(data$T2958706, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Child Care Center - your child attends a regular pre-school, Headstart, Montessori, day-care center, or other pre-kindergarten program"))
  data$T2958707[1.0 <= data$T2958707 & data$T2958707 <= 8.0] <- 1.0
  data$T2958707 <- factor(data$T2958707, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Formal Schooling - your child attends a kindergarten or elementary school"))
  data$T2958708[1.0 <= data$T2958708 & data$T2958708 <= 9.0] <- 1.0
  data$T2958708 <- factor(data$T2958708, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "After School Care - your child attends a formal program for after the school day"))
  data$T7507400 <- factor(data$T7507400, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Spousal or Partner Care - your spouse or partner looks after a child"))
  data$T7507401[1.0 <= data$T7507401 & data$T7507401 <= 2.0] <- 1.0
  data$T7507401 <- factor(data$T7507401, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Relative Care - another relative looks after your child/children"))
  data$T7507402[1.0 <= data$T7507402 & data$T7507402 <= 3.0] <- 1.0
  data$T7507402 <- factor(data$T7507402, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Sibling Care - your child's older brother or sister looks after a younger child/children"))
  data$T7507403[1.0 <= data$T7507403 & data$T7507403 <= 4.0] <- 1.0
  data$T7507403 <- factor(data$T7507403, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Self-Care -your child takes care of him or herself"))
  data$T7507404[1.0 <= data$T7507404 & data$T7507404 <= 5.0] <- 1.0
  data$T7507404 <- factor(data$T7507404, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Non-relative Care - someone not related to you or your child looks after your child"))
  data$T7507405[1.0 <= data$T7507405 & data$T7507405 <= 7.0] <- 1.0
  data$T7507405 <- factor(data$T7507405, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Child Care Center - your child attends a regular pre-school, Headstart, Montessori, day-care center, or other program other than elementary school pre-kindergarten program"))
  data$T7507406[1.0 <= data$T7507406 & data$T7507406 <= 8.0] <- 1.0
  data$T7507406 <- factor(data$T7507406, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Formal Schooling - your child attends an elementary or middle school for pre-kindergarten, kindergarten, or another grade"))
  data$T7507407[1.0 <= data$T7507407 & data$T7507407 <= 9.0] <- 1.0
  data$T7507407 <- factor(data$T7507407, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "After School Care - your child attends a formal program for after the school day"))
  data$T7507500 <- factor(data$T7507500, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Spousal or Partner Care - your spouse or partner looks after a child"))
  data$T7507501[1.0 <= data$T7507501 & data$T7507501 <= 2.0] <- 1.0
  data$T7507501 <- factor(data$T7507501, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Relative Care - another relative looks after your child/children"))
  data$T7507502[1.0 <= data$T7507502 & data$T7507502 <= 3.0] <- 1.0
  data$T7507502 <- factor(data$T7507502, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Sibling Care - your child's older brother or sister looks after a younger child/children"))
  data$T7507503[1.0 <= data$T7507503 & data$T7507503 <= 4.0] <- 1.0
  data$T7507503 <- factor(data$T7507503, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Self-Care -your child takes care of him or herself"))
  data$T7507504[1.0 <= data$T7507504 & data$T7507504 <= 5.0] <- 1.0
  data$T7507504 <- factor(data$T7507504, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Non-relative Care - someone not related to you or your child looks after your child"))
  data$T7507505[1.0 <= data$T7507505 & data$T7507505 <= 7.0] <- 1.0
  data$T7507505 <- factor(data$T7507505, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Child Care Center - your child attends a regular pre-school, Headstart, Montessori, day-care center, or other program other than elementary school pre-kindergarten program"))
  data$T7507506[1.0 <= data$T7507506 & data$T7507506 <= 8.0] <- 1.0
  data$T7507506 <- factor(data$T7507506, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Formal Schooling - your child attends an elementary or middle school for pre-kindergarten, kindergarten, or another grade"))
  data$T7507507[1.0 <= data$T7507507 & data$T7507507 <= 9.0] <- 1.0
  data$T7507507 <- factor(data$T7507507, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "After School Care - your child attends a formal program for after the school day"))
  data$T7507600 <- factor(data$T7507600, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Spousal or Partner Care - your spouse or partner looks after a child"))
  data$T7507601[1.0 <= data$T7507601 & data$T7507601 <= 2.0] <- 1.0
  data$T7507601 <- factor(data$T7507601, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Relative Care - another relative looks after your child/children"))
  data$T7507602[1.0 <= data$T7507602 & data$T7507602 <= 3.0] <- 1.0
  data$T7507602 <- factor(data$T7507602, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Sibling Care - your child's older brother or sister looks after a younger child/children"))
  data$T7507603[1.0 <= data$T7507603 & data$T7507603 <= 4.0] <- 1.0
  data$T7507603 <- factor(data$T7507603, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Self-Care -your child takes care of him or herself"))
  data$T7507604[1.0 <= data$T7507604 & data$T7507604 <= 5.0] <- 1.0
  data$T7507604 <- factor(data$T7507604, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Non-relative Care - someone not related to you or your child looks after your child"))
  data$T7507605[1.0 <= data$T7507605 & data$T7507605 <= 7.0] <- 1.0
  data$T7507605 <- factor(data$T7507605, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Child Care Center - your child attends a regular pre-school, Headstart, Montessori, day-care center, or other program other than elementary school pre-kindergarten program"))
  data$T7507606[1.0 <= data$T7507606 & data$T7507606 <= 8.0] <- 1.0
  data$T7507606 <- factor(data$T7507606, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Formal Schooling - your child attends an elementary or middle school for pre-kindergarten, kindergarten, or another grade"))
  data$T7507607[1.0 <= data$T7507607 & data$T7507607 <= 9.0] <- 1.0
  data$T7507607 <- factor(data$T7507607, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "After School Care - your child attends a formal program for after the school day"))
  data$T7507700 <- factor(data$T7507700, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Spousal or Partner Care - your spouse or partner looks after a child"))
  data$T7507701[1.0 <= data$T7507701 & data$T7507701 <= 2.0] <- 1.0
  data$T7507701 <- factor(data$T7507701, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Relative Care - another relative looks after your child/children"))
  data$T7507702[1.0 <= data$T7507702 & data$T7507702 <= 3.0] <- 1.0
  data$T7507702 <- factor(data$T7507702, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Sibling Care - your child's older brother or sister looks after a younger child/children"))
  data$T7507703[1.0 <= data$T7507703 & data$T7507703 <= 4.0] <- 1.0
  data$T7507703 <- factor(data$T7507703, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Self-Care -your child takes care of him or herself"))
  data$T7507704[1.0 <= data$T7507704 & data$T7507704 <= 5.0] <- 1.0
  data$T7507704 <- factor(data$T7507704, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Non-relative Care - someone not related to you or your child looks after your child"))
  data$T7507705[1.0 <= data$T7507705 & data$T7507705 <= 7.0] <- 1.0
  data$T7507705 <- factor(data$T7507705, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Child Care Center - your child attends a regular pre-school, Headstart, Montessori, day-care center, or other program other than elementary school pre-kindergarten program"))
  data$T7507706[1.0 <= data$T7507706 & data$T7507706 <= 8.0] <- 1.0
  data$T7507706 <- factor(data$T7507706, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Formal Schooling - your child attends an elementary or middle school for pre-kindergarten, kindergarten, or another grade"))
  data$T7507707[1.0 <= data$T7507707 & data$T7507707 <= 9.0] <- 1.0
  data$T7507707 <- factor(data$T7507707, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "After School Care - your child attends a formal program for after the school day"))
  data$U0916100 <- factor(data$U0916100, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Spousal or Partner Care - your spouse or partner looks after a child"))
  data$U0916101[1.0 <= data$U0916101 & data$U0916101 <= 2.0] <- 1.0
  data$U0916101 <- factor(data$U0916101, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Relative Care - another relative looks after your child/children"))
  data$U0916102[1.0 <= data$U0916102 & data$U0916102 <= 3.0] <- 1.0
  data$U0916102 <- factor(data$U0916102, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Sibling Care - your child's older brother or sister looks after a younger child/children"))
  data$U0916103[1.0 <= data$U0916103 & data$U0916103 <= 4.0] <- 1.0
  data$U0916103 <- factor(data$U0916103, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Self-Care -your child takes care of him or herself"))
  data$U0916104[1.0 <= data$U0916104 & data$U0916104 <= 5.0] <- 1.0
  data$U0916104 <- factor(data$U0916104, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Non-relative Care - someone not related to you or your child looks after your child"))
  data$U0916105[1.0 <= data$U0916105 & data$U0916105 <= 7.0] <- 1.0
  data$U0916105 <- factor(data$U0916105, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Child Care Center - your child attends a regular pre-school, Headstart, Montessori, day-care center, or other program other than elementary school pre-kindergarten program"))
  data$U0916106[1.0 <= data$U0916106 & data$U0916106 <= 8.0] <- 1.0
  data$U0916106 <- factor(data$U0916106, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Formal Schooling - your child attends an elementary or middle school for pre-kindergarten, kindergarten, or another grade"))
  data$U0916107[1.0 <= data$U0916107 & data$U0916107 <= 9.0] <- 1.0
  data$U0916107 <- factor(data$U0916107, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "After School Care - your child attends a formal program for after the school day"))
  data$U0916200 <- factor(data$U0916200, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Spousal or Partner Care - your spouse or partner looks after a child"))
  data$U0916201[1.0 <= data$U0916201 & data$U0916201 <= 2.0] <- 1.0
  data$U0916201 <- factor(data$U0916201, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Relative Care - another relative looks after your child/children"))
  data$U0916202[1.0 <= data$U0916202 & data$U0916202 <= 3.0] <- 1.0
  data$U0916202 <- factor(data$U0916202, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Sibling Care - your child's older brother or sister looks after a younger child/children"))
  data$U0916203[1.0 <= data$U0916203 & data$U0916203 <= 4.0] <- 1.0
  data$U0916203 <- factor(data$U0916203, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Self-Care -your child takes care of him or herself"))
  data$U0916204[1.0 <= data$U0916204 & data$U0916204 <= 5.0] <- 1.0
  data$U0916204 <- factor(data$U0916204, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Non-relative Care - someone not related to you or your child looks after your child"))
  data$U0916205[1.0 <= data$U0916205 & data$U0916205 <= 7.0] <- 1.0
  data$U0916205 <- factor(data$U0916205, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Child Care Center - your child attends a regular pre-school, Headstart, Montessori, day-care center, or other program other than elementary school pre-kindergarten program"))
  data$U0916206[1.0 <= data$U0916206 & data$U0916206 <= 8.0] <- 1.0
  data$U0916206 <- factor(data$U0916206, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Formal Schooling - your child attends an elementary or middle school for pre-kindergarten, kindergarten, or another grade"))
  data$U0916207[1.0 <= data$U0916207 & data$U0916207 <= 9.0] <- 1.0
  data$U0916207 <- factor(data$U0916207, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "After School Care - your child attends a formal program for after the school day"))
  data$U0916300 <- factor(data$U0916300, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Spousal or Partner Care - your spouse or partner looks after a child"))
  data$U0916301[1.0 <= data$U0916301 & data$U0916301 <= 2.0] <- 1.0
  data$U0916301 <- factor(data$U0916301, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Relative Care - another relative looks after your child/children"))
  data$U0916302[1.0 <= data$U0916302 & data$U0916302 <= 3.0] <- 1.0
  data$U0916302 <- factor(data$U0916302, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Sibling Care - your child's older brother or sister looks after a younger child/children"))
  data$U0916303[1.0 <= data$U0916303 & data$U0916303 <= 4.0] <- 1.0
  data$U0916303 <- factor(data$U0916303, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Self-Care -your child takes care of him or herself"))
  data$U0916304[1.0 <= data$U0916304 & data$U0916304 <= 5.0] <- 1.0
  data$U0916304 <- factor(data$U0916304, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Non-relative Care - someone not related to you or your child looks after your child"))
  data$U0916305[1.0 <= data$U0916305 & data$U0916305 <= 7.0] <- 1.0
  data$U0916305 <- factor(data$U0916305, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Child Care Center - your child attends a regular pre-school, Headstart, Montessori, day-care center, or other program other than elementary school pre-kindergarten program"))
  data$U0916306[1.0 <= data$U0916306 & data$U0916306 <= 8.0] <- 1.0
  data$U0916306 <- factor(data$U0916306, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Formal Schooling - your child attends an elementary or middle school for pre-kindergarten, kindergarten, or another grade"))
  data$U0916307[1.0 <= data$U0916307 & data$U0916307 <= 9.0] <- 1.0
  data$U0916307 <- factor(data$U0916307, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "After School Care - your child attends a formal program for after the school day"))
  data$U0916400 <- factor(data$U0916400, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Spousal or Partner Care - your spouse or partner looks after a child"))
  data$U0916401[1.0 <= data$U0916401 & data$U0916401 <= 2.0] <- 1.0
  data$U0916401 <- factor(data$U0916401, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Relative Care - another relative looks after your child/children"))
  data$U0916402[1.0 <= data$U0916402 & data$U0916402 <= 3.0] <- 1.0
  data$U0916402 <- factor(data$U0916402, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Sibling Care - your child's older brother or sister looks after a younger child/children"))
  data$U0916403[1.0 <= data$U0916403 & data$U0916403 <= 4.0] <- 1.0
  data$U0916403 <- factor(data$U0916403, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Self-Care -your child takes care of him or herself"))
  data$U0916404[1.0 <= data$U0916404 & data$U0916404 <= 5.0] <- 1.0
  data$U0916404 <- factor(data$U0916404, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Non-relative Care - someone not related to you or your child looks after your child"))
  data$U0916405[1.0 <= data$U0916405 & data$U0916405 <= 7.0] <- 1.0
  data$U0916405 <- factor(data$U0916405, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Child Care Center - your child attends a regular pre-school, Headstart, Montessori, day-care center, or other program other than elementary school pre-kindergarten program"))
  data$U0916406[1.0 <= data$U0916406 & data$U0916406 <= 8.0] <- 1.0
  data$U0916406 <- factor(data$U0916406, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Formal Schooling - your child attends an elementary or middle school for pre-kindergarten, kindergarten, or another grade"))
  data$U0916407[1.0 <= data$U0916407 & data$U0916407 <= 9.0] <- 1.0
  data$U0916407 <- factor(data$U0916407, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "After School Care - your child attends a formal program for after the school day"))
  data$U2856100 <- factor(data$U2856100, 
                          levels=c(0.0,1.0), 
                          labels=c("NOT SELECTED",
                                   "Spousal or Partner Care - your spouse or partner looks after a child"))
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
               "SECONDARY CHILD CARE ARRANEMENT L1 2001",
               "SECONDARY CHILD CARE ARRANEMENT L2 2001",
               "SECONDARY CHILD CARE ARRANEMENT L3 2001",
               "SECONDARY CHILD CARE ARRANEMENT L4 2001",
               "SECONDARY CHILD CARE ARRANEMENT L5 2001",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2001",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2001",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2001",
               "PRIMARY CHILD CARE ARRANGEMENT L4 2001",
               "PRIMARY CHILD CARE ARRANGEMENT L5 2001",
               "TIME U HELP PAY FOR CH CARE CENT L1 2001",
               "TIME U HELP PAY FOR CH CARE CENT L2 2001",
               "TIME U HELP PAY FOR CH CARE CENT L3 2001",
               "TIME U HELP PAY FOR CH CARE CENT L4 2001",
               "TIME U HELP PAY FOR CH CARE CENT L5 2001",
               "SELECT ALL CARE ARRANGEMENTS 2002",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2005",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2005",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2005",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2005",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2005",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2005",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2005",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2005",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2005",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2005",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2005",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2005",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2005",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2005",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2005",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2005",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2005",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2005",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2005",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2005",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2005",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2005",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2005",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2005",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2005",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2005",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2005",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L4 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L4 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L4 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L4 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L4 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L4 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L4 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L4 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L4 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L5 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L5 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L5 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L5 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L5 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L5 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L5 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L5 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L5 2008",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2011",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2011",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2011",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2011",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2011",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2011",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2011",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2011",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2011",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2011",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2011",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2011",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2011",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2011",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2011",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2011",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2011",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2011",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2011",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2011",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2011",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2011",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2011",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2011",
               "PRIMARY CHILD CARE ARRANGEMENT L4 2011",
               "PRIMARY CHILD CARE ARRANGEMENT L4 2011",
               "PRIMARY CHILD CARE ARRANGEMENT L4 2011",
               "PRIMARY CHILD CARE ARRANGEMENT L4 2011",
               "PRIMARY CHILD CARE ARRANGEMENT L4 2011",
               "PRIMARY CHILD CARE ARRANGEMENT L4 2011",
               "PRIMARY CHILD CARE ARRANGEMENT L4 2011",
               "PRIMARY CHILD CARE ARRANGEMENT L4 2011",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2015",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2015",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2015",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2015",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2015",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2015",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2015",
               "PRIMARY CHILD CARE ARRANGEMENT L1 2015",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2015",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2015",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2015",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2015",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2015",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2015",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2015",
               "PRIMARY CHILD CARE ARRANGEMENT L2 2015",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2015",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2015",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2015",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2015",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2015",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2015",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2015",
               "PRIMARY CHILD CARE ARRANGEMENT L3 2015",
               "PRIMARY CHILD CARE ARRANGEMENT L4 2015",
               "PRIMARY CHILD CARE ARRANGEMENT L4 2015",
               "PRIMARY CHILD CARE ARRANGEMENT L4 2015",
               "PRIMARY CHILD CARE ARRANGEMENT L4 2015",
               "PRIMARY CHILD CARE ARRANGEMENT L4 2015",
               "PRIMARY CHILD CARE ARRANGEMENT L4 2015",
               "PRIMARY CHILD CARE ARRANGEMENT L4 2015",
               "PRIMARY CHILD CARE ARRANGEMENT L4 2015",
               "SELECT ALL CARE ARRANGEMENTS 2017",
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
                   "YCCA-1000.01_2001",
                   "YCCA-1000.02_2001",
                   "YCCA-1000.03_2001",
                   "YCCA-1000.04_2001",
                   "YCCA-1000.05_2001",
                   "YCCA-1100.01_2001",
                   "YCCA-1100.02_2001",
                   "YCCA-1100.03_2001",
                   "YCCA-1100.04_2001",
                   "YCCA-1100.05_2001",
                   "YCCA-6150.01_2001",
                   "YCCA-6150.02_2001",
                   "YCCA-6150.03_2001",
                   "YCCA-6150.04_2001",
                   "YCCA-6150.05_2001",
                   "YCCA-1100A~000001_2002",
                   "YCCAL-1100A.01~000001_2005",
                   "YCCAL-1100A.01~000002_2005",
                   "YCCAL-1100A.01~000003_2005",
                   "YCCAL-1100A.01~000004_2005",
                   "YCCAL-1100A.01~000005_2005",
                   "YCCAL-1100A.01~000006_2005",
                   "YCCAL-1100A.01~000007_2005",
                   "YCCAL-1100A.01~000008_2005",
                   "YCCAL-1100A.01~000009_2005",
                   "YCCAL-1100A.02~000001_2005",
                   "YCCAL-1100A.02~000002_2005",
                   "YCCAL-1100A.02~000003_2005",
                   "YCCAL-1100A.02~000004_2005",
                   "YCCAL-1100A.02~000005_2005",
                   "YCCAL-1100A.02~000006_2005",
                   "YCCAL-1100A.02~000007_2005",
                   "YCCAL-1100A.02~000008_2005",
                   "YCCAL-1100A.02~000009_2005",
                   "YCCAL-1100A.03~000001_2005",
                   "YCCAL-1100A.03~000002_2005",
                   "YCCAL-1100A.03~000003_2005",
                   "YCCAL-1100A.03~000004_2005",
                   "YCCAL-1100A.03~000005_2005",
                   "YCCAL-1100A.03~000006_2005",
                   "YCCAL-1100A.03~000007_2005",
                   "YCCAL-1100A.03~000008_2005",
                   "YCCAL-1100A.03~000009_2005",
                   "YCCAL-1100A.01~000001_2008",
                   "YCCAL-1100A.01~000002_2008",
                   "YCCAL-1100A.01~000003_2008",
                   "YCCAL-1100A.01~000004_2008",
                   "YCCAL-1100A.01~000005_2008",
                   "YCCAL-1100A.01~000006_2008",
                   "YCCAL-1100A.01~000007_2008",
                   "YCCAL-1100A.01~000008_2008",
                   "YCCAL-1100A.01~000009_2008",
                   "YCCAL-1100A.02~000001_2008",
                   "YCCAL-1100A.02~000002_2008",
                   "YCCAL-1100A.02~000003_2008",
                   "YCCAL-1100A.02~000004_2008",
                   "YCCAL-1100A.02~000005_2008",
                   "YCCAL-1100A.02~000006_2008",
                   "YCCAL-1100A.02~000007_2008",
                   "YCCAL-1100A.02~000008_2008",
                   "YCCAL-1100A.02~000009_2008",
                   "YCCAL-1100A.03~000001_2008",
                   "YCCAL-1100A.03~000002_2008",
                   "YCCAL-1100A.03~000003_2008",
                   "YCCAL-1100A.03~000004_2008",
                   "YCCAL-1100A.03~000005_2008",
                   "YCCAL-1100A.03~000006_2008",
                   "YCCAL-1100A.03~000007_2008",
                   "YCCAL-1100A.03~000008_2008",
                   "YCCAL-1100A.03~000009_2008",
                   "YCCAL-1100A.04~000001_2008",
                   "YCCAL-1100A.04~000002_2008",
                   "YCCAL-1100A.04~000003_2008",
                   "YCCAL-1100A.04~000004_2008",
                   "YCCAL-1100A.04~000005_2008",
                   "YCCAL-1100A.04~000006_2008",
                   "YCCAL-1100A.04~000007_2008",
                   "YCCAL-1100A.04~000008_2008",
                   "YCCAL-1100A.04~000009_2008",
                   "YCCAL-1100A.05~000001_2008",
                   "YCCAL-1100A.05~000002_2008",
                   "YCCAL-1100A.05~000003_2008",
                   "YCCAL-1100A.05~000004_2008",
                   "YCCAL-1100A.05~000005_2008",
                   "YCCAL-1100A.05~000006_2008",
                   "YCCAL-1100A.05~000007_2008",
                   "YCCAL-1100A.05~000008_2008",
                   "YCCAL-1100A.05~000009_2008",
                   "YCCAL-1100A.01~000001_2011",
                   "YCCAL-1100A.01~000002_2011",
                   "YCCAL-1100A.01~000003_2011",
                   "YCCAL-1100A.01~000004_2011",
                   "YCCAL-1100A.01~000005_2011",
                   "YCCAL-1100A.01~000007_2011",
                   "YCCAL-1100A.01~000008_2011",
                   "YCCAL-1100A.01~000009_2011",
                   "YCCAL-1100A.02~000001_2011",
                   "YCCAL-1100A.02~000002_2011",
                   "YCCAL-1100A.02~000003_2011",
                   "YCCAL-1100A.02~000004_2011",
                   "YCCAL-1100A.02~000005_2011",
                   "YCCAL-1100A.02~000007_2011",
                   "YCCAL-1100A.02~000008_2011",
                   "YCCAL-1100A.02~000009_2011",
                   "YCCAL-1100A.03~000001_2011",
                   "YCCAL-1100A.03~000002_2011",
                   "YCCAL-1100A.03~000003_2011",
                   "YCCAL-1100A.03~000004_2011",
                   "YCCAL-1100A.03~000005_2011",
                   "YCCAL-1100A.03~000007_2011",
                   "YCCAL-1100A.03~000008_2011",
                   "YCCAL-1100A.03~000009_2011",
                   "YCCAL-1100A.04~000001_2011",
                   "YCCAL-1100A.04~000002_2011",
                   "YCCAL-1100A.04~000003_2011",
                   "YCCAL-1100A.04~000004_2011",
                   "YCCAL-1100A.04~000005_2011",
                   "YCCAL-1100A.04~000007_2011",
                   "YCCAL-1100A.04~000008_2011",
                   "YCCAL-1100A.04~000009_2011",
                   "YCCAL-1100A.01~000001_2015",
                   "YCCAL-1100A.01~000002_2015",
                   "YCCAL-1100A.01~000003_2015",
                   "YCCAL-1100A.01~000004_2015",
                   "YCCAL-1100A.01~000005_2015",
                   "YCCAL-1100A.01~000007_2015",
                   "YCCAL-1100A.01~000008_2015",
                   "YCCAL-1100A.01~000009_2015",
                   "YCCAL-1100A.02~000001_2015",
                   "YCCAL-1100A.02~000002_2015",
                   "YCCAL-1100A.02~000003_2015",
                   "YCCAL-1100A.02~000004_2015",
                   "YCCAL-1100A.02~000005_2015",
                   "YCCAL-1100A.02~000007_2015",
                   "YCCAL-1100A.02~000008_2015",
                   "YCCAL-1100A.02~000009_2015",
                   "YCCAL-1100A.03~000001_2015",
                   "YCCAL-1100A.03~000002_2015",
                   "YCCAL-1100A.03~000003_2015",
                   "YCCAL-1100A.03~000004_2015",
                   "YCCAL-1100A.03~000005_2015",
                   "YCCAL-1100A.03~000007_2015",
                   "YCCAL-1100A.03~000008_2015",
                   "YCCAL-1100A.03~000009_2015",
                   "YCCAL-1100A.04~000001_2015",
                   "YCCAL-1100A.04~000002_2015",
                   "YCCAL-1100A.04~000003_2015",
                   "YCCAL-1100A.04~000004_2015",
                   "YCCAL-1100A.04~000005_2015",
                   "YCCAL-1100A.04~000007_2015",
                   "YCCAL-1100A.04~000008_2015",
                   "YCCAL-1100A.04~000009_2015",
                   "YCCA-1100A~000001_2017",
                   "YCCA-1100A~000007_2019",
                   "YCCA-1100A~000008_2019",
                   "YCCA-1100A~000009_2019")
  return(data)
}


#********************************************************************************************************

# Remove the '#' before the following line to create a data file called "categories" with value labels. 
childcare_nlsy_cat <- vallabels(childcare_nlsy)

# Remove the '#' before the following lines to rename variables using Qnames instead of Reference Numbers
childcare_nlsy <- qnames(childcare_nlsy)
childcare_nlsy_cat <- qnames(childcare_nlsy_cat)

# Produce summaries for the raw (uncategorized) data file
summary(childcare_nlsy)

# Remove the '#' before the following lines to produce summaries for the "categories" data file.
#categories <- vallabels(childcare_nlsy)
print(summary(childcare_nlsy_cat))

#************************************************************************************************************


# childcare_more}

childcare_extension <- read.table('~/QMSS/Intergenerational_Childcare_Maternal_Wage_Gap/data/NLSY97/1997_childcare_extension/1997_childcare_extension.dat', sep=' ')
names(childcare_extension) <- c('R0000100',
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

  childcare_extension[childcare_extension == -1] = NA  # Refused 
  childcare_extension[childcare_extension == -2] = NA  # Dont know 
  childcare_extension[childcare_extension == -3] = NA  # Invalid missing 
  childcare_extension[childcare_extension == -4] = NA  # Valid missing 
  childcare_extension[childcare_extension == -5] = NA  # Non-interview 


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
categories <- vallabels(childcare_extension)

# Remove the '#' before the following lines to rename variables using Qnames instead of Reference Numbers
childcare_extension <- qnames(childcare_extension)
categories <- qnames(categories)

# Produce summaries for the raw (uncategorized) data file
summary(childcare_extension)

# Remove the '#' before the following lines to produce summaries for the "categories" data file.
#categories <- vallabels(childcare_extension)
summary(categories)

#************************************************************************************************************




# married_children}
# Set working directory
# setwd()

married_children <- read.table('~/QMSS/Intergenerational_Childcare_Maternal_Wage_Gap/data/NLSY97/1997_married_children/Married_Children.dat', sep=' ')
names(married_children) <- c('E7011401',
                             'E7011402',
                             'E7011403',
                             'E7011404',
                             'E7011405',
                             'E7011406',
                             'E7011407',
                             'E7011408',
                             'E7011409',
                             'E7011410',
                             'E7011411',
                             'E7011412',
                             'E7011501',
                             'E7011502',
                             'E7011503',
                             'E7011504',
                             'E7011505',
                             'E7011506',
                             'E7011507',
                             'E7011508',
                             'E7011509',
                             'E7011510',
                             'E7011511',
                             'E7011512',
                             'E7011601',
                             'E7011602',
                             'E7011603',
                             'E7011604',
                             'E7011605',
                             'E7011606',
                             'E7011607',
                             'E7011608',
                             'E7011609',
                             'E7011610',
                             'E7011611',
                             'E7011612',
                             'E7011701',
                             'E7011702',
                             'E7011703',
                             'E7011704',
                             'E7011705',
                             'E7011706',
                             'E7011707',
                             'E7011708',
                             'E7011709',
                             'E7011710',
                             'E7011711',
                             'E7011712',
                             'E7011801',
                             'E7011802',
                             'E7011803',
                             'E7011804',
                             'E7011805',
                             'E7011806',
                             'E7011807',
                             'E7011808',
                             'E7011809',
                             'E7011810',
                             'E7011811',
                             'E7011812',
                             'E7011901',
                             'E7011902',
                             'E7011903',
                             'E7011904',
                             'E7011905',
                             'E7011906',
                             'E7011907',
                             'E7011908',
                             'E7011909',
                             'E7011910',
                             'E7011911',
                             'E7011912',
                             'E7012001',
                             'E7012002',
                             'E7012003',
                             'E7012004',
                             'E7012005',
                             'E7012006',
                             'E7012007',
                             'E7012008',
                             'E7012009',
                             'E7012010',
                             'E7012011',
                             'E7012012',
                             'E7012101',
                             'E7012102',
                             'E7012103',
                             'E7012104',
                             'E7012105',
                             'E7012106',
                             'E7012107',
                             'E7012108',
                             'E7012109',
                             'E7012110',
                             'E7012111',
                             'E7012112',
                             'E7012201',
                             'E7012202',
                             'E7012203',
                             'E7012204',
                             'E7012205',
                             'E7012206',
                             'E7012207',
                             'E7012208',
                             'E7012209',
                             'E7012210',
                             'E7012211',
                             'E7012212',
                             'E7012301',
                             'E7012302',
                             'E7012303',
                             'E7012304',
                             'E7012305',
                             'E7012306',
                             'E7012307',
                             'E7012308',
                             'E7012309',
                             'E7012310',
                             'E7012311',
                             'E7012312',
                             'E7012401',
                             'E7012402',
                             'E7012403',
                             'E7012404',
                             'E7012405',
                             'E7012406',
                             'E7012407',
                             'E7012408',
                             'E7012409',
                             'E7012410',
                             'E7012411',
                             'E7012412',
                             'E7012501',
                             'E7012502',
                             'E7012503',
                             'E7012504',
                             'E7012505',
                             'E7012506',
                             'E7012507',
                             'E7012508',
                             'E7012509',
                             'E7012510',
                             'E7012511',
                             'E7012512',
                             'E7012601',
                             'E7012602',
                             'E7012603',
                             'E7012604',
                             'E7012605',
                             'E7012606',
                             'E7012607',
                             'E7012608',
                             'E7012609',
                             'E7012610',
                             'E7012611',
                             'E7012612',
                             'E7012701',
                             'E7012702',
                             'E7012703',
                             'E7012704',
                             'E7012705',
                             'E7012706',
                             'E7012707',
                             'E7012708',
                             'E7012709',
                             'E7012710',
                             'E7012711',
                             'E7012712',
                             'E7012801',
                             'E7012802',
                             'E7012803',
                             'E7012804',
                             'E7012805',
                             'E7012806',
                             'E7012807',
                             'E7012808',
                             'E7012809',
                             'E7012810',
                             'E7012811',
                             'E7012812',
                             'E7012901',
                             'E7012902',
                             'E7012903',
                             'E7012904',
                             'E7012905',
                             'E7012906',
                             'E7012907',
                             'E7012908',
                             'E7012909',
                             'E7012910',
                             'E7012911',
                             'E7012912',
                             'E7013001',
                             'E7013002',
                             'E7013003',
                             'E7013004',
                             'E7013005',
                             'E7013006',
                             'E7013007',
                             'E7013008',
                             'E7013009',
                             'E7013010',
                             'E7013011',
                             'E7013012',
                             'E7013101',
                             'E7013102',
                             'E7013103',
                             'E7013104',
                             'E7013105',
                             'E7013106',
                             'E7013107',
                             'E7013108',
                             'E7013109',
                             'E7013110',
                             'E7013111',
                             'E7013112',
                             'E7013201',
                             'E7013202',
                             'E7013203',
                             'E7013204',
                             'E7013205',
                             'E7013206',
                             'E7013207',
                             'E7013208',
                             'E7013209',
                             'E7013210',
                             'E7013211',
                             'E7013212',
                             'E7013301',
                             'E7013302',
                             'E7013303',
                             'E7013304',
                             'E7013305',
                             'E7013306',
                             'E7013307',
                             'E7013308',
                             'E7013309',
                             'E7013310',
                             'E7013311',
                             'E7013312',
                             'E7013401',
                             'E7013402',
                             'E7013403',
                             'E7013404',
                             'E7013405',
                             'E7013406',
                             'E7013407',
                             'E7013408',
                             'E7013409',
                             'E7013410',
                             'E7013411',
                             'E7013412',
                             'E7013501',
                             'E7013502',
                             'E7013503',
                             'E7013504',
                             'E7013505',
                             'E7013506',
                             'E7013507',
                             'E7013508',
                             'E7013509',
                             'E7013510',
                             'E7013511',
                             'E7013512',
                             'E7013601',
                             'E7013602',
                             'E7013603',
                             'E7013604',
                             'E7013605',
                             'E7013606',
                             'E7013607',
                             'E7013608',
                             'E7013609',
                             'E7013610',
                             'E7013611',
                             'E7013612',
                             'E7013701',
                             'E7013702',
                             'E7013703',
                             'E7013704',
                             'E7013705',
                             'E7013706',
                             'E7013707',
                             'E7013708',
                             'E7013709',
                             'E7013710',
                             'E7013711',
                             'E7013712',
                             'E7013801',
                             'E7013802',
                             'E7013803',
                             'E7013804',
                             'E7013805',
                             'E7013806',
                             'E7013807',
                             'E7013808',
                             'E7013809',
                             'E7013810',
                             'R0000100',
                             'R0536300',
                             'R0536401',
                             'R0536402',
                             'R1211100',
                             'R1211200',
                             'R1235800',
                             'R1482600',
                             'R2570100',
                             'R2570200',
                             'R3892100',
                             'R3892200',
                             'R5474100',
                             'R5474200',
                             'R7237800',
                             'R7237900',
                             'S1553100',
                             'S1553200',
                             'S2022700',
                             'S2022800',
                             'S3823600',
                             'S3823700',
                             'S5423600',
                             'S5423700',
                             'S7525700',
                             'S7525800',
                             'T0026000',
                             'T0026100',
                             'T2020900',
                             'T2021000',
                             'T3611600',
                             'T3611700',
                             'T5211700',
                             'T5211800',
                             'T6663100',
                             'T6663200',
                             'T8134300',
                             'T8134400',
                             'U0014800',
                             'U0014900',
                             'U1852600',
                             'U1852700')


# Handle missing values

married_children[married_children == -1] = NA  # Refused 
married_children[married_children == -2] = NA  # Dont know 
married_children[married_children == -3] = NA  # Invalid missing 
married_children[married_children == -4] = NA  # Valid missing 
married_children[married_children == -5] = NA  # Non-interview 


# If there are values not categorized they will be represented as NA

vallabels = function(data) {
  data$E7011401 <- factor(data$E7011401, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011402 <- factor(data$E7011402, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011403 <- factor(data$E7011403, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011404 <- factor(data$E7011404, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011405 <- factor(data$E7011405, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011406 <- factor(data$E7011406, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011407 <- factor(data$E7011407, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011408 <- factor(data$E7011408, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011409 <- factor(data$E7011409, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011410 <- factor(data$E7011410, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011411 <- factor(data$E7011411, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011412 <- factor(data$E7011412, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011501 <- factor(data$E7011501, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011502 <- factor(data$E7011502, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011503 <- factor(data$E7011503, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011504 <- factor(data$E7011504, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011505 <- factor(data$E7011505, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011506 <- factor(data$E7011506, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011507 <- factor(data$E7011507, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011508 <- factor(data$E7011508, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011509 <- factor(data$E7011509, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011510 <- factor(data$E7011510, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011511 <- factor(data$E7011511, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011512 <- factor(data$E7011512, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011601 <- factor(data$E7011601, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011602 <- factor(data$E7011602, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011603 <- factor(data$E7011603, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011604 <- factor(data$E7011604, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011605 <- factor(data$E7011605, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011606 <- factor(data$E7011606, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011607 <- factor(data$E7011607, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011608 <- factor(data$E7011608, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011609 <- factor(data$E7011609, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011610 <- factor(data$E7011610, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011611 <- factor(data$E7011611, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011612 <- factor(data$E7011612, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011701 <- factor(data$E7011701, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011702 <- factor(data$E7011702, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011703 <- factor(data$E7011703, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011704 <- factor(data$E7011704, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011705 <- factor(data$E7011705, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011706 <- factor(data$E7011706, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011707 <- factor(data$E7011707, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011708 <- factor(data$E7011708, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011709 <- factor(data$E7011709, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011710 <- factor(data$E7011710, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011711 <- factor(data$E7011711, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011712 <- factor(data$E7011712, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011801 <- factor(data$E7011801, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011802 <- factor(data$E7011802, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011803 <- factor(data$E7011803, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011804 <- factor(data$E7011804, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011805 <- factor(data$E7011805, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011806 <- factor(data$E7011806, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011807 <- factor(data$E7011807, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011808 <- factor(data$E7011808, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011809 <- factor(data$E7011809, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011810 <- factor(data$E7011810, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011811 <- factor(data$E7011811, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011812 <- factor(data$E7011812, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011901 <- factor(data$E7011901, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011902 <- factor(data$E7011902, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011903 <- factor(data$E7011903, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011904 <- factor(data$E7011904, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011905 <- factor(data$E7011905, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011906 <- factor(data$E7011906, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011907 <- factor(data$E7011907, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011908 <- factor(data$E7011908, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011909 <- factor(data$E7011909, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011910 <- factor(data$E7011910, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011911 <- factor(data$E7011911, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7011912 <- factor(data$E7011912, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012001 <- factor(data$E7012001, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012002 <- factor(data$E7012002, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012003 <- factor(data$E7012003, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012004 <- factor(data$E7012004, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012005 <- factor(data$E7012005, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012006 <- factor(data$E7012006, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012007 <- factor(data$E7012007, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012008 <- factor(data$E7012008, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012009 <- factor(data$E7012009, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012010 <- factor(data$E7012010, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012011 <- factor(data$E7012011, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012012 <- factor(data$E7012012, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012101 <- factor(data$E7012101, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012102 <- factor(data$E7012102, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012103 <- factor(data$E7012103, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012104 <- factor(data$E7012104, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012105 <- factor(data$E7012105, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012106 <- factor(data$E7012106, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012107 <- factor(data$E7012107, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012108 <- factor(data$E7012108, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012109 <- factor(data$E7012109, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012110 <- factor(data$E7012110, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012111 <- factor(data$E7012111, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012112 <- factor(data$E7012112, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012201 <- factor(data$E7012201, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012202 <- factor(data$E7012202, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012203 <- factor(data$E7012203, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012204 <- factor(data$E7012204, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012205 <- factor(data$E7012205, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012206 <- factor(data$E7012206, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012207 <- factor(data$E7012207, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012208 <- factor(data$E7012208, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012209 <- factor(data$E7012209, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012210 <- factor(data$E7012210, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012211 <- factor(data$E7012211, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012212 <- factor(data$E7012212, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012301 <- factor(data$E7012301, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012302 <- factor(data$E7012302, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012303 <- factor(data$E7012303, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012304 <- factor(data$E7012304, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012305 <- factor(data$E7012305, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012306 <- factor(data$E7012306, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012307 <- factor(data$E7012307, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012308 <- factor(data$E7012308, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012309 <- factor(data$E7012309, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012310 <- factor(data$E7012310, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012311 <- factor(data$E7012311, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012312 <- factor(data$E7012312, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012401 <- factor(data$E7012401, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012402 <- factor(data$E7012402, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012403 <- factor(data$E7012403, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012404 <- factor(data$E7012404, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012405 <- factor(data$E7012405, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012406 <- factor(data$E7012406, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012407 <- factor(data$E7012407, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012408 <- factor(data$E7012408, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012409 <- factor(data$E7012409, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012410 <- factor(data$E7012410, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012411 <- factor(data$E7012411, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012412 <- factor(data$E7012412, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012501 <- factor(data$E7012501, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012502 <- factor(data$E7012502, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012503 <- factor(data$E7012503, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012504 <- factor(data$E7012504, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012505 <- factor(data$E7012505, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012506 <- factor(data$E7012506, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012507 <- factor(data$E7012507, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012508 <- factor(data$E7012508, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012509 <- factor(data$E7012509, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012510 <- factor(data$E7012510, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012511 <- factor(data$E7012511, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012512 <- factor(data$E7012512, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012601 <- factor(data$E7012601, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012602 <- factor(data$E7012602, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012603 <- factor(data$E7012603, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012604 <- factor(data$E7012604, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012605 <- factor(data$E7012605, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012606 <- factor(data$E7012606, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012607 <- factor(data$E7012607, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012608 <- factor(data$E7012608, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012609 <- factor(data$E7012609, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012610 <- factor(data$E7012610, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012611 <- factor(data$E7012611, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012612 <- factor(data$E7012612, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012701 <- factor(data$E7012701, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012702 <- factor(data$E7012702, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012703 <- factor(data$E7012703, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012704 <- factor(data$E7012704, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012705 <- factor(data$E7012705, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012706 <- factor(data$E7012706, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012707 <- factor(data$E7012707, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012708 <- factor(data$E7012708, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012709 <- factor(data$E7012709, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012710 <- factor(data$E7012710, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012711 <- factor(data$E7012711, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012712 <- factor(data$E7012712, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012801 <- factor(data$E7012801, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012802 <- factor(data$E7012802, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012803 <- factor(data$E7012803, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012804 <- factor(data$E7012804, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012805 <- factor(data$E7012805, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012806 <- factor(data$E7012806, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012807 <- factor(data$E7012807, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012808 <- factor(data$E7012808, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012809 <- factor(data$E7012809, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012810 <- factor(data$E7012810, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012811 <- factor(data$E7012811, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012812 <- factor(data$E7012812, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012901 <- factor(data$E7012901, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012902 <- factor(data$E7012902, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012903 <- factor(data$E7012903, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012904 <- factor(data$E7012904, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012905 <- factor(data$E7012905, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012906 <- factor(data$E7012906, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012907 <- factor(data$E7012907, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012908 <- factor(data$E7012908, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012909 <- factor(data$E7012909, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012910 <- factor(data$E7012910, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012911 <- factor(data$E7012911, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7012912 <- factor(data$E7012912, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013001 <- factor(data$E7013001, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013002 <- factor(data$E7013002, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013003 <- factor(data$E7013003, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013004 <- factor(data$E7013004, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013005 <- factor(data$E7013005, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013006 <- factor(data$E7013006, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013007 <- factor(data$E7013007, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013008 <- factor(data$E7013008, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013009 <- factor(data$E7013009, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013010 <- factor(data$E7013010, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013011 <- factor(data$E7013011, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013012 <- factor(data$E7013012, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013101 <- factor(data$E7013101, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013102 <- factor(data$E7013102, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013103 <- factor(data$E7013103, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013104 <- factor(data$E7013104, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013105 <- factor(data$E7013105, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013106 <- factor(data$E7013106, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013107 <- factor(data$E7013107, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013108 <- factor(data$E7013108, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013109 <- factor(data$E7013109, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013110 <- factor(data$E7013110, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013111 <- factor(data$E7013111, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013112 <- factor(data$E7013112, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013201 <- factor(data$E7013201, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013202 <- factor(data$E7013202, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013203 <- factor(data$E7013203, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013204 <- factor(data$E7013204, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013205 <- factor(data$E7013205, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013206 <- factor(data$E7013206, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013207 <- factor(data$E7013207, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013208 <- factor(data$E7013208, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013209 <- factor(data$E7013209, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013210 <- factor(data$E7013210, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013211 <- factor(data$E7013211, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013212 <- factor(data$E7013212, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013301 <- factor(data$E7013301, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013302 <- factor(data$E7013302, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013303 <- factor(data$E7013303, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013304 <- factor(data$E7013304, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013305 <- factor(data$E7013305, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013306 <- factor(data$E7013306, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013307 <- factor(data$E7013307, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013308 <- factor(data$E7013308, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013309 <- factor(data$E7013309, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013310 <- factor(data$E7013310, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013311 <- factor(data$E7013311, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013312 <- factor(data$E7013312, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013401 <- factor(data$E7013401, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013402 <- factor(data$E7013402, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013403 <- factor(data$E7013403, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013404 <- factor(data$E7013404, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013405 <- factor(data$E7013405, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013406 <- factor(data$E7013406, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013407 <- factor(data$E7013407, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013408 <- factor(data$E7013408, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013409 <- factor(data$E7013409, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013410 <- factor(data$E7013410, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013411 <- factor(data$E7013411, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013412 <- factor(data$E7013412, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013501 <- factor(data$E7013501, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013502 <- factor(data$E7013502, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013503 <- factor(data$E7013503, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013504 <- factor(data$E7013504, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013505 <- factor(data$E7013505, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013506 <- factor(data$E7013506, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013507 <- factor(data$E7013507, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013508 <- factor(data$E7013508, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013509 <- factor(data$E7013509, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013510 <- factor(data$E7013510, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013511 <- factor(data$E7013511, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013512 <- factor(data$E7013512, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013601 <- factor(data$E7013601, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013602 <- factor(data$E7013602, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013603 <- factor(data$E7013603, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013604 <- factor(data$E7013604, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013605 <- factor(data$E7013605, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013606 <- factor(data$E7013606, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013607 <- factor(data$E7013607, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013608 <- factor(data$E7013608, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013609 <- factor(data$E7013609, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013610 <- factor(data$E7013610, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013611 <- factor(data$E7013611, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013612 <- factor(data$E7013612, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013701 <- factor(data$E7013701, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013702 <- factor(data$E7013702, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013703 <- factor(data$E7013703, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013704 <- factor(data$E7013704, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013705 <- factor(data$E7013705, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013706 <- factor(data$E7013706, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013707 <- factor(data$E7013707, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013708 <- factor(data$E7013708, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013709 <- factor(data$E7013709, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013710 <- factor(data$E7013710, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013711 <- factor(data$E7013711, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013712 <- factor(data$E7013712, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013801 <- factor(data$E7013801, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013802 <- factor(data$E7013802, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013803 <- factor(data$E7013803, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013804 <- factor(data$E7013804, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013805 <- factor(data$E7013805, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013806 <- factor(data$E7013806, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013807 <- factor(data$E7013807, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013808 <- factor(data$E7013808, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013809 <- factor(data$E7013809, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
  data$E7013810 <- factor(data$E7013810, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("Never Married, Not Cohabitating",
                                   "Never Married, Cohabiting",
                                   "Married",
                                   "Legally Separated",
                                   "Divorced",
                                   "Widowed"))
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
  data$R1211100 <- factor(data$R1211100, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("0",
                                   "1",
                                   "2",
                                   "3",
                                   "4",
                                   "5"))
  data$R1211200 <- factor(data$R1211200, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("0",
                                   "1",
                                   "2",
                                   "3",
                                   "4",
                                   "5"))
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
  data$R2570100 <- factor(data$R2570100, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("0",
                                   "1",
                                   "2",
                                   "3",
                                   "4",
                                   "5"))
  data$R2570200 <- factor(data$R2570200, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("0",
                                   "1",
                                   "2",
                                   "3",
                                   "4",
                                   "5"))
  data$R3892100 <- factor(data$R3892100, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("0",
                                   "1",
                                   "2",
                                   "3",
                                   "4",
                                   "5"))
  data$R3892200 <- factor(data$R3892200, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("0",
                                   "1",
                                   "2",
                                   "3",
                                   "4",
                                   "5"))
  data$R5474100 <- factor(data$R5474100, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("0",
                                   "1",
                                   "2",
                                   "3",
                                   "4",
                                   "5"))
  data$R5474200 <- factor(data$R5474200, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("0",
                                   "1",
                                   "2",
                                   "3",
                                   "4",
                                   "5"))
  data$R7237800 <- factor(data$R7237800, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("0",
                                   "1",
                                   "2",
                                   "3",
                                   "4",
                                   "5"))
  data$R7237900 <- factor(data$R7237900, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0), 
                          labels=c("0",
                                   "1",
                                   "2",
                                   "3",
                                   "4",
                                   "5"))
  data$S1553100[10.0 <= data$S1553100 & data$S1553100 <= 999.0] <- 10.0
  data$S1553100 <- factor(data$S1553100, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0), 
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
                                   "10 TO 999: 10+"))
  data$S1553200[10.0 <= data$S1553200 & data$S1553200 <= 999.0] <- 10.0
  data$S1553200 <- factor(data$S1553200, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0), 
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
                                   "10 TO 999: 10+"))
  data$S2022700[10.0 <= data$S2022700 & data$S2022700 <= 999.0] <- 10.0
  data$S2022700 <- factor(data$S2022700, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0), 
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
                                   "10 TO 999: 10+"))
  data$S2022800[10.0 <= data$S2022800 & data$S2022800 <= 999.0] <- 10.0
  data$S2022800 <- factor(data$S2022800, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0), 
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
                                   "10 TO 999: 10+"))
  data$S3823600[10.0 <= data$S3823600 & data$S3823600 <= 999.0] <- 10.0
  data$S3823600 <- factor(data$S3823600, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0), 
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
                                   "10 TO 999: 10+"))
  data$S3823700[10.0 <= data$S3823700 & data$S3823700 <= 999.0] <- 10.0
  data$S3823700 <- factor(data$S3823700, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0), 
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
                                   "10 TO 999: 10+"))
  data$S5423600[10.0 <= data$S5423600 & data$S5423600 <= 999.0] <- 10.0
  data$S5423600 <- factor(data$S5423600, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0), 
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
                                   "10 TO 999: 10+"))
  data$S5423700[10.0 <= data$S5423700 & data$S5423700 <= 999.0] <- 10.0
  data$S5423700 <- factor(data$S5423700, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0), 
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
                                   "10 TO 999: 10+"))
  data$S7525700[10.0 <= data$S7525700 & data$S7525700 <= 999.0] <- 10.0
  data$S7525700 <- factor(data$S7525700, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0), 
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
                                   "10 TO 999: 10+"))
  data$S7525800[10.0 <= data$S7525800 & data$S7525800 <= 999.0] <- 10.0
  data$S7525800 <- factor(data$S7525800, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0), 
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
                                   "10 TO 999: 10+"))
  data$T0026000[10.0 <= data$T0026000 & data$T0026000 <= 999.0] <- 10.0
  data$T0026000 <- factor(data$T0026000, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0), 
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
                                   "10 TO 999: 10+"))
  data$T0026100[10.0 <= data$T0026100 & data$T0026100 <= 999.0] <- 10.0
  data$T0026100 <- factor(data$T0026100, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0), 
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
                                   "10 TO 999: 10+"))
  data$T2020900[10.0 <= data$T2020900 & data$T2020900 <= 999.0] <- 10.0
  data$T2020900 <- factor(data$T2020900, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0), 
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
                                   "10 TO 999: 10+"))
  data$T2021000[10.0 <= data$T2021000 & data$T2021000 <= 999.0] <- 10.0
  data$T2021000 <- factor(data$T2021000, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0), 
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
                                   "10 TO 999: 10+"))
  data$T3611600[10.0 <= data$T3611600 & data$T3611600 <= 999.0] <- 10.0
  data$T3611600 <- factor(data$T3611600, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0), 
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
                                   "10 TO 999: 10+"))
  data$T3611700[10.0 <= data$T3611700 & data$T3611700 <= 999.0] <- 10.0
  data$T3611700 <- factor(data$T3611700, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0), 
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
                                   "10 TO 999: 10+"))
  data$T5211700[10.0 <= data$T5211700 & data$T5211700 <= 999.0] <- 10.0
  data$T5211700 <- factor(data$T5211700, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0), 
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
                                   "10 TO 999: 10+"))
  data$T5211800[10.0 <= data$T5211800 & data$T5211800 <= 999.0] <- 10.0
  data$T5211800 <- factor(data$T5211800, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0), 
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
                                   "10 TO 999: 10+"))
  data$T6663100[10.0 <= data$T6663100 & data$T6663100 <= 999.0] <- 10.0
  data$T6663100 <- factor(data$T6663100, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0), 
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
                                   "10 TO 999: 10+"))
  data$T6663200[10.0 <= data$T6663200 & data$T6663200 <= 999.0] <- 10.0
  data$T6663200 <- factor(data$T6663200, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0), 
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
                                   "10 TO 999: 10+"))
  data$T8134300[10.0 <= data$T8134300 & data$T8134300 <= 999.0] <- 10.0
  data$T8134300 <- factor(data$T8134300, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0), 
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
                                   "10 TO 999: 10+"))
  data$T8134400[10.0 <= data$T8134400 & data$T8134400 <= 999.0] <- 10.0
  data$T8134400 <- factor(data$T8134400, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0), 
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
                                   "10 TO 999: 10+"))
  data$U0014800[10.0 <= data$U0014800 & data$U0014800 <= 999.0] <- 10.0
  data$U0014800 <- factor(data$U0014800, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0), 
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
                                   "10 TO 999: 10+"))
  data$U0014900[10.0 <= data$U0014900 & data$U0014900 <= 999.0] <- 10.0
  data$U0014900 <- factor(data$U0014900, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0), 
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
                                   "10 TO 999: 10+"))
  data$U1852600[10.0 <= data$U1852600 & data$U1852600 <= 999.0] <- 10.0
  data$U1852600 <- factor(data$U1852600, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0), 
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
                                   "10 TO 999: 10+"))
  data$U1852700[10.0 <= data$U1852700 & data$U1852700 <= 999.0] <- 10.0
  data$U1852700 <- factor(data$U1852700, 
                          levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0), 
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
                                   "10 TO 999: 10+"))
  return(data)
}

varlabels <- c("1994 MAR: MAR STATUS MO L1",
               "1994 MAR: MAR STATUS MO L2",
               "1994 MAR: MAR STATUS MO L3",
               "1994 MAR: MAR STATUS MO L4",
               "1994 MAR: MAR STATUS MO L5",
               "1994 MAR: MAR STATUS MO L6",
               "1994 MAR: MAR STATUS MO L7",
               "1994 MAR: MAR STATUS MO L8",
               "1994 MAR: MAR STATUS MO L9",
               "1994 MAR: MAR STATUS MO L10",
               "1994 MAR: MAR STATUS MO L11",
               "1994 MAR: MAR STATUS MO L12",
               "1995 MAR: MAR STATUS MO L1",
               "1995 MAR: MAR STATUS MO L2",
               "1995 MAR: MAR STATUS MO L3",
               "1995 MAR: MAR STATUS MO L4",
               "1995 MAR: MAR STATUS MO L5",
               "1995 MAR: MAR STATUS MO L6",
               "1995 MAR: MAR STATUS MO L7",
               "1995 MAR: MAR STATUS MO L8",
               "1995 MAR: MAR STATUS MO L9",
               "1995 MAR: MAR STATUS MO L10",
               "1995 MAR: MAR STATUS MO L11",
               "1995 MAR: MAR STATUS MO L12",
               "1996 MAR: MAR STATUS MO L1",
               "1996 MAR: MAR STATUS MO L2",
               "1996 MAR: MAR STATUS MO L3",
               "1996 MAR: MAR STATUS MO L4",
               "1996 MAR: MAR STATUS MO L5",
               "1996 MAR: MAR STATUS MO L6",
               "1996 MAR: MAR STATUS MO L7",
               "1996 MAR: MAR STATUS MO L8",
               "1996 MAR: MAR STATUS MO L9",
               "1996 MAR: MAR STATUS MO L10",
               "1996 MAR: MAR STATUS MO L11",
               "1996 MAR: MAR STATUS MO L12",
               "1997 MAR: MAR STATUS MO L1",
               "1997 MAR: MAR STATUS MO L2",
               "1997 MAR: MAR STATUS MO L3",
               "1997 MAR: MAR STATUS MO L4",
               "1997 MAR: MAR STATUS MO L5",
               "1997 MAR: MAR STATUS MO L6",
               "1997 MAR: MAR STATUS MO L7",
               "1997 MAR: MAR STATUS MO L8",
               "1997 MAR: MAR STATUS MO L9",
               "1997 MAR: MAR STATUS MO L10",
               "1997 MAR: MAR STATUS MO L11",
               "1997 MAR: MAR STATUS MO L12",
               "1998 MAR: MAR STATUS MO L1",
               "1998 MAR: MAR STATUS MO L2",
               "1998 MAR: MAR STATUS MO L3",
               "1998 MAR: MAR STATUS MO L4",
               "1998 MAR: MAR STATUS MO L5",
               "1998 MAR: MAR STATUS MO L6",
               "1998 MAR: MAR STATUS MO L7",
               "1998 MAR: MAR STATUS MO L8",
               "1998 MAR: MAR STATUS MO L9",
               "1998 MAR: MAR STATUS MO L10",
               "1998 MAR: MAR STATUS MO L11",
               "1998 MAR: MAR STATUS MO L12",
               "1999 MAR: MAR STATUS MO L1",
               "1999 MAR: MAR STATUS MO L2",
               "1999 MAR: MAR STATUS MO L3",
               "1999 MAR: MAR STATUS MO L4",
               "1999 MAR: MAR STATUS MO L5",
               "1999 MAR: MAR STATUS MO L6",
               "1999 MAR: MAR STATUS MO L7",
               "1999 MAR: MAR STATUS MO L8",
               "1999 MAR: MAR STATUS MO L9",
               "1999 MAR: MAR STATUS MO L10",
               "1999 MAR: MAR STATUS MO L11",
               "1999 MAR: MAR STATUS MO L12",
               "2000 MAR: MAR STATUS MO L1",
               "2000 MAR: MAR STATUS MO L2",
               "2000 MAR: MAR STATUS MO L3",
               "2000 MAR: MAR STATUS MO L4",
               "2000 MAR: MAR STATUS MO L5",
               "2000 MAR: MAR STATUS MO L6",
               "2000 MAR: MAR STATUS MO L7",
               "2000 MAR: MAR STATUS MO L8",
               "2000 MAR: MAR STATUS MO L9",
               "2000 MAR: MAR STATUS MO L10",
               "2000 MAR: MAR STATUS MO L11",
               "2000 MAR: MAR STATUS MO L12",
               "2001 MAR: MAR STATUS MO L1",
               "2001 MAR: MAR STATUS MO L2",
               "2001 MAR: MAR STATUS MO L3",
               "2001 MAR: MAR STATUS MO L4",
               "2001 MAR: MAR STATUS MO L5",
               "2001 MAR: MAR STATUS MO L6",
               "2001 MAR: MAR STATUS MO L7",
               "2001 MAR: MAR STATUS MO L8",
               "2001 MAR: MAR STATUS MO L9",
               "2001 MAR: MAR STATUS MO L10",
               "2001 MAR: MAR STATUS MO L11",
               "2001 MAR: MAR STATUS MO L12",
               "2002 MAR: MAR STATUS MO L1",
               "2002 MAR: MAR STATUS MO L2",
               "2002 MAR: MAR STATUS MO L3",
               "2002 MAR: MAR STATUS MO L4",
               "2002 MAR: MAR STATUS MO L5",
               "2002 MAR: MAR STATUS MO L6",
               "2002 MAR: MAR STATUS MO L7",
               "2002 MAR: MAR STATUS MO L8",
               "2002 MAR: MAR STATUS MO L9",
               "2002 MAR: MAR STATUS MO L10",
               "2002 MAR: MAR STATUS MO L11",
               "2002 MAR: MAR STATUS MO L12",
               "2003 MAR: MAR STATUS MO L1",
               "2003 MAR: MAR STATUS MO L2",
               "2003 MAR: MAR STATUS MO L3",
               "2003 MAR: MAR STATUS MO L4",
               "2003 MAR: MAR STATUS MO L5",
               "2003 MAR: MAR STATUS MO L6",
               "2003 MAR: MAR STATUS MO L7",
               "2003 MAR: MAR STATUS MO L8",
               "2003 MAR: MAR STATUS MO L9",
               "2003 MAR: MAR STATUS MO L10",
               "2003 MAR: MAR STATUS MO L11",
               "2003 MAR: MAR STATUS MO L12",
               "2004 MAR: MAR STATUS MO L1",
               "2004 MAR: MAR STATUS MO L2",
               "2004 MAR: MAR STATUS MO L3",
               "2004 MAR: MAR STATUS MO L4",
               "2004 MAR: MAR STATUS MO L5",
               "2004 MAR: MAR STATUS MO L6",
               "2004 MAR: MAR STATUS MO L7",
               "2004 MAR: MAR STATUS MO L8",
               "2004 MAR: MAR STATUS MO L9",
               "2004 MAR: MAR STATUS MO L10",
               "2004 MAR: MAR STATUS MO L11",
               "2004 MAR: MAR STATUS MO L12",
               "2005 MAR: MAR STATUS MO L1",
               "2005 MAR: MAR STATUS MO L2",
               "2005 MAR: MAR STATUS MO L3",
               "2005 MAR: MAR STATUS MO L4",
               "2005 MAR: MAR STATUS MO L5",
               "2005 MAR: MAR STATUS MO L6",
               "2005 MAR: MAR STATUS MO L7",
               "2005 MAR: MAR STATUS MO L8",
               "2005 MAR: MAR STATUS MO L9",
               "2005 MAR: MAR STATUS MO L10",
               "2005 MAR: MAR STATUS MO L11",
               "2005 MAR: MAR STATUS MO L12",
               "2006 MAR: MAR STATUS MO L1",
               "2006 MAR: MAR STATUS MO L2",
               "2006 MAR: MAR STATUS MO L3",
               "2006 MAR: MAR STATUS MO L4",
               "2006 MAR: MAR STATUS MO L5",
               "2006 MAR: MAR STATUS MO L6",
               "2006 MAR: MAR STATUS MO L7",
               "2006 MAR: MAR STATUS MO L8",
               "2006 MAR: MAR STATUS MO L9",
               "2006 MAR: MAR STATUS MO L10",
               "2006 MAR: MAR STATUS MO L11",
               "2006 MAR: MAR STATUS MO L12",
               "2007 MAR: MAR STATUS MO L1",
               "2007 MAR: MAR STATUS MO L2",
               "2007 MAR: MAR STATUS MO L3",
               "2007 MAR: MAR STATUS MO L4",
               "2007 MAR: MAR STATUS MO L5",
               "2007 MAR: MAR STATUS MO L6",
               "2007 MAR: MAR STATUS MO L7",
               "2007 MAR: MAR STATUS MO L8",
               "2007 MAR: MAR STATUS MO L9",
               "2007 MAR: MAR STATUS MO L10",
               "2007 MAR: MAR STATUS MO L11",
               "2007 MAR: MAR STATUS MO L12",
               "2008 MAR: MAR STATUS MO L1",
               "2008 MAR: MAR STATUS MO L2",
               "2008 MAR: MAR STATUS MO L3",
               "2008 MAR: MAR STATUS MO L4",
               "2008 MAR: MAR STATUS MO L5",
               "2008 MAR: MAR STATUS MO L6",
               "2008 MAR: MAR STATUS MO L7",
               "2008 MAR: MAR STATUS MO L8",
               "2008 MAR: MAR STATUS MO L9",
               "2008 MAR: MAR STATUS MO L10",
               "2008 MAR: MAR STATUS MO L11",
               "2008 MAR: MAR STATUS MO L12",
               "2009 MAR: MAR STATUS MO L1",
               "2009 MAR: MAR STATUS MO L2",
               "2009 MAR: MAR STATUS MO L3",
               "2009 MAR: MAR STATUS MO L4",
               "2009 MAR: MAR STATUS MO L5",
               "2009 MAR: MAR STATUS MO L6",
               "2009 MAR: MAR STATUS MO L7",
               "2009 MAR: MAR STATUS MO L8",
               "2009 MAR: MAR STATUS MO L9",
               "2009 MAR: MAR STATUS MO L10",
               "2009 MAR: MAR STATUS MO L11",
               "2009 MAR: MAR STATUS MO L12",
               "2010 MAR: MAR STATUS MO L1",
               "2010 MAR: MAR STATUS MO L2",
               "2010 MAR: MAR STATUS MO L3",
               "2010 MAR: MAR STATUS MO L4",
               "2010 MAR: MAR STATUS MO L5",
               "2010 MAR: MAR STATUS MO L6",
               "2010 MAR: MAR STATUS MO L7",
               "2010 MAR: MAR STATUS MO L8",
               "2010 MAR: MAR STATUS MO L9",
               "2010 MAR: MAR STATUS MO L10",
               "2010 MAR: MAR STATUS MO L11",
               "2010 MAR: MAR STATUS MO L12",
               "2011 MAR: MAR STATUS MO L1",
               "2011 MAR: MAR STATUS MO L2",
               "2011 MAR: MAR STATUS MO L3",
               "2011 MAR: MAR STATUS MO L4",
               "2011 MAR: MAR STATUS MO L5",
               "2011 MAR: MAR STATUS MO L6",
               "2011 MAR: MAR STATUS MO L7",
               "2011 MAR: MAR STATUS MO L8",
               "2011 MAR: MAR STATUS MO L9",
               "2011 MAR: MAR STATUS MO L10",
               "2011 MAR: MAR STATUS MO L11",
               "2011 MAR: MAR STATUS MO L12",
               "2012 MAR: MAR STATUS MO L1",
               "2012 MAR: MAR STATUS MO L2",
               "2012 MAR: MAR STATUS MO L3",
               "2012 MAR: MAR STATUS MO L4",
               "2012 MAR: MAR STATUS MO L5",
               "2012 MAR: MAR STATUS MO L6",
               "2012 MAR: MAR STATUS MO L7",
               "2012 MAR: MAR STATUS MO L8",
               "2012 MAR: MAR STATUS MO L9",
               "2012 MAR: MAR STATUS MO L10",
               "2012 MAR: MAR STATUS MO L11",
               "2012 MAR: MAR STATUS MO L12",
               "2013 MAR: MAR STATUS MO L1",
               "2013 MAR: MAR STATUS MO L2",
               "2013 MAR: MAR STATUS MO L3",
               "2013 MAR: MAR STATUS MO L4",
               "2013 MAR: MAR STATUS MO L5",
               "2013 MAR: MAR STATUS MO L6",
               "2013 MAR: MAR STATUS MO L7",
               "2013 MAR: MAR STATUS MO L8",
               "2013 MAR: MAR STATUS MO L9",
               "2013 MAR: MAR STATUS MO L10",
               "2013 MAR: MAR STATUS MO L11",
               "2013 MAR: MAR STATUS MO L12",
               "2014 MAR: MAR STATUS MO L1",
               "2014 MAR: MAR STATUS MO L2",
               "2014 MAR: MAR STATUS MO L3",
               "2014 MAR: MAR STATUS MO L4",
               "2014 MAR: MAR STATUS MO L5",
               "2014 MAR: MAR STATUS MO L6",
               "2014 MAR: MAR STATUS MO L7",
               "2014 MAR: MAR STATUS MO L8",
               "2014 MAR: MAR STATUS MO L9",
               "2014 MAR: MAR STATUS MO L10",
               "2014 MAR: MAR STATUS MO L11",
               "2014 MAR: MAR STATUS MO L12",
               "2015 MAR: MAR STATUS MO L1",
               "2015 MAR: MAR STATUS MO L2",
               "2015 MAR: MAR STATUS MO L3",
               "2015 MAR: MAR STATUS MO L4",
               "2015 MAR: MAR STATUS MO L5",
               "2015 MAR: MAR STATUS MO L6",
               "2015 MAR: MAR STATUS MO L7",
               "2015 MAR: MAR STATUS MO L8",
               "2015 MAR: MAR STATUS MO L9",
               "2015 MAR: MAR STATUS MO L10",
               "2015 MAR: MAR STATUS MO L11",
               "2015 MAR: MAR STATUS MO L12",
               "2016 MAR: MAR STATUS MO L1",
               "2016 MAR: MAR STATUS MO L2",
               "2016 MAR: MAR STATUS MO L3",
               "2016 MAR: MAR STATUS MO L4",
               "2016 MAR: MAR STATUS MO L5",
               "2016 MAR: MAR STATUS MO L6",
               "2016 MAR: MAR STATUS MO L7",
               "2016 MAR: MAR STATUS MO L8",
               "2016 MAR: MAR STATUS MO L9",
               "2016 MAR: MAR STATUS MO L10",
               "2016 MAR: MAR STATUS MO L11",
               "2016 MAR: MAR STATUS MO L12",
               "2017 MAR: MAR STATUS MO L1",
               "2017 MAR: MAR STATUS MO L2",
               "2017 MAR: MAR STATUS MO L3",
               "2017 MAR: MAR STATUS MO L4",
               "2017 MAR: MAR STATUS MO L5",
               "2017 MAR: MAR STATUS MO L6",
               "2017 MAR: MAR STATUS MO L7",
               "2017 MAR: MAR STATUS MO L8",
               "2017 MAR: MAR STATUS MO L9",
               "2017 MAR: MAR STATUS MO L10",
               "2017 MAR: MAR STATUS MO L11",
               "2017 MAR: MAR STATUS MO L12",
               "2018 MAR: MAR STATUS MO L1",
               "2018 MAR: MAR STATUS MO L2",
               "2018 MAR: MAR STATUS MO L3",
               "2018 MAR: MAR STATUS MO L4",
               "2018 MAR: MAR STATUS MO L5",
               "2018 MAR: MAR STATUS MO L6",
               "2018 MAR: MAR STATUS MO L7",
               "2018 MAR: MAR STATUS MO L8",
               "2018 MAR: MAR STATUS MO L9",
               "2018 MAR: MAR STATUS MO L10",
               "PUBID - YTH ID CODE 1997",
               "KEY!SEX (SYMBOL) 1997",
               "KEY!BDATE M/Y (SYMBOL) 1997",
               "KEY!BDATE M/Y (SYMBOL) 1997",
               "CV_BIO_CHILD_HH 1997",
               "CV_BIO_CHILD_NR 1997",
               "CV_SAMPLE_TYPE 1997",
               "KEY!RACE_ETHNICITY (SYMBOL) 1997",
               "CV_BIO_CHILD_HH 1998",
               "CV_BIO_CHILD_NR 1998",
               "CV_BIO_CHILD_HH 1999",
               "CV_BIO_CHILD_NR 1999",
               "CV_BIO_CHILD_HH 2000",
               "CV_BIO_CHILD_NR 2000",
               "CV_BIO_CHILD_HH 2001",
               "CV_BIO_CHILD_NR 2001",
               "CV_BIO_CHILD_HH 2002",
               "CV_BIO_CHILD_NR 2002",
               "CV_BIO_CHILD_HH 2003",
               "CV_BIO_CHILD_NR 2003",
               "CV_BIO_CHILD_HH 2004",
               "CV_BIO_CHILD_NR 2004",
               "CV_BIO_CHILD_HH 2005",
               "CV_BIO_CHILD_NR 2005",
               "CV_BIO_CHILD_HH 2006",
               "CV_BIO_CHILD_NR 2006",
               "CV_BIO_CHILD_HH 2007",
               "CV_BIO_CHILD_NR 2007",
               "CV_BIO_CHILD_HH 2008",
               "CV_BIO_CHILD_NR 2008",
               "CV_BIO_CHILD_HH 2009",
               "CV_BIO_CHILD_NR 2009",
               "CV_BIO_CHILD_HH 2010",
               "CV_BIO_CHILD_NR 2010",
               "CV_BIO_CHILD_HH 2011",
               "CV_BIO_CHILD_NR 2011",
               "CV_BIO_CHILD_HH 2013",
               "CV_BIO_CHILD_NR 2013",
               "CV_BIO_CHILD_HH 2015",
               "CV_BIO_CHILD_NR 2015",
               "CV_BIO_CHILD_HH 2017",
               "CV_BIO_CHILD_NR 2017"
)


# Use qnames rather than rnums

qnames = function(data) {
  names(data) <- c("MAR_STATUS_1994.01_XRND",
                   "MAR_STATUS_1994.02_XRND",
                   "MAR_STATUS_1994.03_XRND",
                   "MAR_STATUS_1994.04_XRND",
                   "MAR_STATUS_1994.05_XRND",
                   "MAR_STATUS_1994.06_XRND",
                   "MAR_STATUS_1994.07_XRND",
                   "MAR_STATUS_1994.08_XRND",
                   "MAR_STATUS_1994.09_XRND",
                   "MAR_STATUS_1994.10_XRND",
                   "MAR_STATUS_1994.11_XRND",
                   "MAR_STATUS_1994.12_XRND",
                   "MAR_STATUS_1995.01_XRND",
                   "MAR_STATUS_1995.02_XRND",
                   "MAR_STATUS_1995.03_XRND",
                   "MAR_STATUS_1995.04_XRND",
                   "MAR_STATUS_1995.05_XRND",
                   "MAR_STATUS_1995.06_XRND",
                   "MAR_STATUS_1995.07_XRND",
                   "MAR_STATUS_1995.08_XRND",
                   "MAR_STATUS_1995.09_XRND",
                   "MAR_STATUS_1995.10_XRND",
                   "MAR_STATUS_1995.11_XRND",
                   "MAR_STATUS_1995.12_XRND",
                   "MAR_STATUS_1996.01_XRND",
                   "MAR_STATUS_1996.02_XRND",
                   "MAR_STATUS_1996.03_XRND",
                   "MAR_STATUS_1996.04_XRND",
                   "MAR_STATUS_1996.05_XRND",
                   "MAR_STATUS_1996.06_XRND",
                   "MAR_STATUS_1996.07_XRND",
                   "MAR_STATUS_1996.08_XRND",
                   "MAR_STATUS_1996.09_XRND",
                   "MAR_STATUS_1996.10_XRND",
                   "MAR_STATUS_1996.11_XRND",
                   "MAR_STATUS_1996.12_XRND",
                   "MAR_STATUS_1997.01_XRND",
                   "MAR_STATUS_1997.02_XRND",
                   "MAR_STATUS_1997.03_XRND",
                   "MAR_STATUS_1997.04_XRND",
                   "MAR_STATUS_1997.05_XRND",
                   "MAR_STATUS_1997.06_XRND",
                   "MAR_STATUS_1997.07_XRND",
                   "MAR_STATUS_1997.08_XRND",
                   "MAR_STATUS_1997.09_XRND",
                   "MAR_STATUS_1997.10_XRND",
                   "MAR_STATUS_1997.11_XRND",
                   "MAR_STATUS_1997.12_XRND",
                   "MAR_STATUS_1998.01_XRND",
                   "MAR_STATUS_1998.02_XRND",
                   "MAR_STATUS_1998.03_XRND",
                   "MAR_STATUS_1998.04_XRND",
                   "MAR_STATUS_1998.05_XRND",
                   "MAR_STATUS_1998.06_XRND",
                   "MAR_STATUS_1998.07_XRND",
                   "MAR_STATUS_1998.08_XRND",
                   "MAR_STATUS_1998.09_XRND",
                   "MAR_STATUS_1998.10_XRND",
                   "MAR_STATUS_1998.11_XRND",
                   "MAR_STATUS_1998.12_XRND",
                   "MAR_STATUS_1999.01_XRND",
                   "MAR_STATUS_1999.02_XRND",
                   "MAR_STATUS_1999.03_XRND",
                   "MAR_STATUS_1999.04_XRND",
                   "MAR_STATUS_1999.05_XRND",
                   "MAR_STATUS_1999.06_XRND",
                   "MAR_STATUS_1999.07_XRND",
                   "MAR_STATUS_1999.08_XRND",
                   "MAR_STATUS_1999.09_XRND",
                   "MAR_STATUS_1999.10_XRND",
                   "MAR_STATUS_1999.11_XRND",
                   "MAR_STATUS_1999.12_XRND",
                   "MAR_STATUS_2000.01_XRND",
                   "MAR_STATUS_2000.02_XRND",
                   "MAR_STATUS_2000.03_XRND",
                   "MAR_STATUS_2000.04_XRND",
                   "MAR_STATUS_2000.05_XRND",
                   "MAR_STATUS_2000.06_XRND",
                   "MAR_STATUS_2000.07_XRND",
                   "MAR_STATUS_2000.08_XRND",
                   "MAR_STATUS_2000.09_XRND",
                   "MAR_STATUS_2000.10_XRND",
                   "MAR_STATUS_2000.11_XRND",
                   "MAR_STATUS_2000.12_XRND",
                   "MAR_STATUS_2001.01_XRND",
                   "MAR_STATUS_2001.02_XRND",
                   "MAR_STATUS_2001.03_XRND",
                   "MAR_STATUS_2001.04_XRND",
                   "MAR_STATUS_2001.05_XRND",
                   "MAR_STATUS_2001.06_XRND",
                   "MAR_STATUS_2001.07_XRND",
                   "MAR_STATUS_2001.08_XRND",
                   "MAR_STATUS_2001.09_XRND",
                   "MAR_STATUS_2001.10_XRND",
                   "MAR_STATUS_2001.11_XRND",
                   "MAR_STATUS_2001.12_XRND",
                   "MAR_STATUS_2002.01_XRND",
                   "MAR_STATUS_2002.02_XRND",
                   "MAR_STATUS_2002.03_XRND",
                   "MAR_STATUS_2002.04_XRND",
                   "MAR_STATUS_2002.05_XRND",
                   "MAR_STATUS_2002.06_XRND",
                   "MAR_STATUS_2002.07_XRND",
                   "MAR_STATUS_2002.08_XRND",
                   "MAR_STATUS_2002.09_XRND",
                   "MAR_STATUS_2002.10_XRND",
                   "MAR_STATUS_2002.11_XRND",
                   "MAR_STATUS_2002.12_XRND",
                   "MAR_STATUS_2003.01_XRND",
                   "MAR_STATUS_2003.02_XRND",
                   "MAR_STATUS_2003.03_XRND",
                   "MAR_STATUS_2003.04_XRND",
                   "MAR_STATUS_2003.05_XRND",
                   "MAR_STATUS_2003.06_XRND",
                   "MAR_STATUS_2003.07_XRND",
                   "MAR_STATUS_2003.08_XRND",
                   "MAR_STATUS_2003.09_XRND",
                   "MAR_STATUS_2003.10_XRND",
                   "MAR_STATUS_2003.11_XRND",
                   "MAR_STATUS_2003.12_XRND",
                   "MAR_STATUS_2004.01_XRND",
                   "MAR_STATUS_2004.02_XRND",
                   "MAR_STATUS_2004.03_XRND",
                   "MAR_STATUS_2004.04_XRND",
                   "MAR_STATUS_2004.05_XRND",
                   "MAR_STATUS_2004.06_XRND",
                   "MAR_STATUS_2004.07_XRND",
                   "MAR_STATUS_2004.08_XRND",
                   "MAR_STATUS_2004.09_XRND",
                   "MAR_STATUS_2004.10_XRND",
                   "MAR_STATUS_2004.11_XRND",
                   "MAR_STATUS_2004.12_XRND",
                   "MAR_STATUS_2005.01_XRND",
                   "MAR_STATUS_2005.02_XRND",
                   "MAR_STATUS_2005.03_XRND",
                   "MAR_STATUS_2005.04_XRND",
                   "MAR_STATUS_2005.05_XRND",
                   "MAR_STATUS_2005.06_XRND",
                   "MAR_STATUS_2005.07_XRND",
                   "MAR_STATUS_2005.08_XRND",
                   "MAR_STATUS_2005.09_XRND",
                   "MAR_STATUS_2005.10_XRND",
                   "MAR_STATUS_2005.11_XRND",
                   "MAR_STATUS_2005.12_XRND",
                   "MAR_STATUS_2006.01_XRND",
                   "MAR_STATUS_2006.02_XRND",
                   "MAR_STATUS_2006.03_XRND",
                   "MAR_STATUS_2006.04_XRND",
                   "MAR_STATUS_2006.05_XRND",
                   "MAR_STATUS_2006.06_XRND",
                   "MAR_STATUS_2006.07_XRND",
                   "MAR_STATUS_2006.08_XRND",
                   "MAR_STATUS_2006.09_XRND",
                   "MAR_STATUS_2006.10_XRND",
                   "MAR_STATUS_2006.11_XRND",
                   "MAR_STATUS_2006.12_XRND",
                   "MAR_STATUS_2007.01_XRND",
                   "MAR_STATUS_2007.02_XRND",
                   "MAR_STATUS_2007.03_XRND",
                   "MAR_STATUS_2007.04_XRND",
                   "MAR_STATUS_2007.05_XRND",
                   "MAR_STATUS_2007.06_XRND",
                   "MAR_STATUS_2007.07_XRND",
                   "MAR_STATUS_2007.08_XRND",
                   "MAR_STATUS_2007.09_XRND",
                   "MAR_STATUS_2007.10_XRND",
                   "MAR_STATUS_2007.11_XRND",
                   "MAR_STATUS_2007.12_XRND",
                   "MAR_STATUS_2008.01_XRND",
                   "MAR_STATUS_2008.02_XRND",
                   "MAR_STATUS_2008.03_XRND",
                   "MAR_STATUS_2008.04_XRND",
                   "MAR_STATUS_2008.05_XRND",
                   "MAR_STATUS_2008.06_XRND",
                   "MAR_STATUS_2008.07_XRND",
                   "MAR_STATUS_2008.08_XRND",
                   "MAR_STATUS_2008.09_XRND",
                   "MAR_STATUS_2008.10_XRND",
                   "MAR_STATUS_2008.11_XRND",
                   "MAR_STATUS_2008.12_XRND",
                   "MAR_STATUS_2009.01_XRND",
                   "MAR_STATUS_2009.02_XRND",
                   "MAR_STATUS_2009.03_XRND",
                   "MAR_STATUS_2009.04_XRND",
                   "MAR_STATUS_2009.05_XRND",
                   "MAR_STATUS_2009.06_XRND",
                   "MAR_STATUS_2009.07_XRND",
                   "MAR_STATUS_2009.08_XRND",
                   "MAR_STATUS_2009.09_XRND",
                   "MAR_STATUS_2009.10_XRND",
                   "MAR_STATUS_2009.11_XRND",
                   "MAR_STATUS_2009.12_XRND",
                   "MAR_STATUS_2010.01_XRND",
                   "MAR_STATUS_2010.02_XRND",
                   "MAR_STATUS_2010.03_XRND",
                   "MAR_STATUS_2010.04_XRND",
                   "MAR_STATUS_2010.05_XRND",
                   "MAR_STATUS_2010.06_XRND",
                   "MAR_STATUS_2010.07_XRND",
                   "MAR_STATUS_2010.08_XRND",
                   "MAR_STATUS_2010.09_XRND",
                   "MAR_STATUS_2010.10_XRND",
                   "MAR_STATUS_2010.11_XRND",
                   "MAR_STATUS_2010.12_XRND",
                   "MAR_STATUS_2011.01_XRND",
                   "MAR_STATUS_2011.02_XRND",
                   "MAR_STATUS_2011.03_XRND",
                   "MAR_STATUS_2011.04_XRND",
                   "MAR_STATUS_2011.05_XRND",
                   "MAR_STATUS_2011.06_XRND",
                   "MAR_STATUS_2011.07_XRND",
                   "MAR_STATUS_2011.08_XRND",
                   "MAR_STATUS_2011.09_XRND",
                   "MAR_STATUS_2011.10_XRND",
                   "MAR_STATUS_2011.11_XRND",
                   "MAR_STATUS_2011.12_XRND",
                   "MAR_STATUS_2012.01_XRND",
                   "MAR_STATUS_2012.02_XRND",
                   "MAR_STATUS_2012.03_XRND",
                   "MAR_STATUS_2012.04_XRND",
                   "MAR_STATUS_2012.05_XRND",
                   "MAR_STATUS_2012.06_XRND",
                   "MAR_STATUS_2012.07_XRND",
                   "MAR_STATUS_2012.08_XRND",
                   "MAR_STATUS_2012.09_XRND",
                   "MAR_STATUS_2012.10_XRND",
                   "MAR_STATUS_2012.11_XRND",
                   "MAR_STATUS_2012.12_XRND",
                   "MAR_STATUS_2013.01_XRND",
                   "MAR_STATUS_2013.02_XRND",
                   "MAR_STATUS_2013.03_XRND",
                   "MAR_STATUS_2013.04_XRND",
                   "MAR_STATUS_2013.05_XRND",
                   "MAR_STATUS_2013.06_XRND",
                   "MAR_STATUS_2013.07_XRND",
                   "MAR_STATUS_2013.08_XRND",
                   "MAR_STATUS_2013.09_XRND",
                   "MAR_STATUS_2013.10_XRND",
                   "MAR_STATUS_2013.11_XRND",
                   "MAR_STATUS_2013.12_XRND",
                   "MAR_STATUS_2014.01_XRND",
                   "MAR_STATUS_2014.02_XRND",
                   "MAR_STATUS_2014.03_XRND",
                   "MAR_STATUS_2014.04_XRND",
                   "MAR_STATUS_2014.05_XRND",
                   "MAR_STATUS_2014.06_XRND",
                   "MAR_STATUS_2014.07_XRND",
                   "MAR_STATUS_2014.08_XRND",
                   "MAR_STATUS_2014.09_XRND",
                   "MAR_STATUS_2014.10_XRND",
                   "MAR_STATUS_2014.11_XRND",
                   "MAR_STATUS_2014.12_XRND",
                   "MAR_STATUS_2015.01_XRND",
                   "MAR_STATUS_2015.02_XRND",
                   "MAR_STATUS_2015.03_XRND",
                   "MAR_STATUS_2015.04_XRND",
                   "MAR_STATUS_2015.05_XRND",
                   "MAR_STATUS_2015.06_XRND",
                   "MAR_STATUS_2015.07_XRND",
                   "MAR_STATUS_2015.08_XRND",
                   "MAR_STATUS_2015.09_XRND",
                   "MAR_STATUS_2015.10_XRND",
                   "MAR_STATUS_2015.11_XRND",
                   "MAR_STATUS_2015.12_XRND",
                   "MAR_STATUS_2016.01_XRND",
                   "MAR_STATUS_2016.02_XRND",
                   "MAR_STATUS_2016.03_XRND",
                   "MAR_STATUS_2016.04_XRND",
                   "MAR_STATUS_2016.05_XRND",
                   "MAR_STATUS_2016.06_XRND",
                   "MAR_STATUS_2016.07_XRND",
                   "MAR_STATUS_2016.08_XRND",
                   "MAR_STATUS_2016.09_XRND",
                   "MAR_STATUS_2016.10_XRND",
                   "MAR_STATUS_2016.11_XRND",
                   "MAR_STATUS_2016.12_XRND",
                   "MAR_STATUS_2017.01_XRND",
                   "MAR_STATUS_2017.02_XRND",
                   "MAR_STATUS_2017.03_XRND",
                   "MAR_STATUS_2017.04_XRND",
                   "MAR_STATUS_2017.05_XRND",
                   "MAR_STATUS_2017.06_XRND",
                   "MAR_STATUS_2017.07_XRND",
                   "MAR_STATUS_2017.08_XRND",
                   "MAR_STATUS_2017.09_XRND",
                   "MAR_STATUS_2017.10_XRND",
                   "MAR_STATUS_2017.11_XRND",
                   "MAR_STATUS_2017.12_XRND",
                   "MAR_STATUS_2018.01_XRND",
                   "MAR_STATUS_2018.02_XRND",
                   "MAR_STATUS_2018.03_XRND",
                   "MAR_STATUS_2018.04_XRND",
                   "MAR_STATUS_2018.05_XRND",
                   "MAR_STATUS_2018.06_XRND",
                   "MAR_STATUS_2018.07_XRND",
                   "MAR_STATUS_2018.08_XRND",
                   "MAR_STATUS_2018.09_XRND",
                   "MAR_STATUS_2018.10_XRND",
                   "PUBID_1997",
                   "KEY_SEX_1997",
                   "KEY_BDATE_M_1997",
                   "KEY_BDATE_Y_1997",
                   "CV_BIO_CHILD_HH_1997",
                   "CV_BIO_CHILD_NR_1997",
                   "CV_SAMPLE_TYPE_1997",
                   "KEY_RACE_ETHNICITY_1997",
                   "CV_BIO_CHILD_HH_1998",
                   "CV_BIO_CHILD_NR_1998",
                   "CV_BIO_CHILD_HH_1999",
                   "CV_BIO_CHILD_NR_1999",
                   "CV_BIO_CHILD_HH_2000",
                   "CV_BIO_CHILD_NR_2000",
                   "CV_BIO_CHILD_HH_2001",
                   "CV_BIO_CHILD_NR_2001",
                   "CV_BIO_CHILD_HH_2002",
                   "CV_BIO_CHILD_NR_2002",
                   "CV_BIO_CHILD_HH_2003",
                   "CV_BIO_CHILD_NR_2003",
                   "CV_BIO_CHILD_HH_2004",
                   "CV_BIO_CHILD_NR_2004",
                   "CV_BIO_CHILD_HH_2005",
                   "CV_BIO_CHILD_NR_2005",
                   "CV_BIO_CHILD_HH_2006",
                   "CV_BIO_CHILD_NR_2006",
                   "CV_BIO_CHILD_HH_2007",
                   "CV_BIO_CHILD_NR_2007",
                   "CV_BIO_CHILD_HH_2008",
                   "CV_BIO_CHILD_NR_2008",
                   "CV_BIO_CHILD_HH_2009",
                   "CV_BIO_CHILD_NR_2009",
                   "CV_BIO_CHILD_HH_2010",
                   "CV_BIO_CHILD_NR_2010",
                   "CV_BIO_CHILD_HH_2011",
                   "CV_BIO_CHILD_NR_2011",
                   "CV_BIO_CHILD_HH_2013",
                   "CV_BIO_CHILD_NR_2013",
                   "CV_BIO_CHILD_HH_2015",
                   "CV_BIO_CHILD_NR_2015",
                   "CV_BIO_CHILD_HH_2017",
                   "CV_BIO_CHILD_NR_2017")
  return(data)
}


#********************************************************************************************************

# Remove the '#' before the following line to create a data file called "categories" with value labels. 
married_children_cat <- vallabels(married_children)


# Remove the '#' before the following lines to rename variables using Qnames instead of Reference Numbers
married_children <- qnames(married_children)
married_children_cat <- qnames(married_children_cat)

# Produce summaries for the raw (uncategorized) data file
summary(married_children)

# Remove the '#' before the following lines to produce summaries for the "categories" data file.
summary(married_children_cat)

#************************************************************************************************************


work_or_school <- read.table('~/QMSS/Intergenerational_Childcare_Maternal_Wage_Gap/data/NLSY97/1997_work_or_school/work_or_school.dat', sep=' ')
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
categories <- vallabels(work_or_school)

# Remove the '#' before the following lines to rename variables using Qnames instead of Reference Numbers
work_or_school <- qnames(work_or_school)
categories <- qnames(categories)

# Produce summaries for the raw (uncategorized) data file
summary(work_or_school)

# Remove the '#' before the following lines to produce summaries for the "categories" data file.
#categories <- vallabels(work_or_school)
#summary(categories)

#************************************************************************************************************


# educational_attainment}


# Set working directory
# setwd()


educational_attainment <- read.table('/Users/ConnieXu/QMSS/Intergenerational_Childcare_Maternal_Wage_Gap/data/NLSY97/1997_educational_attainment/Educational_Attainment.dat', sep=' ')
names(educational_attainment) <- c('R0000100',
  'R0536300',
  'R0536401',
  'R0536402',
  'R1235800',
  'R1482600',
  'R2563101',
  'R3884701',
  'R5463901',
  'R7227601',
  'S1541501',
  'S2011301',
  'S3812201',
  'S5412600',
  'S7513500',
  'T0013900',
  'T2016000',
  'T3606300',
  'T5206700',
  'T6656500',
  'T8128900',
  'U0008800',
  'U1845400',
  'U3443900')


# Handle missing values

  educational_attainment[educational_attainment == -1] = NA  # Refused 
  educational_attainment[educational_attainment == -2] = NA  # Dont know 
  educational_attainment[educational_attainment == -3] = NA  # Invalid missing 
  educational_attainment[educational_attainment == -4] = NA  # Valid missing 
  educational_attainment[educational_attainment == -5] = NA  # Non-interview 
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
  data$R2563101 <- factor(data$R2563101, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "1ST YEAR COLLEGE",
      "2ND YEAR COLLEGE",
      "3RD YEAR COLLEGE",
      "4TH YEAR COLLEGE",
      "5TH YEAR COLLEGE",
      "6TH YEAR COLLEGE",
      "7TH YEAR COLLEGE",
      "8TH YEAR COLLEGE OR MORE",
      "UNGRADED"))
  data$R3884701 <- factor(data$R3884701, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "1ST YEAR COLLEGE",
      "2ND YEAR COLLEGE",
      "3RD YEAR COLLEGE",
      "4TH YEAR COLLEGE",
      "5TH YEAR COLLEGE",
      "6TH YEAR COLLEGE",
      "7TH YEAR COLLEGE",
      "8TH YEAR COLLEGE OR MORE",
      "UNGRADED"))
  data$R5463901 <- factor(data$R5463901, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "1ST YEAR COLLEGE",
      "2ND YEAR COLLEGE",
      "3RD YEAR COLLEGE",
      "4TH YEAR COLLEGE",
      "5TH YEAR COLLEGE",
      "6TH YEAR COLLEGE",
      "7TH YEAR COLLEGE",
      "8TH YEAR COLLEGE OR MORE",
      "UNGRADED"))
  data$R7227601 <- factor(data$R7227601, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "1ST YEAR COLLEGE",
      "2ND YEAR COLLEGE",
      "3RD YEAR COLLEGE",
      "4TH YEAR COLLEGE",
      "5TH YEAR COLLEGE",
      "6TH YEAR COLLEGE",
      "7TH YEAR COLLEGE",
      "8TH YEAR COLLEGE OR MORE",
      "UNGRADED"))
  data$S1541501 <- factor(data$S1541501, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "1ST YEAR COLLEGE",
      "2ND YEAR COLLEGE",
      "3RD YEAR COLLEGE",
      "4TH YEAR COLLEGE",
      "5TH YEAR COLLEGE",
      "6TH YEAR COLLEGE",
      "7TH YEAR COLLEGE",
      "8TH YEAR COLLEGE OR MORE",
      "UNGRADED"))
  data$S2011301 <- factor(data$S2011301, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "1ST YEAR COLLEGE",
      "2ND YEAR COLLEGE",
      "3RD YEAR COLLEGE",
      "4TH YEAR COLLEGE",
      "5TH YEAR COLLEGE",
      "6TH YEAR COLLEGE",
      "7TH YEAR COLLEGE",
      "8TH YEAR COLLEGE OR MORE",
      "UNGRADED"))
  data$S3812201 <- factor(data$S3812201, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "1ST YEAR COLLEGE",
      "2ND YEAR COLLEGE",
      "3RD YEAR COLLEGE",
      "4TH YEAR COLLEGE",
      "5TH YEAR COLLEGE",
      "6TH YEAR COLLEGE",
      "7TH YEAR COLLEGE",
      "8TH YEAR COLLEGE OR MORE",
      "UNGRADED"))
  data$S5412600 <- factor(data$S5412600, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "1ST YEAR COLLEGE",
      "2ND YEAR COLLEGE",
      "3RD YEAR COLLEGE",
      "4TH YEAR COLLEGE",
      "5TH YEAR COLLEGE",
      "6TH YEAR COLLEGE",
      "7TH YEAR COLLEGE",
      "8TH YEAR COLLEGE OR MORE",
      "UNGRADED"))
  data$S7513500 <- factor(data$S7513500, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "1ST YEAR COLLEGE",
      "2ND YEAR COLLEGE",
      "3RD YEAR COLLEGE",
      "4TH YEAR COLLEGE",
      "5TH YEAR COLLEGE",
      "6TH YEAR COLLEGE",
      "7TH YEAR COLLEGE",
      "8TH YEAR COLLEGE OR MORE",
      "UNGRADED"))
  data$T0013900 <- factor(data$T0013900, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "1ST YEAR COLLEGE",
      "2ND YEAR COLLEGE",
      "3RD YEAR COLLEGE",
      "4TH YEAR COLLEGE",
      "5TH YEAR COLLEGE",
      "6TH YEAR COLLEGE",
      "7TH YEAR COLLEGE",
      "8TH YEAR COLLEGE OR MORE",
      "UNGRADED"))
  data$T2016000 <- factor(data$T2016000, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "1ST YEAR COLLEGE",
      "2ND YEAR COLLEGE",
      "3RD YEAR COLLEGE",
      "4TH YEAR COLLEGE",
      "5TH YEAR COLLEGE",
      "6TH YEAR COLLEGE",
      "7TH YEAR COLLEGE",
      "8TH YEAR COLLEGE OR MORE",
      "UNGRADED"))
  data$T3606300 <- factor(data$T3606300, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "1ST YEAR COLLEGE",
      "2ND YEAR COLLEGE",
      "3RD YEAR COLLEGE",
      "4TH YEAR COLLEGE",
      "5TH YEAR COLLEGE",
      "6TH YEAR COLLEGE",
      "7TH YEAR COLLEGE",
      "8TH YEAR COLLEGE OR MORE",
      "UNGRADED"))
  data$T5206700 <- factor(data$T5206700, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "1ST YEAR COLLEGE",
      "2ND YEAR COLLEGE",
      "3RD YEAR COLLEGE",
      "4TH YEAR COLLEGE",
      "5TH YEAR COLLEGE",
      "6TH YEAR COLLEGE",
      "7TH YEAR COLLEGE",
      "8TH YEAR COLLEGE OR MORE",
      "UNGRADED"))
  data$T6656500 <- factor(data$T6656500, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "1ST YEAR COLLEGE",
      "2ND YEAR COLLEGE",
      "3RD YEAR COLLEGE",
      "4TH YEAR COLLEGE",
      "5TH YEAR COLLEGE",
      "6TH YEAR COLLEGE",
      "7TH YEAR COLLEGE",
      "8TH YEAR COLLEGE OR MORE",
      "UNGRADED"))
  data$T8128900 <- factor(data$T8128900, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "1ST YEAR COLLEGE",
      "2ND YEAR COLLEGE",
      "3RD YEAR COLLEGE",
      "4TH YEAR COLLEGE",
      "5TH YEAR COLLEGE",
      "6TH YEAR COLLEGE",
      "7TH YEAR COLLEGE",
      "8TH YEAR COLLEGE OR MORE",
      "UNGRADED"))
  data$U0008800 <- factor(data$U0008800, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "1ST YEAR COLLEGE",
      "2ND YEAR COLLEGE",
      "3RD YEAR COLLEGE",
      "4TH YEAR COLLEGE",
      "5TH YEAR COLLEGE",
      "6TH YEAR COLLEGE",
      "7TH YEAR COLLEGE",
      "8TH YEAR COLLEGE OR MORE",
      "UNGRADED"))
  data$U1845400 <- factor(data$U1845400, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "1ST YEAR COLLEGE",
      "2ND YEAR COLLEGE",
      "3RD YEAR COLLEGE",
      "4TH YEAR COLLEGE",
      "5TH YEAR COLLEGE",
      "6TH YEAR COLLEGE",
      "7TH YEAR COLLEGE",
      "8TH YEAR COLLEGE OR MORE",
      "UNGRADED"))
  data$U3443900 <- factor(data$U3443900, 
    levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,95.0), 
    labels=c("NONE",
      "1ST GRADE",
      "2ND GRADE",
      "3RD GRADE",
      "4TH GRADE",
      "5TH GRADE",
      "6TH GRADE",
      "7TH GRADE",
      "8TH GRADE",
      "9TH GRADE",
      "10TH GRADE",
      "11TH GRADE",
      "12TH GRADE",
      "1ST YEAR COLLEGE",
      "2ND YEAR COLLEGE",
      "3RD YEAR COLLEGE",
      "4TH YEAR COLLEGE",
      "5TH YEAR COLLEGE",
      "6TH YEAR COLLEGE",
      "7TH YEAR COLLEGE",
      "8TH YEAR COLLEGE OR MORE",
      "UNGRADED"))
  return(data)
}

varlabels <- c("PUBID - YTH ID CODE 1997",
  "KEY!SEX (SYMBOL) 1997",
  "KEY!BDATE M/Y (SYMBOL) 1997",
  "KEY!BDATE M/Y (SYMBOL) 1997",
  "CV_SAMPLE_TYPE 1997",
  "KEY!RACE_ETHNICITY (SYMBOL) 1997",
  "CV_HGC_EVER_EDT 1998",
  "CV_HGC_EVER_EDT 1999",
  "CV_HGC_EVER_EDT 2000",
  "CV_HGC_EVER_EDT 2001",
  "CV_HGC_EVER_EDT 2002",
  "CV_HGC_EVER_EDT 2003",
  "CV_HGC_EVER_EDT 2004",
  "CV_HGC_EVER 2005",
  "CV_HGC_EVER 2006",
  "CV_HGC_EVER 2007",
  "CV_HGC_EVER 2008",
  "CV_HGC_EVER 2009",
  "CV_HGC_EVER 2010",
  "CV_HGC_EVER 2011",
  "CV_HGC_EVER 2013",
  "CV_HGC_EVER 2015",
  "CV_HGC_EVER 2017",
  "CV_HGC_EVER 2019"
)


# Use qnames rather than rnums

qnames = function(data) {
  names(data) <- c("PUBID_1997",
    "KEY_SEX_1997",
    "KEY_BDATE_M_1997",
    "KEY_BDATE_Y_1997",
    "CV_SAMPLE_TYPE_1997",
    "KEY_RACE_ETHNICITY_1997",
    "CV_HGC_EVER_EDT_1998",
    "CV_HGC_EVER_EDT_1999",
    "CV_HGC_EVER_EDT_2000",
    "CV_HGC_EVER_EDT_2001",
    "CV_HGC_EVER_EDT_2002",
    "CV_HGC_EVER_EDT_2003",
    "CV_HGC_EVER_EDT_2004",
    "CV_HGC_EVER_EDT_2005",
    "CV_HGC_EVER_EDT_2006",
    "CV_HGC_EVER_EDT_2007",
    "CV_HGC_EVER_EDT_2008",
    "CV_HGC_EVER_EDT_2009",
    "CV_HGC_EVER_EDT_2010",
    "CV_HGC_EVER_EDT_2011",
    "CV_HGC_EVER_EDT_2013",
    "CV_HGC_EVER_EDT_2015",
    "CV_HGC_EVER_EDT_2017",
    "CV_HGC_EVER_EDT_2019")
  return(data)
}


#********************************************************************************************************

# Remove the '#' before the following line to create a data file called "categories" with value labels. 
educational_attainment_cat <- vallabels(educational_attainment)

# Remove the '#' before the following lines to rename variables using Qnames instead of Reference Numbers
educational_attainment <- qnames(educational_attainment)
educational_attainment_cat <- qnames(educational_attainment_cat)

# Produce summaries for the raw (uncategorized) data file
summary(educational_attainment)

# Remove the '#' before the following lines to produce summaries for the "categories" data file.
#categories <- vallabels(educational_attainment)
summary(educational_attainment_cat
      )

#************************************************************************************************************



# under_6}

# Set working directory
# setwd()


under_6 <- read.table('~/QMSS/Intergenerational_Childcare_Maternal_Wage_Gap/data/NLSY97/1997_under_6/under_6.dat', sep=' ')
names(under_6) <- c('R0000100',
  'R0536300',
  'R0536401',
  'R0536402',
  'R1205600',
  'R1235800',
  'R1482600',
  'R2563900',
  'R3885500',
  'R5464700',
  'R7228400',
  'S1542300',
  'S2012100',
  'S3813600',
  'S5413200',
  'S7514100',
  'T0014500',
  'T2016600',
  'T3606900',
  'T5207300',
  'T6657100',
  'T8129500',
  'U0009300',
  'U1845900',
  'U3444400')


# Handle missing values

  under_6[under_6 == -1] = NA  # Refused 
  under_6[under_6 == -2] = NA  # Dont know 
  under_6[under_6 == -3] = NA  # Invalid missing 
  under_6[under_6 == -4] = NA  # Valid missing 
  under_6[under_6 == -5] = NA  # Non-interview 


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
  data$R1205600[20.0 <= data$R1205600 & data$R1205600 <= 99.0] <- 20.0
  data$R1205600 <- factor(data$R1205600, 
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
      "20 TO 99: 20+"))
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
  data$R2563900[20.0 <= data$R2563900 & data$R2563900 <= 99.0] <- 20.0
  data$R2563900 <- factor(data$R2563900, 
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
      "20 TO 99: 20+"))
  data$R3885500[20.0 <= data$R3885500 & data$R3885500 <= 99.0] <- 20.0
  data$R3885500 <- factor(data$R3885500, 
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
      "20 TO 99: 20+"))
  data$R5464700[20.0 <= data$R5464700 & data$R5464700 <= 99.0] <- 20.0
  data$R5464700 <- factor(data$R5464700, 
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
      "20 TO 99: 20+"))
  data$R7228400[20.0 <= data$R7228400 & data$R7228400 <= 99.0] <- 20.0
  data$R7228400 <- factor(data$R7228400, 
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
      "20 TO 99: 20+"))
  data$S1542300[20.0 <= data$S1542300 & data$S1542300 <= 99.0] <- 20.0
  data$S1542300 <- factor(data$S1542300, 
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
      "20 TO 99: 20+"))
  data$S2012100[20.0 <= data$S2012100 & data$S2012100 <= 99.0] <- 20.0
  data$S2012100 <- factor(data$S2012100, 
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
      "20 TO 99: 20+"))
  data$S3813600[20.0 <= data$S3813600 & data$S3813600 <= 99.0] <- 20.0
  data$S3813600 <- factor(data$S3813600, 
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
      "20 TO 99: 20+"))
  data$S5413200[20.0 <= data$S5413200 & data$S5413200 <= 99.0] <- 20.0
  data$S5413200 <- factor(data$S5413200, 
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
      "20 TO 99: 20+"))
  data$S7514100[20.0 <= data$S7514100 & data$S7514100 <= 99.0] <- 20.0
  data$S7514100 <- factor(data$S7514100, 
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
      "20 TO 99: 20+"))
  data$T0014500[20.0 <= data$T0014500 & data$T0014500 <= 99.0] <- 20.0
  data$T0014500 <- factor(data$T0014500, 
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
      "20 TO 99: 20+"))
  data$T2016600[20.0 <= data$T2016600 & data$T2016600 <= 99.0] <- 20.0
  data$T2016600 <- factor(data$T2016600, 
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
      "20 TO 99: 20+"))
  data$T3606900[20.0 <= data$T3606900 & data$T3606900 <= 99.0] <- 20.0
  data$T3606900 <- factor(data$T3606900, 
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
      "20 TO 99: 20+"))
  data$T5207300[20.0 <= data$T5207300 & data$T5207300 <= 99.0] <- 20.0
  data$T5207300 <- factor(data$T5207300, 
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
      "20 TO 99: 20+"))
  data$T6657100[20.0 <= data$T6657100 & data$T6657100 <= 99.0] <- 20.0
  data$T6657100 <- factor(data$T6657100, 
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
      "20 TO 99: 20+"))
  data$T8129500[20.0 <= data$T8129500 & data$T8129500 <= 99.0] <- 20.0
  data$T8129500 <- factor(data$T8129500, 
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
      "20 TO 99: 20+"))
  data$U0009300[20.0 <= data$U0009300 & data$U0009300 <= 99.0] <- 20.0
  data$U0009300 <- factor(data$U0009300, 
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
      "20 TO 99: 20+"))
  data$U1845900[20.0 <= data$U1845900 & data$U1845900 <= 99.0] <- 20.0
  data$U1845900 <- factor(data$U1845900, 
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
      "20 TO 99: 20+"))
  data$U3444400[20.0 <= data$U3444400 & data$U3444400 <= 99.0] <- 20.0
  data$U3444400 <- factor(data$U3444400, 
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
      "20 TO 99: 20+"))
  return(data)
}

varlabels <- c("PUBID - YTH ID CODE 1997",
  "KEY!SEX (SYMBOL) 1997",
  "KEY!BDATE M/Y (SYMBOL) 1997",
  "KEY!BDATE M/Y (SYMBOL) 1997",
  "CV_HH_UNDER_6 1997",
  "CV_SAMPLE_TYPE 1997",
  "KEY!RACE_ETHNICITY (SYMBOL) 1997",
  "CV_HH_UNDER_6 1998",
  "CV_HH_UNDER_6 1999",
  "CV_HH_UNDER_6 2000",
  "CV_HH_UNDER_6 2001",
  "CV_HH_UNDER_6 2002",
  "CV_HH_UNDER_6 2003",
  "CV_HH_UNDER_6 2004",
  "CV_HH_UNDER_6 2005",
  "CV_HH_UNDER_6 2006",
  "CV_HH_UNDER_6 2007",
  "CV_HH_UNDER_6 2008",
  "CV_HH_UNDER_6 2009",
  "CV_HH_UNDER_6 2010",
  "CV_HH_UNDER_6 2011",
  "CV_HH_UNDER_6 2013",
  "CV_HH_UNDER_6 2015",
  "CV_HH_UNDER_6 2017",
  "CV_HH_UNDER_6 2019"
)


# Use qnames rather than rnums

qnames = function(data) {
  names(data) <- c("PUBID_1997",
    "KEY_SEX_1997",
    "KEY_BDATE_M_1997",
    "KEY_BDATE_Y_1997",
    "CV_HH_UNDER_6_1997",
    "CV_SAMPLE_TYPE_1997",
    "KEY_RACE_ETHNICITY_1997",
    "CV_HH_UNDER_6_1998",
    "CV_HH_UNDER_6_1999",
    "CV_HH_UNDER_6_2000",
    "CV_HH_UNDER_6_2001",
    "CV_HH_UNDER_6_2002",
    "CV_HH_UNDER_6_2003",
    "CV_HH_UNDER_6_2004",
    "CV_HH_UNDER_6_2005",
    "CV_HH_UNDER_6_2006",
    "CV_HH_UNDER_6_2007",
    "CV_HH_UNDER_6_2008",
    "CV_HH_UNDER_6_2009",
    "CV_HH_UNDER_6_2010",
    "CV_HH_UNDER_6_2011",
    "CV_HH_UNDER_6_2013",
    "CV_HH_UNDER_6_2015",
    "CV_HH_UNDER_6_2017",
    "CV_HH_UNDER_6_2019")
  return(data)
}


#********************************************************************************************************

# Remove the '#' before the following line to create a data file called "categories" with value labels. 
categories <- vallabels(under_6)

# Remove the '#' before the following lines to rename variables using Qnames instead of Reference Numbers
under_6 <- qnames(under_6)
categories <- qnames(categories)

# Produce summaries for the raw (uncategorized) data file
summary(under_6)

# Remove the '#' before the following lines to produce summaries for the "categories" data file.
#categories <- vallabels(under_6)
#summary(categories)

#************************************************************************************************************


enrollment <- read.table('~/QMSS/Intergenerational_Childcare_Maternal_Wage_Gap/data/NLSY97/1997_enrollment/enrollment.dat', sep=' ')
names(enrollment) <- c('R0000100',
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

enrollment[enrollment == -1] = NA  # Refused 
enrollment[enrollment == -2] = NA  # Dont know 
enrollment[enrollment == -3] = NA  # Invalid missing 
enrollment[enrollment == -4] = NA  # Valid missing 
enrollment[enrollment == -5] = NA  # Non-interview 


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
categories <- vallabels(enrollment)

# Remove the '#' before the following lines to rename variables using Qnames instead of Reference Numbers
enrollment <- qnames(enrollment)
categories <- qnames(categories)

# Produce summaries for the raw (uncategorized) data file
summary(enrollment)

# Remove the '#' before the following lines to produce summaries for the "categories" data file.
#categories <- vallabels(enrollment)
#summary(categories)

#************************************************************************************************************



# Merge dataframes - different variables were downloaded at different times. 
NLSY <- merge(childcare_nlsy, nlsy_base_data, on=c("PUBID_1997",
                                                   "KEY_SEX_1997",
                                                   "KEY_BDATE_M_1997",
                                                   "KEY_BDATE_Y_1997",
                                                   "CV_SAMPLE_TYPE_1997",
                                                   "KEY_RACE_ETHNICITY_1997"))
NLSY <- merge(childcare_extension, NLSY, on=c("PUBID_1997",
                                                   "KEY_SEX_1997",
                                                   "KEY_BDATE_M_1997",
                                                   "KEY_BDATE_Y_1997",
                                                   "CV_SAMPLE_TYPE_1997",
                                                   "KEY_RACE_ETHNICITY_1997"))
NLSY <- merge(NLSY, married_children, on=c("PUBID_1997",
                                           "KEY_SEX_1997",
                                           "KEY_BDATE_M_1997",
                                           "KEY_BDATE_Y_1997",
                                           "CV_SAMPLE_TYPE_1997",
                                           "KEY_RACE_ETHNICITY_1997"))


NLSY <- merge(NLSY, educational_attainment, on=c("PUBID_1997",
                                           "KEY_SEX_1997",
                                           "KEY_BDATE_M_1997",
                                           "KEY_BDATE_Y_1997",
                                           "CV_SAMPLE_TYPE_1997",
                                           "KEY_RACE_ETHNICITY_1997"))

NLSY <- merge(NLSY, under_6, on=c("PUBID_1997",
                                           "KEY_SEX_1997",
                                           "KEY_BDATE_M_1997",
                                           "KEY_BDATE_Y_1997",
                                           "CV_SAMPLE_TYPE_1997",
                                           "KEY_RACE_ETHNICITY_1997"))

NLSY <- merge(NLSY, enrollment, on=c("PUBID_1997",
                                  "KEY_SEX_1997",
                                  "KEY_BDATE_M_1997",
                                  "KEY_BDATE_Y_1997",
                                  "CV_SAMPLE_TYPE_1997",
                                  "KEY_RACE_ETHNICITY_1997"))
NLSY <- merge(NLSY, work_or_school, on=c("PUBID_1997",
                                     "KEY_SEX_1997",
                                     "KEY_BDATE_M_1997",
                                     "KEY_BDATE_Y_1997",
                                     "CV_SAMPLE_TYPE_1997",
                                     "KEY_RACE_ETHNICITY_1997"))

# Pivots on year by selecting variables with each year suffic and appending them to one another so that we have time series shaped data rather than dat awith multiple columns by ID. 
NLSY_1997 <- NLSY %>% dplyr::select(contains('_1997'))
colnames(NLSY_1997)<-gsub("_1997","",colnames(NLSY_1997))
NLSY_1997 <- NLSY_1997 %>% dplyr::rename('PUBID_1997'='PUBID') %>% dplyr::rename('KEY_SEX_1997'='KEY_SEX') %>% 
  dplyr::rename('KEY_BDATE_M_1997'='KEY_BDATE_M') %>% dplyr::rename('KEY_BDATE_Y_1997'='KEY_BDATE_Y') %>% 
  dplyr::rename('CV_SAMPLE_TYPE_1997'='CV_SAMPLE_TYPE') %>% dplyr::rename('KEY_RACE_ETHNICITY_1997'='KEY_RACE_ETHNICITY') %>% mutate(YEAR = '1997')
  
NLSY_1998 <- NLSY %>% dplyr::select("PUBID_1997",
                             "KEY_SEX_1997",
                             "KEY_BDATE_M_1997",
                             "KEY_BDATE_Y_1997",
                             "CV_SAMPLE_TYPE_1997",
                             "KEY_RACE_ETHNICITY_1997",contains('_1998')) %>% mutate(YEAR = '1998')
colnames(NLSY_1998)<-gsub("_1998","",colnames(NLSY_1998)) 

NLSY_1999 <- NLSY %>% dplyr::select("PUBID_1997",
                             "KEY_SEX_1997",
                             "KEY_BDATE_M_1997",
                             "KEY_BDATE_Y_1997",
                             "CV_SAMPLE_TYPE_1997",
                             "KEY_RACE_ETHNICITY_1997",contains('_1999')) %>% mutate(YEAR = '1999')
colnames(NLSY_1999)<-gsub("_1999","",colnames(NLSY_1999)) 

NLSY_2000 <- NLSY %>% dplyr::select("PUBID_1997",
                             "KEY_SEX_1997",
                             "KEY_BDATE_M_1997",
                             "KEY_BDATE_Y_1997",
                             "CV_SAMPLE_TYPE_1997",
                             "KEY_RACE_ETHNICITY_1997",contains('_2000')) %>% mutate(YEAR = '2000')
colnames(NLSY_2000)<-gsub("_2000","",colnames(NLSY_2000))

NLSY_2001 <- NLSY %>% dplyr::select("PUBID_1997",
                             "KEY_SEX_1997",
                             "KEY_BDATE_M_1997",
                             "KEY_BDATE_Y_1997",
                             "CV_SAMPLE_TYPE_1997",
                             "KEY_RACE_ETHNICITY_1997",contains('_2001')) %>% mutate(YEAR = '2001')
colnames(NLSY_2001)<-gsub("_2001","",colnames(NLSY_2001))

NLSY_2002 <- NLSY %>% dplyr::select("PUBID_1997",
                             "KEY_SEX_1997",
                             "KEY_BDATE_M_1997",
                             "KEY_BDATE_Y_1997",
                             "CV_SAMPLE_TYPE_1997",
                             "KEY_RACE_ETHNICITY_1997",contains('_2002')) %>% mutate(YEAR = '2002')
colnames(NLSY_2002)<-gsub("_2002","",colnames(NLSY_2002)) 

NLSY_2003 <- NLSY %>% dplyr::select("PUBID_1997",
                             "KEY_SEX_1997",
                             "KEY_BDATE_M_1997",
                             "KEY_BDATE_Y_1997",
                             "CV_SAMPLE_TYPE_1997",
                             "KEY_RACE_ETHNICITY_1997",contains('_2003')) %>% mutate(YEAR = '2003')
colnames(NLSY_2003)<-gsub("_2003","",colnames(NLSY_2003)) 
 
NLSY_2004 <- NLSY %>% dplyr::select("PUBID_1997",
                             "KEY_SEX_1997",
                             "KEY_BDATE_M_1997",
                             "KEY_BDATE_Y_1997",
                             "CV_SAMPLE_TYPE_1997",
                             "KEY_RACE_ETHNICITY_1997",contains('_2004')) %>% mutate(YEAR = '2004')
colnames(NLSY_2004)<-gsub("_2004","",colnames(NLSY_2004))

NLSY_2005 <- NLSY %>% dplyr::select("PUBID_1997",
                             "KEY_SEX_1997",
                             "KEY_BDATE_M_1997",
                             "KEY_BDATE_Y_1997",
                             "CV_SAMPLE_TYPE_1997",
                             "KEY_RACE_ETHNICITY_1997",contains('_2005'))%>% mutate(YEAR = '2005')
colnames(NLSY_2005)<-gsub("_2005","",colnames(NLSY_2005)) 

NLSY_2006 <- NLSY %>% dplyr::select("PUBID_1997",
                             "KEY_SEX_1997",
                             "KEY_BDATE_M_1997",
                             "KEY_BDATE_Y_1997",
                             "CV_SAMPLE_TYPE_1997",
                             "KEY_RACE_ETHNICITY_1997",contains('_2006'))%>% mutate(YEAR = '2006')
colnames(NLSY_2006)<-gsub("_2006","",colnames(NLSY_2006)) 

NLSY_2007 <- NLSY %>% dplyr::select("PUBID_1997",
                             "KEY_SEX_1997",
                             "KEY_BDATE_M_1997",
                             "KEY_BDATE_Y_1997",
                             "CV_SAMPLE_TYPE_1997",
                             "KEY_RACE_ETHNICITY_1997",contains('_2007')) %>% mutate(YEAR = '2007')
colnames(NLSY_2007)<-gsub("_2007","",colnames(NLSY_2007))


NLSY_2008 <- NLSY %>% dplyr::select("PUBID_1997",
                             "KEY_SEX_1997",
                             "KEY_BDATE_M_1997",
                             "KEY_BDATE_Y_1997",
                             "CV_SAMPLE_TYPE_1997",
                             "KEY_RACE_ETHNICITY_1997",contains('_2008')) %>% mutate(YEAR = '2008')
colnames(NLSY_2008)<-gsub("_2008","",colnames(NLSY_2008))

NLSY_2009 <- NLSY %>% dplyr::select("PUBID_1997",
                             "KEY_SEX_1997",
                             "KEY_BDATE_M_1997",
                             "KEY_BDATE_Y_1997",
                             "CV_SAMPLE_TYPE_1997",
                             "KEY_RACE_ETHNICITY_1997",contains('_2009')) %>% mutate(YEAR = '2009')
colnames(NLSY_2009)<-gsub("_2009","",colnames(NLSY_2009))


NLSY_2010 <- NLSY %>% dplyr::select("PUBID_1997",
                             "KEY_SEX_1997",
                             "KEY_BDATE_M_1997",
                             "KEY_BDATE_Y_1997",
                             "CV_SAMPLE_TYPE_1997",
                             "KEY_RACE_ETHNICITY_1997",contains('_2010')) %>% mutate(YEAR = '2010')
colnames(NLSY_2010)<-gsub("_2010","",colnames(NLSY_2010))

NLSY_2011 <- NLSY %>% dplyr::select("PUBID_1997",
                             "KEY_SEX_1997",
                             "KEY_BDATE_M_1997",
                             "KEY_BDATE_Y_1997",
                             "CV_SAMPLE_TYPE_1997",
                             "KEY_RACE_ETHNICITY_1997",contains('_2011')) %>% mutate(YEAR = '2011')
colnames(NLSY_2011)<-gsub("_2011","",colnames(NLSY_2011))

NLSY_2012 <- NLSY %>% dplyr::select("PUBID_1997",
                             "KEY_SEX_1997",
                             "KEY_BDATE_M_1997",
                             "KEY_BDATE_Y_1997",
                             "CV_SAMPLE_TYPE_1997",
                             "KEY_RACE_ETHNICITY_1997",contains('_2012')) %>% mutate(YEAR = '2012')
colnames(NLSY_2012)<-gsub("_2012","",colnames(NLSY_2012))

NLSY_2013 <- NLSY %>% dplyr::select("PUBID_1997",
                             "KEY_SEX_1997",
                             "KEY_BDATE_M_1997",
                             "KEY_BDATE_Y_1997",
                             "CV_SAMPLE_TYPE_1997",
                             "KEY_RACE_ETHNICITY_1997",contains('_2013')) %>% mutate(YEAR = '2013')

colnames(NLSY_2013)<-gsub("_2013","",colnames(NLSY_2013))

NLSY_2014 <- NLSY %>% dplyr::select("PUBID_1997",
                             "KEY_SEX_1997",
                             "KEY_BDATE_M_1997",
                             "KEY_BDATE_Y_1997",
                             "CV_SAMPLE_TYPE_1997",
                             "KEY_RACE_ETHNICITY_1997",contains('_2014')) %>% mutate(YEAR = '2014')
colnames(NLSY_2014)<-gsub("_2014","",colnames(NLSY_2014))

NLSY_2015 <- NLSY %>% dplyr::select("PUBID_1997",
                             "KEY_SEX_1997",
                             "KEY_BDATE_M_1997",
                             "KEY_BDATE_Y_1997",
                             "CV_SAMPLE_TYPE_1997",
                             "KEY_RACE_ETHNICITY_1997",contains('_2015')) %>% mutate(YEAR = '2015')

colnames(NLSY_2015)<-gsub("_2015","",colnames(NLSY_2015))

NLSY_2016 <- NLSY %>% dplyr::select("PUBID_1997",
                             "KEY_SEX_1997",
                             "KEY_BDATE_M_1997",
                             "KEY_BDATE_Y_1997",
                             "CV_SAMPLE_TYPE_1997",
                             "KEY_RACE_ETHNICITY_1997",contains('_2016')) %>% mutate(YEAR = '2016')
colnames(NLSY_2016)<-gsub("_2016","",colnames(NLSY_2016))

NLSY_2017 <- NLSY %>% dplyr::select("PUBID_1997",
                             "KEY_SEX_1997",
                             "KEY_BDATE_M_1997",
                             "KEY_BDATE_Y_1997",
                             "CV_SAMPLE_TYPE_1997",
                             "KEY_RACE_ETHNICITY_1997",contains('_2017')) %>% mutate(YEAR = '2017')
colnames(NLSY_2017)<-gsub("_2017","",colnames(NLSY_2017))
NLSY_new = bind_rows(NLSY_1997,NLSY_1998,NLSY_1999,NLSY_2000,NLSY_2001,NLSY_2002,NLSY_2003,NLSY_2004,NLSY_2005,
                     NLSY_2006,NLSY_2007,NLSY_2008,NLSY_2009,NLSY_2010,NLSY_2011,NLSY_2012,NLSY_2013,NLSY_2014,
                     NLSY_2015,NLSY_2016,NLSY_2017)
tail(NLSY_new$year)

NLSY_old <- read.csv('~/QMSS/Intergenerational_Childcare_Maternal_Wage_Gap/data/NLSY97/NLSY_Reshaped.csv')
head(NLSY_old)
head(NLSY_new)
# NLSY <- merge(NLSY_old, NLSY_new, on=c("PUBID_1997",
#                                          "KEY_SEX_1997",
#                                          "KEY_BDATE_M_1997",
#                                          "KEY_BDATE_Y_1997",
#                                          "CV_SAMPLE_TYPE_1997",
#                                          "KEY_RACE_ETHNICITY_1997","year"), all=TRUE)

write.csv(NLSY_new,'~/QMSS/Intergenerational_Childcare_Maternal_Wage_Gap/data/NLSY_Reshaped_new.csv')

save(NLSY_new, file = "~/QMSS/Intergenerational_Childcare_Maternal_Wage_Gap/data/NLSY_Reshaped_new.RData") 


a<- colnames(NLSY_old)
b <-colnames(NLSY_new)
NLSY_new
setdiff(a, b)


load("~/QMSS/Intergenerational_Childcare_Maternal_Wage_Gap/data/NLSY_Reshaped_new.RData")
# NLSY_new_shortened removes questions about detailed racial origin.
NLSY_new_shortened <- NLSY_new %>% dplyr::select(-contains("P2-012")) %>% dplyr::select(-contains("P2-048"))
colnames(NLSY_new_shortened)
save(NLSY_new_shortened, file = "~/QMSS/Intergenerational_Childcare_Maternal_Wage_Gap/data/NLSY_new_shortened.RData") 

unique(NLSY_new_shortened$YEAR)
