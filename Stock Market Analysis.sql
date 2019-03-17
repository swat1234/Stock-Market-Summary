#************************************ Creation Tables for all the 6 stocks and importing the data**************************************
#Creating the new assignment Database

create database assignment;
use assignment;
# Creation of Bajaj Auto Table

CREATE TABLE bajaj (
    `Date` VARCHAR(30) NOT NULL,
    `Open Price` DOUBLE NOT NULL,
    `High Price` DOUBLE NOT NULL,
    `Low Price` DOUBLE NOT NULL,
    `Close Price` DOUBLE NOT NULL,
    `WAP` DOUBLE NOT NULL,
    `No.of Shares` INT NOT NULL,
    `No. of Trades` INT NOT NULL,
    `Total Turnover (Rs.)` DOUBLE NOT NULL,
    `Deliverable Quantity` DOUBLE NULL,
    `% Deli. Qty to Traded Qty` DOUBLE NULL,
    `Spread High-Low` DOUBLE NULL,
    `Spread Close-Open` VARCHAR(30)
   );
   
 # Loading of Bajaj Auto.csv file into SQL Table
 
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Bajaj Auto.csv' 
INTO TABLE bajaj 
FIELDS TERMINATED BY ','  
          OPTIONALLY ENCLOSED BY '"' 
          LINES TERMINATED BY '\n' 
          IGNORE 1 ROWS 
(@`Date`,@`Open Price`, @`High Price`, @`Low Price`, @`Close Price`, @WAP, @`No.of Shares`, @`No. of Trades`, @`Total Turnover (Rs.)`, @`Deliverable Quantity`, @`% Deli. Qty to Traded Qty`, @`Spread High-Low`,@`Spread Close-Open`) 
       SET 
       `Date` = STR_TO_DATE(@`Date`,'%d-%M-%Y'),
       `Open Price` = IF(@`Open Price` = '', NULL, @`Open Price`), 
       `High Price` = IF(@`High Price` = '', NULL, @`High Price`), 
		`Low Price` = IF(@`Low Price` = '', NULL, @`Low Price`), 
       `Close Price` = IF(@`Close Price` = '', NULL, @`Close Price`),
       WAP = IF(@WAP = '', NULL, @WAP),
       `No.of Shares` = IF(@`No.of Shares` = '', NULL, @`No.of Shares`),
       `No. of Trades` = IF(@`No. of Trades` = '', NULL, @`No. of Trades`),
       `Total Turnover (Rs.)` = IF(@`Total Turnover (Rs.)` = '', NULL, @`Total Turnover (Rs.)`),
       `Deliverable Quantity` = IF(@`Deliverable Quantity` = '', NULL, @`Deliverable Quantity`), 
       `% Deli. Qty to Traded Qty` = IF(@`% Deli. Qty to Traded Qty` = '', NULL, @`% Deli. Qty to Traded Qty`),
       `Spread High-Low` = IF(@`Spread High-Low` = '', NULL, @`Spread High-Low`),
       `Spread Close-Open` = IF(@`Spread Close-Open` = '', NULL, @`Spread Close-Open`);

# Creation of Eicher Motors Table

CREATE TABLE Eicher (
    `Date` VARCHAR(30) NOT NULL,
    `Open Price` DOUBLE NOT NULL,
    `High Price` DOUBLE NOT NULL,
    `Low Price` DOUBLE NOT NULL,
    `Close Price` DOUBLE NOT NULL,
    `WAP` DOUBLE NOT NULL,
    `No.of Shares` INT NOT NULL,
    `No. of Trades` INT NOT NULL,
    `Total Turnover (Rs.)` DOUBLE NOT NULL,
    `Deliverable Quantity` DOUBLE NULL,
    `% Deli. Qty to Traded Qty` DOUBLE NULL,
    `Spread High-Low` DOUBLE NULL,
    `Spread Close-Open` VARCHAR(30)
   );

# Loading of Eicher Motors.csv file into SQL Table Eicher

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Eicher Motors.csv' 
INTO TABLE Eicher 
FIELDS TERMINATED BY ','  
          OPTIONALLY ENCLOSED BY '"' 
          LINES TERMINATED BY '\n' 
          IGNORE 1 ROWS 
