-- Comments in SQL Start with dash-dash --

-- Question 1:
SELECT * FROM analytics WHERE id = 1880;

-- Question 2:
SELECT id, app_name FROM analytics WHERE last_updated >= '2018-08-01';

-- Question 3:
SELECT category, COUNT(*) AS app_count
FROM analytics
GROUP BY category
ORDER BY category;

-- Question 4:
SELECT app_name, reviews AS review_count
FROM analytics
ORDER BY reviews DESC
LIMIT 5;

-- Question 5:
SELECT app_name, reviews
FROM analytics
WHERE rating >= 4.8
ORDER BY reviews DESC
LIMIT 1;

-- Question 6:
SELECT category, AVG(rating) AS average_rating
FROM analytics
GROUP BY category
ORDER BY average_rating DESC;

-- Question 7:
SELECT app_name, price, rating
FROM analytics      
WHERE price = (SELECT MAX(price) FROM analytics WHERE rating < 3)     
AND rating < 3;

-- Question 8:
SELECT * FROM analytics  
WHERE min_installs <= 50                                             
AND rating IS NOT NULL                                      
ORDER BY rating DESC;

-- Question 9:
SELECT app_name                            
FROM analytics
WHERE rating < 3
AND reviews >= 10000;

-- Question 10:
SELECT *                                                                                  
FROM analytics
WHERE price BETWEEN 0.1 AND 1.0
ORDER BY reviews DESC
LIMIT 10;

-- Question 11:
SELECT *
FROM analytics
ORDER BY last_updated ASC
LIMIT 1;

-- Question 12:
SELECT *                                                                                  
FROM analytics                                                                               
ORDER BY price DESC                                                                   
LIMIT 1;

-- Question 13:
SELECT SUM(review) AS total_reviews
FROM analytics;

-- Question 14:
SELECT category, COUNT(*) AS app_count
FROM analytics
GROUP BY category
HAVING COUNT(*) > 300;

-- Question 15:
SELECT app_name, reviews, min_installs, (min_installs::float / reviews) AS proportion
FROM analytics
WHERE min_installs >= 100000
ORDER BY (min_installs::float / reviews) DESC
LIMIT 1;