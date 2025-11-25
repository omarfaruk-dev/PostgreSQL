-- ? aliases, distinct , and, or, limit, offset, order

--! Aliases (use different name of properties)
SELECT name as profile_name FROM users;

--! distinct  - get unique value from row
SELECT DISTINCT name FROM users;

SELECT * FROM users;

DELETE FROM users WHERE id=10;
--!Specific Data query 
SELECT * FROM users WHERE district='Dhaka';

SELECT * FROM users WHERE district ILIKE 'dhaka';
--!Get unique value only
SELECT DISTINCT district FROM users;

--!AND 
SELECT * FROM users
WHERE age>=25 AND gender='male';

--!OR 
SELECT * FROM users
WHERE age>25 OR district='Dhaka';

--!LIMIT
SELECT * FROM users LIMIT 5;
--!LImit offset
--! LIMIT in pagination
SELECT * FROM users LIMIT 5 OFFSET 5;

--! ORDER BY Ascending
SELECT * FROM users ORDER BY age ASC LIMIT 2 OFFSET 6;
--! ORDER BY Descending
SELECT * FROM users ORDER BY age DESC;

--! ORDER BY Ascending with pagination 
-- rules: (page number - 1) * limit 
SELECT * FROM users ORDER BY id ASC LIMIT 3 OFFSET 6;

--? Like, in, between, in null

--! LIKE in first letter
SELECT * FROM users
WHERE name LIKE 'F%';

--! LIKE in last letter
SELECT * FROM users
WHERE name LIKE '%f';

--! IN
SELECT name, email, district FROM users
WHERE district IN('Khulna');

--! BETWEEN
SELECT * FROM users
WHERE age BETWEEN 25 AND 30;

--! IS NULL
SELECT name, email, age FROM users
WHERE age IS Null;