(@`Date`,@`Open Price`, @`High Price`, @`Low Price`, @`Close Price`, @WAP, @`No.of Shares`, @`No. of Trades`, @`Total Turnover (Rs.)`, @`Deliverable Quantity`, @`% Deli. Qty to Traded Qty`, @`Spread High-Low`,@`Spread Close-Open`) 
       SET 
       `Date` = STR_TO_DATE(@`Date`,'%d-%M-%Y'),
       `Open Price` = IF(@`Open Price` = '', NULL, @`Open Price`), 
       `High Price` = IF(@`High Price` = '', NULL, @`High Price`), 
		`Low Price` = IF(@`Low Price` = '', NULL, @`Low Price`), 
       `Close Price` = IF(@`Close Price` = '', NULL, @`Close Price`),
       WAP = IF(@WAP = '', NULL, @WAP),
       `No.of Shares` = IF(@`No.of Shares` = '', NULL, @`No.of Shares`),
       `No. of Trades` = IF(@`No. of Trades` = '', NULL, @`No. of Trades`),
       `Total Turnover (Rs.)` = IF(@`Total Turnover (Rs.)` = '', NULL, @`Total Turnover (Rs.)`),
       `Deliverable Quantity` = IF(@`Deliverable Quantity` = '', NULL, @`Deliverable Quantity`), 
       `% Deli. Qty to Traded Qty` = IF(@`% Deli. Qty to Traded Qty` = '', NULL, @`% Deli. Qty to Traded Qty`),
       `Spread High-Low` = IF(@`Spread High-Low` = '', NULL, @`Spread High-Low`),
       `Spread Close-Open` = IF(@`Spread Close-Open` = '', NULL, @`Spread Close-Open`);
         
# Creation of Hero Motorcorp Table

CREATE TABLE Hero (
    `Date` VARCHAR(30) NOT NULL,
    `Open Price` DOUBLE NOT NULL,
    `High Price` DOUBLE NOT NULL,
    `Low Price` DOUBLE NOT NULL,
    `Close Price` DOUBLE NOT NULL,
    `WAP` DOUBLE NOT NULL,
    `No.of Shares` INT NOT NULL,
    `No. of Trades` INT NOT NULL,
    `Total Turnover (Rs.)` DOUBLE NOT NULL,
    `Deliverable Quantity` DOUBLE NULL,
    `% Deli. Qty to Traded Qty` DOUBLE NULL,
    `Spread High-Low` DOUBLE NULL,
    `Spread Close-Open` VARCHAR(30)
   );
   
# Loading of Hero Motorcorp.csv file into SQL Table
   
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Hero Motocorp.csv' 
INTO TABLE Hero 
FIELDS TERMINATED BY ','  
          OPTIONALLY ENCLOSED BY '"' 
          LINES TERMINATED BY '\n' 
          IGNORE 1 ROWS 
(@`Date`,@`Open Price`, @`High Price`, @`Low Price`, @`Close Price`, @WAP, @`No.of Shares`, @`No. of Trades`, @`Total Turnover (Rs.)`, @`Deliverable Quantity`, @`% Deli. Qty to Traded Qty`, @`Spread High-Low`,@`Spread Close-Open`) 
       SET 
       `Date` = STR_TO_DATE(@`Date`,'%d-%M-%Y'),
       `Open Price` = IF(@`Open Price` = '', NULL, @`Open Price`), 
       `High Price` = IF(@`High Price` = '', NULL, @`High Price`), 
		`Low Price` = IF(@`Low Price` = '', NULL, @`Low Price`), 
       `Close Price` = IF(@`Close Price` = '', NULL, @`Close Price`),
       WAP = IF(@WAP = '', NULL, @WAP),
       `No.of Shares` = IF(@`No.of Shares` = '', NULL, @`No.of Shares`),
       `No. of Trades` = IF(@`No. of Trades` = '', NULL, @`No. of Trades`),
       `Total Turnover (Rs.)` = IF(@`Total Turnover (Rs.)` = '', NULL, @`Total Turnover (Rs.)`),
       `Deliverable Quantity` = IF(@`Deliverable Quantity` = '', NULL, @`Deliverable Quantity`), 
       `% Deli. Qty to Traded Qty` = IF(@`% Deli. Qty to Traded Qty` = '', NULL, @`% Deli. Qty to Traded Qty`),
       `Spread High-Low` = IF(@`Spread High-Low` = '', NULL, @`Spread High-Low`),
       `Spread Close-Open` = IF(@`Spread Close-Open` = '', NULL, @`Spread Close-Open`);
       
