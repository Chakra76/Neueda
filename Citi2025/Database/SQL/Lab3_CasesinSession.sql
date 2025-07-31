#Create / Update / Delete
#Overview
#In this lab we will practice inserting, updating and deleting data from a MySQL database. This lab uses the pubs database.

#INSERT
#Insert a new roysched with the following values:
#Royalty ID: 'BU1032', Min Quantity: 5000, Max Quantity: 10000, Percentage: 15

INSERT INTO roysched (title_id, lorange, hirange, royalty) 
VALUES               ( 'BU1032', 5000, 10000, 15);


#UPDATE
#For the update/delete exercises, do
#Preferences -> SQL Editor and deselect the "Safe Updates" option
#or run
#SET SQL_SAFE_UPDATES = 0;
#Increase the discount by 5% for all the discounts in store with stor_id '8042'
UPDATE discounts 
SET 
    discount = discount + 5
WHERE
    stor_id = '8042';


#DELETE
#Delete all books with type 'business' and price greater than 15.00
#First delete the dependent/child tables data before deleting data from parent table(titles)

SET sql_safe_updates=0;
DELETE FROM roysched 
WHERE
    #title_id IN ('BU1032' , 'BU7832');
    title_id IN (SELECT title_id FROM titles WHERE type = 'business' AND price > 15); 
DELETE FROM titleauthor 
WHERE
    #title_id IN ('BU1032' , 'BU7832');
    title_id IN (SELECT title_id FROM titles WHERE type = 'business' AND price > 15);
DELETE FROM sales 
WHERE
    #title_id IN ('BU1032' , 'BU7832');
    title_id IN (SELECT title_id FROM titles WHERE type = 'business' AND price > 15);

DELETE FROM titles 
WHERE
    type = 'business' AND price > 15;




#INSERT statements to regenerate deleted data

INSERT INTO titles(title_id, title, type, pub_id, price, advance, royalty, ytd_sales, notes)
VALUES('BU1032', 'The Busy Executive\'s Database Guide', 'business', '1389', '19.99', '5000.00', '10', '4095', 'An overview of available database systems with emphasis on common business applications. Illustrated.'),
('BU7832', 'Straight Talk About Computers', 'business', '1389', '19.99', '5000.00', '10', '4095', 'Annotated analysis of what computers can do for you: a no-hype guide for the critical user.');

INSERT INTO roysched(title_id, lorange, hirange, royalty)
VALUES ('BU1032', '0', '5000', '10');

INSERT INTO titleauthor(au_id, title_id, au_ord, royaltyper)
VALUES('409-56-7008', 'BU1032', '1', '60'),
('274-80-9391', 'BU7832', '1', '100');

INSERT INTO Sales (stor_id, ord_num, ord_date, qty, payterms, title_id)
VALUES('7896', 'QQ2299', '19931028', '15', 'Net 60', 'BU7832');

