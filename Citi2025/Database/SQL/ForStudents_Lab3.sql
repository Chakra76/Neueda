#Create / Update / Delete
#Overview
#In this lab we will practice inserting, updating and deleting data from a MySQL database. This lab uses the pubs database.

#INSERT
--Insert a new store with the following values:
--Store ID: '9000', Name: 'Books Galore', Address: '123 Main St.', City: 'Anytown', State: 'NY', Zip: '12345'



--Insert a new employee with the following values:
--Employee ID: 'XYZ123', First Name: 'John', Middle Initial: 'D', Last Name: 'Smith', Job ID: 6, Manager ID: 215, Department ID: '9952', Birthdate: '19800101'



--Insert a new sale with the following values:
--Store ID: '7066', Product ID: 'XYZ789', Sale Date: '20230621', Quantity: 10, Terms: 'Net 30', Royalty ID: 'PS2091'



--Insert a new discount with the following values:
--Discount Type: 'Bundle Discount', Store ID: NULL, Min Quantity: 100, Max Quantity: 1000, Percentage: 8.5



#UPDATE
#For the update/delete exercises, do
#Preferences -> SQL Editor and deselect the "Safe Updates" option
#or run
#SET SQL_SAFE_UPDATES = 0;

--Update job level of all employees to 20 where current job level is less than 100



--Update the advance of the title 'Secrets of Silicon Valley' to 10000



--Change all authors living in 'Oakland' city to 'San Francisco'



--Update the store address to '1234 New Street' for the store named 'News & Brews'



--Increase the price of all titles by 10%



--Update the royalty of the title with title_id 'BU1032' to 15



--Update the city and country of the publisher with pub_id '0736' to 'Los Angeles' and 'USA'



--Change the type of all 'business' books to 'economy'



--Set the phone number of all authors with last name 'Smith' to '123-456-7890'



#DELETE
--Delete authors with first name starting with 'A' and living in 'Berkeley'



--Delete all authors from cities starting with 'S'



--Delete authors whose last name ends with 'l' and live in 'Palo Alto'



--Delete all authors from 'Berkeley' or 'Oakland'