# Creation of Infosys Table

CREATE TABLE Infosys (
    `Date` VARCHAR(30) NOT NULL,
    `Open Price` DOUBLE NOT NULL,
    `High Price` DOUBLE NOT NULL,
    `Low Price` DOUBLE NOT NULL,
    `Close Price` DOUBLE NOT NULL,
    `WAP` DOUBLE NOT NULL,
    `No.of Shares` INT NOT NULL,
    `No. of Trades` INT NOT NULL,
    `Total Turnover (Rs.)` DOUBLE NOT NULL,
    `Deliverable Quantity` DOUBLE NULL,
    `% Deli. Qty to Traded Qty` DOUBLE NULL,
    `Spread High-Low` DOUBLE NULL,
    `Spread Close-Open` VARCHAR(30)
   );

# Loading of Infosys.csv data into SQL Table
   
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Infosys.csv' 
INTO TABLE Infosys 
FIELDS TERMINATED BY ','  
          OPTIONALLY ENCLOSED BY '"' 
          LINES TERMINATED BY '\n' 
          IGNORE 1 ROWS 
(@`Date`,@`Open Price`, @`High Price`, @`Low Price`, @`Close Price`, @WAP, @`No.of Shares`, @`No. of Trades`, @`Total Turnover (Rs.)`, @`Deliverable Quantity`, @`% Deli. Qty to Traded Qty`, @`Spread High-Low`,@`Spread Close-Open`) 
       SET 
       `Date` = STR_TO_DATE(@`Date`,'%d-%M-%Y'),
       `Open Price` = IF(@`Open Price` = '', NULL, @`Open Price`), 
       `High Price` = IF(@`High Price` = '', NULL, @`High Price`), 
		`Low Price` = IF(@`Low Price` = '', NULL, @`Low Price`), 
       `Close Price` = IF(@`Close Price` = '', NULL, @`Close Price`),
       WAP = IF(@WAP = '', NULL, @WAP),
       `No.of Shares` = IF(@`No.of Shares` = '', NULL, @`No.of Shares`),
       `No. of Trades` = IF(@`No. of Trades` = '', NULL, @`No. of Trades`),
       `Total Turnover (Rs.)` = IF(@`Total Turnover (Rs.)` = '', NULL, @`Total Turnover (Rs.)`),
       `Deliverable Quantity` = IF(@`Deliverable Quantity` = '', NULL, @`Deliverable Quantity`), 
       `% Deli. Qty to Traded Qty` = IF(@`% Deli. Qty to Traded Qty` = '', NULL, @`% Deli. Qty to Traded Qty`),
       `Spread High-Low` = IF(@`Spread High-Low` = '', NULL, @`Spread High-Low`),
       `Spread Close-Open` = IF(@`Spread Close-Open` = '', NULL, @`Spread Close-Open`);
       
# Creation of TCS Table

CREATE TABLE TCS (
    `Date` VARCHAR(30) NOT NULL,
    `Open Price` DOUBLE NOT NULL,
    `High Price` DOUBLE NOT NULL,
    `Low Price` DOUBLE NOT NULL,
    `Close Price` DOUBLE NOT NULL,
    `WAP` DOUBLE NOT NULL,
    `No.of Shares` INT NOT NULL,
    `No. of Trades` INT NOT NULL,
    `Total Turnover (Rs.)` DOUBLE NOT NULL,
    `Deliverable Quantity` DOUBLE NULL,
    `% Deli. Qty to Traded Qty` DOUBLE NULL,
    `Spread High-Low` DOUBLE NULL,
    `Spread Close-Open` VARCHAR(30)
   );
   
