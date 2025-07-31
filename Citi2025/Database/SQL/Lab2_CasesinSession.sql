#Reading Data - using Select
#Retrieve the stor_name and city columns from the stores table
SELECT stor_name, city 
FROM stores;

# Controlling which Columns are Returned - column names

#Retrieve the job description as 'Job Title' from the jobs table
SELECT job_desc AS 'Job Title'
from jobs;

#Control which Rows are Returned using LIMIT
#Retrieve the first 10 jobs from the jobs table
SELECT 
    *
FROM
    JOBS
LIMIT 10;

#Control which Rows are Returned using DISTINCT
#Retrieve distinct job descriptions from the jobs table
SELECT DISTINCT
    job_desc
FROM
    jobs;

#Control which Rows are Returned using WHERE
#Retrieve jobs with a max_lvl greater than or equal to 5 from the jobs table
SELECT 
    *
FROM
    jobs
WHERE
    max_lvl >= 5;

#SQL Comparison Operators
#Retrieve titles with a price greater than or equal to 5 from the titles table
SELECT * FROM title where price >= 5;

#SQL Logical Operators
#Retrieve authors with a contract status of '1' and not living in 'New York' from the authors table
SELECT 
    *
FROM
    authors
WHERE
    contract = 1 AND city <> 'New York';

#Pattern Matching Operators
#Retrieve authors with a last name ending with 'son' from the authors table
SELECT 
    *
FROM
    authors
WHERE
    au_lname LIKE '%son';

#NULL Comparison Operators
#Retrieve titles with a price that is not null from the titles table
SELECT 
    *
FROM
    titles
WHERE
    price IS NOT NULL;

#Chain multiple WHERE operators
#Retrieve titles with a price less than 10 or greater than 100 and not published by 'Algodata Infosystems' (pub_id: 1389) from the titles table
SELECT 
    *
FROM
    titles
WHERE
    (price < 10 OR price > 100)
        AND pub_id <> '1389';
SELECT 
    *
FROM
    titles
WHERE
    (price < 10 OR price > 100)
        AND pub_id NOT IN (SELECT 
            pub_id
        FROM
            publishers
        WHERE
            pub_name = 'Algodata Infosystems');

#Order the Result Set
#Retrieve jobs from the jobs table ordered by max_lvl in ascending order and min_lvl in descending order
SELECT 
    *
FROM
    jobs
ORDER BY max_lvl , min_lvl DESC;

#SQL Aliases
#Retrieve jobs with their descriptions as 'Job Description' from the jobs table
SELECT 
    job_desc AS 'Job Description'
FROM
    jobs;

#Basic Mathematical Operations
#Calculate the royalty amount for each title

SELECT 
    title,
    royalty AS 'royalty in %',
    ytd_sales,
    ytd_sales * royalty / 100 AS 'royalty amt'
FROM
    titles;