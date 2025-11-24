-- Active: 1763995340694@@localhost@5432@alibaba
-- current database
-- create bd
-- create user table
-- insert data into table

-- ? task - 1: 

--? current database check
SELECT current_database();

SELECT datname FROM pg_database;

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    name VARCHAR(20),
    email VARCHAR(50) UNIQUE,
    contactNo VARCHAR(11),
    password VARCHAR(12),
    createdAt DATE DEFAULT NOW()


)

SELECT * FROM users;

-- ? insert data to table
INSERT INTO users(name, email, contactNo, password)
VALUES
('Jannat', 'jannat@email.com', '01735412548', '1234567'),
('Omar', 'omar@email.com', '01735412548', '1234567');

DROP TABLE users;