# Loading of TCS.csv data into SQL Table

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/TCS.csv' 
INTO TABLE TCS
FIELDS TERMINATED BY ','  
          OPTIONALLY ENCLOSED BY '"' 
          LINES TERMINATED BY '\n' 
          IGNORE 1 ROWS 
(@`Date`,@`Open Price`, @`High Price`, @`Low Price`, @`Close Price`, @WAP, @`No.of Shares`, @`No. of Trades`, @`Total Turnover (Rs.)`, @`Deliverable Quantity`, @`% Deli. Qty to Traded Qty`, @`Spread High-Low`,@`Spread Close-Open`) 
       SET 
       `Date` = STR_TO_DATE(@`Date`,'%d-%M-%Y'),
       `Open Price` = IF(@`Open Price` = '', NULL, @`Open Price`), 
       `High Price` = IF(@`High Price` = '', NULL, @`High Price`), 
		`Low Price` = IF(@`Low Price` = '', NULL, @`Low Price`), 
       `Close Price` = IF(@`Close Price` = '', NULL, @`Close Price`),
       WAP = IF(@WAP = '', NULL, @WAP),
       `No.of Shares` = IF(@`No.of Shares` = '', NULL, @`No.of Shares`),
       `No. of Trades` = IF(@`No. of Trades` = '', NULL, @`No. of Trades`),
       `Total Turnover (Rs.)` = IF(@`Total Turnover (Rs.)` = '', NULL, @`Total Turnover (Rs.)`),
       `Deliverable Quantity` = IF(@`Deliverable Quantity` = '', NULL, @`Deliverable Quantity`), 
       `% Deli. Qty to Traded Qty` = IF(@`% Deli. Qty to Traded Qty` = '', NULL, @`% Deli. Qty to Traded Qty`),
       `Spread High-Low` = IF(@`Spread High-Low` = '', NULL, @`Spread High-Low`),
       `Spread Close-Open` = IF(@`Spread Close-Open` = '', NULL, @`Spread Close-Open`);
       
# Creation of TVS Table

CREATE TABLE TVS (
    `Date` VARCHAR(30) NOT NULL,
    `Open Price` DOUBLE NOT NULL,
    `High Price` DOUBLE NOT NULL,
    `Low Price` DOUBLE NOT NULL,
    `Close Price` DOUBLE NOT NULL,
    `WAP` DOUBLE NOT NULL,
    `No.of Shares` INT NOT NULL,
    `No. of Trades` INT NOT NULL,
    `Total Turnover (Rs.)` DOUBLE NOT NULL,
    `Deliverable Quantity` DOUBLE NULL,
    `% Deli. Qty to Traded Qty` DOUBLE NULL,
    `Spread High-Low` DOUBLE NULL,
    `Spread Close-Open` VARCHAR(30)
   );
   
# Loading of TVS Motors.csv data into SQL   

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/TVS Motors.csv' 
INTO TABLE TVS
FIELDS TERMINATED BY ','  
          OPTIONALLY ENCLOSED BY '"' 
          LINES TERMINATED BY '\n' 
          IGNORE 1 ROWS 
(@`Date`,@`Open Price`, @`High Price`, @`Low Price`, @`Close Price`, @WAP, @`No.of Shares`, @`No. of Trades`, @`Total Turnover (Rs.)`, @`Deliverable Quantity`, @`% Deli. Qty to Traded Qty`, @`Spread High-Low`,@`Spread Close-Open`) 
       SET 
       `Date` = STR_TO_DATE(@`Date`,'%d-%M-%Y'),
       `Open Price` = IF(@`Open Price` = '', NULL, @`Open Price`), 
       `High Price` = IF(@`High Price` = '', NULL, @`High Price`), 
		`Low Price` = IF(@`Low Price` = '', NULL, @`Low Price`), 
       `Close Price` = IF(@`Close Price` = '', NULL, @`Close Price`),
       WAP = IF(@WAP = '', NULL, @WAP),
       `No.of Shares` = IF(@`No.of Shares` = '', NULL, @`No.of Shares`),
       `No. of Trades` = IF(@`No. of Trades` = '', NULL, @`No. of Trades`),
       `Total Turnover (Rs.)` = IF(@`Total Turnover (Rs.)` = '', NULL, @`Total Turnover (Rs.)`),
       `Deliverable Quantity` = IF(@`Deliverable Quantity` = '', NULL, @`Deliverable Quantity`), 
       `% Deli. Qty to Traded Qty` = IF(@`% Deli. Qty to Traded Qty` = '', NULL, @`% Deli. Qty to Traded Qty`),
       `Spread High-Low` = IF(@`Spread High-Low` = '', NULL, @`Spread High-Low`),
       `Spread Close-Open` = IF(@`Spread Close-Open` = '', NULL, @`Spread Close-Open`);


