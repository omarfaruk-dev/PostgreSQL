-- Active: 1763995340694@@localhost@5432@alibaba

--avg, min, max, count, sum (Must be apply in number column)
SELECT * FROM users;

--!AVG
SELECT AVG(age) FROM users;

SELECT ROUND(AVG(age)) FROM users;  -- avg round figure

--!MIN
SELECT MIN(age) FROM users;

--!MAX
 SELECT MAX(age) FROM users; 

 SELECT AVG(age) AS average_age FROM users;

 SELECT MIN(age) AS youngest, MAX(age) AS oldest FROM users;

 SELECT district, COUNT(*) AS total
FROM users
GROUP BY district;

-- make female count

SELECT gender, COUNT(*) AS total
FROM users
GROUP BY gender;

SELECT district, COUNT(*) AS total FROM users
GROUP BY district
HAVING COUNT(*) > 1;

SELECT gender, AVG(age) AS avg_age
FROM users
GROUP BY gender
ORDER BY avg_age DESC;

SELECT 
    district,
    COUNT(*) AS total_users,
    ROUND(AVG(age)::numeric,2) AS average_age 
FROM users
GROUP BY district
HAVING COUNT(*) >= 2
ORDER BY average_age DESC;

SELECT * FROM orders;

