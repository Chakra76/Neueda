#Reading Data - using Select
--Retrieve all columns from the authors table



--Retrieve the au_lname and au_fname columns from the authors table



--Retrieve the title and price columns from the titles table



--Retrieve the pub_name column from the publishers table



# Controlling which Columns are Returned - column names

--Retrieve the author ID and last name as 'Author ID' and 'Last Name', respectively, from the authors table



--Retrieve the title ID as 'ID' and price as 'Cost' from the titles table



--Retrieve the publisher name as 'Publisher Name' from the publishers table



--Retrieve the store name as 'Name' and city as 'Location' from the stores table



#Control which Rows are Returned using LIMIT
--Retrieve the first 5 rows from the authors table



--Retrieve the top 10 titles from the titles table



--Retrieve the first 3 publishers from the publishers table



--Retrieve the first 5 stores from the stores table



#Control which Rows are Returned using DISTINCT
--Retrieve distinct author IDs from the titleauthor table



--Retrieve distinct titles from the titles table



--Retrieve distinct publisher names from the publishers table



--Retrieve distinct store names from the stores table



#Control which Rows are Returned using WHERE
--Retrieve authors with a contract status of '1' from the authors table



--Retrieve titles with a price greater than 10 from the titles table



--Retrieve publishers located in 'New York' from the publishers table



--Retrieve stores with a zip code of '90019' from the stores table



#SQL Comparison Operators
--Retrieve authors with an au_id equal to '267-41-2394' from the authors table



--Retrieve titles with a price not equal to 10 from the titles table



--Retrieve titles with a price greater than 20 from the titles table



--Retrieve titles with a price less than 15 from the titles table



#SQL Logical Operators
--Retrieve authors with a contract status of '1' and a city of 'Oakland' from the authors table



--Retrieve titles with a price less than 10 or greater than 100 from the titles table



--Retrieve titles that are not published by 'Algodata Infosystems' from the titles table



--Retrieve authors with a contract status of '0' or a city of 'Chicago' from the authors table



#Pattern Matching Operators
--Retrieve authors with a last name starting with 'S' from the authors table



--Retrieve titles with a title containing 'Database' from the titles table



--Retrieve publishers located in either 'New York' or 'California' from the publishers table



--Retrieve stores with a stor_name starting with 'Book%' from the stores table



#NULL Comparison Operators
--Retrieve titles with a notes column that is not null from the titles table



#Chain multiple WHERE operators
--Retrieve titles with a price less than 20 and published by 'Algodata Infosystems' (pub_id: 1389) from the titles table



#Order the Result Set
--Retrieve authors from the authors table ordered by last name in ascending order



--Retrieve titles from the titles table ordered by price in descending order



--Retrieve publishers from the publishers table ordered by city in ascending order and pub_name in descending order



--Retrieve stores from the stores table ordered by state in descending order and stor_name in ascending order



#SQL Aliases
--Retrieve titles with their prices as 'Cost' from the titles table



--Retrieve publishers with their names as 'Publisher' from the publishers table



--Retrieve stores with their names as 'Store Name' and cities as 'Location' from the stores table



#Basic Mathematical Operations
--Calculate the total sales quantity and amount for each store



--Calculate the profit margin (advance - price) for each title


