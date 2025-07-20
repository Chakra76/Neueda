#Designing and Creating Databases
#Overview
#In this lab we will practice creating a database and tables.

#EXERCISES
--Create a new database named 'Trading'



--Switch to the newly created database



/* Create Table Currency with following columns

code

description

swift_code

country_code

active

*/










-- Add not null swift_code



-- Add check constraint on active 0,1





/* Create Table Trading with following columns

trade_id

trade_dt

ccy1

ccy2

exch_rate

ccy1_amt

ccy2_amt

*/








-- Add foreign key on ccy1 to Currency, ccy2 to Currency


-- Add check constraint on exch_rate > 0



