#Designing and Creating Databases
#Overview
#In this lab we will practice creating a database and tables.

#EXERCISES
#Create a new database named 'Trading'
CREATE DATABASE Trading;


#Switch to the newly created database

USE Trading;


/* Create Table Currency with following columns
code

description

swift_code

country_code

active

*/

CREATE TABLE Currency
(
code	CHAR(3) 	NOT NULL PRIMARY KEY,

description	VARCHAR(75) NOT NULL,

swift_code	CHAR(3),

country_code	VARCHAR(3)	NOT NULL,

active		TINYINT	NOT NULL
);




# Add not null swift_code

ALTER TABLE Currency MODIFY swift_code CHAR(3)	NOT NULL;

# Add check constraint on active 0,1

ALTER TABLE Currency ADD CONSTRAINT active_chk CHECK (active IN (0,1));


/* Create Table Trading with following columns

trade_id

trade_dt

ccy1

ccy2

exch_rate

ccy1_amt

ccy2_amt

*/


CREATE TABLE Trading
(
trade_id	NUMERIC(10)	PRIMARY KEY NOT NULL,

trade_dt	DATE		NOT NULL,

ccy1		CHAR(3)		NOT NULL,

ccy2		CHAR(3)		NOT NULL,

exch_rate	DECIMAL(10,6)	NOT NULL,

ccy1_amt	DECIMAL(20,4)	NOT NULL,

ccy2_amt	DECIMAL(20,4)	NOT NULL
);




#Add foreign key on ccy1 to Currency, ccy2 to Currency
ALTER TABLE Trading ADD FOREIGN KEY (ccy1) REFERENCES Currency(code);
ALTER TABLE Trading ADD FOREIGN KEY (ccy2) REFERENCES Currency(code);

# Add check constraint on exch_rate > 0
#Option 1 - Using ADD CONSTRAINT clause

ALTER TABLE Trading ADD CONSTRAINT exch_rate_chk CHECK (exch_rate > 0);

#Option 2 - Using column MODIFY clause
ALTER TABLE Trading MODIFY exch_rate DECIMAL(10,6) NOT NULL CHECK (exch_rate > 0);

