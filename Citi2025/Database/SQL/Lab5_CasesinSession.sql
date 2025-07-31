#Joins
#Overview
#In this lab we will practice using joins to retrieve data from multiple tables

#EXERCISES
#Retrieve the title_id of any titles with multiple authors.
SELECT 
    title_id, COUNT(1)
FROM
    titleauthor
GROUP BY title_id
HAVING COUNT(1) > 1;



#Duplicate and edit the previous query to find the names of any titles with multiple authors.

SELECT 
    a.title_id, b.title, COUNT(a.au_id) AS auth_count
FROM
    titleauthor a
        INNER JOIN
    titles b ON a.title_id = b.title_id
GROUP BY a.title_id , b.title
HAVING COUNT(a.au_id) > 1;
