#Aggregate Functions
#Overview
#In this lab we will practice using functions to count, find miniumum and maximum values etc.

#EXERCISES
#Find the minimum and maximum price of titles per type, where the type has more than 2 titles and the average price is greater than 15
SELECT 
    type, MAX(price), MIN(price), COUNT(title_id), AVG(price)
FROM
    titles
GROUP BY type
HAVING COUNT(title_id) > 2 AND AVG(price) > 15;


#Count publishers per country having more than 2 publishers and where the country name starts with 'U'
SELECT 
    country, COUNT(pub_id)
FROM
    publishers
WHERE
    country LIKE 'U%'
GROUP BY country
HAVING COUNT(pub_id) > 2;


