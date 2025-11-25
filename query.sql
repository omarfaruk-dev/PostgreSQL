-- Active: 1763995340694@@localhost@5432@alibaba
--get all from table
SELECT * FROM users;

-- query from table selected query only
SELECT id, name, email FROM users;

SELECT id, name, email FROM users;

-- select everything a user whose id is 6
SELECT * FROM users 
WHERE id = 6;

SELECT * FROM users 
WHERE email = 'fatiha@email.com';

SELECT name, age, email FROM users
WHERE age>19;

