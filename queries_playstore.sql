-- Comments in SQL Start with dash-dash --
SELECT *
FROM analytics
WHERE id = 1880;

SELECT app_name
FROM analytics
WHERE last_updated = 'August 01, 2018';

SELECT category, COUNT(*) AS num_apps
FROM analytics
GROUP BY category
ORDER BY num_apps DESC;

SELECT app_name, reviews
FROM analytics
GROUP BY app_name, reviews
ORDER BY reviews DESC
LIMIT 5;

SELECT app_name, reviews
FROM analytics
WHERE rating >= 4.8
ORDER BY reviews DESC
LIMIT 1;

SELECT category, AVG(rating) AS avg_rating
FROM analytics
GROUP BY category
ORDER BY avg_rating DESC;

SELECT app_name, price, rating
FROM analytics
WHERE rating < 3
ORDER BY price DESC
LIMIT 1;

SELECT app_name, rating, min_installs
FROM analytics
WHERE min_installs <= 50 AND rating > 0
ORDER BY rating DESC;

SELECT app_name
FROM analytics
WHERE rating < 3 AND reviews > 10000;

SELECT app_name
FROM analytics
WHERE price BETWEEN .10 AND 1
ORDER BY reviews DESC
LIMIT 10;

SELECT app_name, last_updated
FROM analytics
ORDER BY last_updated
LIMIT 1;

SELECT app_name, MAX(price) AS most_expensive
FROM analytics
GROUP BY app_name
ORDER BY most_expensive DESC
LIMIT 1;

SELECT SUM(reviews) FROM analytics;

SELECT category, COUNT(app_name) AS app_count
FROM analytics
GROUP BY category
HAVING COUNT(app_name) > 300
ORDER BY category;

SELECT app_name, reviews, min_installs, 
       min_installs / 1.0 / reviews AS proportion
FROM analytics
WHERE min_installs >= 100000
ORDER BY min_installs / reviews DESC
LIMIT 1;