# 1. Creation of tables containing the date, close price, 20 Day MA and 50 Day MA for all stocks

#  Creation of 'bajaj1'

create table bajaj1 as 
WITH MA (`Date`, `Close Price`, RowNumber, `20 Day MA`,`50 Day MA`)
AS
(
SELECT `Date`,
       `Close Price`,
       ROW_NUMBER() OVER (ORDER BY `Date` ASC) RowNumber,
       AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 19 PRECEDING) AS `20 Day MA`,
       AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 49 PRECEDING) AS `50 Day MA`
FROM   bajaj
)
SELECT `Date`,
       `Close Price`,
       IF(RowNumber > 19, `20 Day MA`, NULL) `20 Day MA`,
       IF(RowNumber > 49, `50 Day MA`, NULL) `50 Day MA`
FROM   MA
ORDER BY `Date`;

#  Creation of 'eicher1'

create table eicher1 as 
WITH MA (`Date`, `Close Price`, RowNumber, `20 Day MA`,`50 Day MA`)
AS
(
SELECT `Date`,
       `Close Price`,
       ROW_NUMBER() OVER (ORDER BY `Date` ASC) RowNumber,
       AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 19 PRECEDING) AS `20 Day MA`,
       AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 49 PRECEDING) AS `50 Day MA`
FROM  eicher
)
SELECT `Date`,
       `Close Price`,
       IF(RowNumber > 19, `20 Day MA`, NULL) `20 Day MA`,
       IF(RowNumber > 49, `50 Day MA`, NULL) `50 Day MA`
FROM   MA
ORDER BY `Date`;

#  Creation of 'hero1'

create table hero1 as 
WITH MA (`Date`, `Close Price`, RowNumber, `20 Day MA`,`50 Day MA`)
AS
(
SELECT `Date`,
       `Close Price`,
       ROW_NUMBER() OVER (ORDER BY `Date` ASC) RowNumber,
       AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 19 PRECEDING) AS `20 Day MA`,
       AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 49 PRECEDING) AS `50 Day MA`
FROM   hero
)
SELECT `Date`,
       `Close Price`,
       IF(RowNumber > 19, `20 Day MA`, NULL) `20 Day MA`,
       IF(RowNumber > 49, `50 Day MA`, NULL) `50 Day MA`
FROM   MA
ORDER BY `Date`;

#  Creation of 'infosys1'

create table infosys1 as 
WITH MA (`Date`, `Close Price`, RowNumber, `20 Day MA`,`50 Day MA`)
AS
(
SELECT `Date`,
       `Close Price`,
       ROW_NUMBER() OVER (ORDER BY `Date` ASC) RowNumber,
       AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 19 PRECEDING) AS `20 Day MA`,
       AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 49 PRECEDING) AS `50 Day MA`
FROM   infosys
)
SELECT `Date`,
       `Close Price`,
       IF(RowNumber > 19, `20 Day MA`, NULL) `20 Day MA`,
       IF(RowNumber > 49, `50 Day MA`, NULL) `50 Day MA`
FROM   MA
ORDER BY `Date`;

#  Creation of 'tcs1'

create table tcs1 as 
WITH MA (`Date`, `Close Price`, RowNumber, `20 Day MA`,`50 Day MA`)
AS
(
SELECT `Date`,
       `Close Price`,
       ROW_NUMBER() OVER (ORDER BY `Date` ASC) RowNumber,
       AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 19 PRECEDING) AS `20 Day MA`,
       AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 49 PRECEDING) AS `50 Day MA`
