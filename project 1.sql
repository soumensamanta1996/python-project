
use ecommerce;
Quesction -1
create schema ecommerce;
Quesction -2
Table Data import in ecommerce;
Quesction -3
DESCRIBE users_data ;
Quesction -4
select * from users_data limit 100;
Quesction -5
SELECT COUNT( DISTINCT country) as count_country,count(DISTINCT language)as count_language
FROM users_data;
Quesction -6---------------no

Quesction -7
A - Uses Profile Picture in their Profile
Quesction -8
SELECT country, COUNT(DISTINCT productsbought ) AS total_buyers 
FROM users_data
GROUP BY country
ORDER BY total_buyers DESC;
Quesction -9
SELECT country, COUNT(DISTINCT productsSold ) AS total_buyers
FROM users_data
GROUP BY country
ORDER BY total_buyers DESC;
Quesction -10
select country,max(productsPassRate) as maxproductsPassRate from users_data group by (country) limit 10;
Quesction -11
SELECT language, COUNT(*) AS choicelanguage
FROM users_data
GROUP BY language;
Quesction -12 
SELECT gender, productsListed
FROM users_data
WHERE gender = 'F'
UNION
SELECT gender, SOCIALnBfOLLOWERS
FROM users_data
WHERE gender = 'F';

Quesction -13
SELECT  productsSold,gender AS choice1
FROM users_data
where gender='M'
UNION
SELECT  productsBought,gender AS choice2
FROM users_data
WHERE gender = 'M';
Quesction -14
SELECT country, max(DISTINCT productsBought ) AS num_buyers
FROM users_data
GROUP BY country
ORDER BY num_buyers DESC;
Quesction -15
SELECT country, min(DISTINCT productsSold ) AS min_sold
FROM users_data
GROUP BY country
 limit 10;
 
Quesction -16
SELECT *
FROM users_data
ORDER BY daysSinceLastLogin 
LIMIT 110;
SELECT min(daysSinceLastLogin) FROM users_data limit 10;
select * from users_data
Quesction -17------------------------no

Quesction -18
SELECT country, gender, COUNT(*)
FROM users_data
WHERE gender = 'F'
GROUP BY country;
Quesction -19
select country,gender from users_data where gender='m';
Quesction -20
SELECT country,gender, AVG(productsSold) as avg_products_sold, AVG(productsBought) as avg_products_bought
FROM users_data
WHERE gender = 'm'
GROUP BY (country);