FROM   tcs
)
SELECT `Date`,
       `Close Price`,
       IF(RowNumber > 19, `20 Day MA`, NULL) `20 Day MA`,
       IF(RowNumber > 49, `50 Day MA`, NULL) `50 Day MA`
FROM   MA
ORDER BY `Date`;

#  Creation of 'tvs1'

create table tvs1 as 
WITH MA (`Date`, `Close Price`, RowNumber, `20 Day MA`,`50 Day MA`)
AS
(
SELECT `Date`,
       `Close Price`,
       ROW_NUMBER() OVER (ORDER BY `Date` ASC) RowNumber,
       AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 19 PRECEDING) AS `20 Day MA`,
       AVG(`Close Price`) OVER (ORDER BY `Date` ASC ROWS 49 PRECEDING) AS `50 Day MA`
FROM   tvs
)
SELECT `Date`,
       `Close Price`,
       IF(RowNumber > 19, `20 Day MA`, NULL) `20 Day MA`,
       IF(RowNumber > 49, `50 Day MA`, NULL) `50 Day MA`
FROM   MA
ORDER BY `Date`;


# 2. Creating a Master Table containing the date and close price of all the six stocks (with stock names as the column headers for the close price)
      
create table `master` as        
(select a.`Date` , a.`Close Price` as bajaj, b.`Close Price` as TCS,
c.`Close Price` as TVS, d.`Close Price` as Infosys,
e.`Close Price` as Eicher, 
f.`Close Price` as Hero
from bajaj a join TCS b  on a.`Date` = b.`Date` 
join TVS c on a.`Date` = c.`Date`
join Infosys d on a.`Date` = d.`Date`
join Eicher e on e.`Date` = a.`Date`
join Hero f on f.`Date` = a.`Date`
 order by a.`Date` );     

# 3. Generating BUY, SELL and HOLD Signals and storing in the new table

# creation of bajaj2

CREATE table bajaj2
WITH MA (`Date`, `Close Price`, `20 Day MA`,`50 Day MA`, `20DayMAprevious`, `50DayMAprevious`)
AS
(
SELECT *,
       Lag(`20 Day MA`, 1) OVER(ORDER BY `Date`) as `20DayMAprevious`,
       Lag(`50 Day MA`, 1) OVER(ORDER BY `Date`) as `50DayMAprevious`
FROM   bajaj1
)
SELECT `Date`,
       `Close Price`,
       CASE
WHEN ((`20DayMAprevious` < `50DayMAprevious`) && (`20 Day MA` > `50 Day MA` ))THEN 'Buy'
WHEN ((`20DayMAprevious` > `50DayMAprevious`) && (`20 Day MA` < `50 Day MA`)) THEN 'Sell'
ELSE 'Hold' END as "Signal"
      
FROM   MA
ORDER BY `Date`;

# Creation of Eicher2

CREATE table eicher2
WITH MA (`Date`, `Close Price`, `20 Day MA`,`50 Day MA`, `20DayMAprevious`, `50DayMAprevious`)
AS
(
SELECT *,
       Lag(`20 Day MA`, 1) OVER(ORDER BY `Date`) as `20DayMAprevious`,
       Lag(`50 Day MA`, 1) OVER(ORDER BY `Date`) as `50DayMAprevious`
FROM   eicher1
)
SELECT `Date`,
       `Close Price`,
       CASE
WHEN ((`20DayMAprevious` < `50DayMAprevious`) && (`20 Day MA` > `50 Day MA` ))THEN 'Buy'
WHEN ((`20DayMAprevious` > `50DayMAprevious`) && (`20 Day MA` < `50 Day MA`)) THEN 'Sell'
ELSE 'Hold' END as "Signal"
      
FROM   MA
ORDER BY `Date`; 

# Creation of Hero2

CREATE table hero2
WITH MA (`Date`, `Close Price`, `20 Day MA`,`50 Day MA`, `20DayMAprevious`, `50DayMAprevious`)
AS
(
SELECT *,
       Lag(`20 Day MA`, 1) OVER(ORDER BY `Date`) as `20DayMAprevious`,
       Lag(`50 Day MA`, 1) OVER(ORDER BY `Date`) as `50DayMAprevious`
FROM   hero1
)
SELECT `Date`,
       `Close Price`,
       CASE
WHEN ((`20DayMAprevious` < `50DayMAprevious`) && (`20 Day MA` > `50 Day MA` ))THEN 'Buy'
WHEN ((`20DayMAprevious` > `50DayMAprevious`) && (`20 Day MA` < `50 Day MA`)) THEN 'Sell'
ELSE 'Hold' END as "Signal"
      
FROM   MA
ORDER BY `Date`;

# Creation of Infosys2

CREATE table infosys2
WITH MA (`Date`, `Close Price`, `20 Day MA`,`50 Day MA`, `20DayMAprevious`, `50DayMAprevious`)
AS
(
SELECT *,
       Lag(`20 Day MA`, 1) OVER(ORDER BY `Date`) as `20DayMAprevious`,
       Lag(`50 Day MA`, 1) OVER(ORDER BY `Date`) as `50DayMAprevious`
FROM   infosys1
)
SELECT `Date`,
       `Close Price`,
       CASE
WHEN ((`20DayMAprevious` < `50DayMAprevious`) && (`20 Day MA` > `50 Day MA` ))THEN 'Buy'
WHEN ((`20DayMAprevious` > `50DayMAprevious`) && (`20 Day MA` < `50 Day MA`)) THEN 'Sell'
ELSE 'Hold' END as "Signal"
      
FROM   MA
ORDER BY `Date`;

# Creation of TCS2

CREATE table tcs2
WITH MA (`Date`, `Close Price`, `20 Day MA`,`50 Day MA`, `20DayMAprevious`, `50DayMAprevious`)
AS
(
SELECT *,
       Lag(`20 Day MA`, 1) OVER(ORDER BY `Date`) as `20DayMAprevious`,
       Lag(`50 Day MA`, 1) OVER(ORDER BY `Date`) as `50DayMAprevious`
FROM   tcs1
)
SELECT `Date`,
       `Close Price`,
       CASE
WHEN ((`20DayMAprevious` < `50DayMAprevious`) && (`20 Day MA` > `50 Day MA` ))THEN 'Buy'
WHEN ((`20DayMAprevious` > `50DayMAprevious`) && (`20 Day MA` < `50 Day MA`)) THEN 'Sell'
ELSE 'Hold' END as "Signal"
      
FROM   MA
ORDER BY `Date`;

# Creation of TVS2

CREATE table tvs2
WITH MA (`Date`, `Close Price`, `20 Day MA`,`50 Day MA`, `20DayMAprevious`, `50DayMAprevious`)
AS
(
SELECT *,
       Lag(`20 Day MA`, 1) OVER(ORDER BY `Date`) as `20DayMAprevious`,
       Lag(`50 Day MA`, 1) OVER(ORDER BY `Date`) as `50DayMAprevious`
FROM   tvs1
)
SELECT `Date`,
       `Close Price`,
       CASE
WHEN ((`20DayMAprevious` < `50DayMAprevious`) && (`20 Day MA` > `50 Day MA` ))THEN 'Buy'
WHEN ((`20DayMAprevious` > `50DayMAprevious`) && (`20 Day MA` < `50 Day MA`)) THEN 'Sell'
ELSE 'Hold' END as "Signal"
      
FROM   MA
ORDER BY `Date`;

# 4. Creation of User Defined Function which takes Date as the input and returns the respective signal 

delimiter $$

CREATE FUNCTION signal_udf(d Date)
    RETURNS VARCHAR(4) DETERMINISTIC
 BEGIN
      DECLARE Sign VARCHAR(4);
      SELECT `Signal` INTO Sign FROM bajaj2 WHERE `Date`=d;
      RETURN(Sign);
 END$$
 
 delimiter ;

# Printing the Signal for a given output using UDF
 
SELECT signal_udf('2015-01-01') as `Signal`;
       
