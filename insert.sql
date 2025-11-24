-- Active: 1763995340694@@localhost@5432@alibaba@public
SELECT current_database();

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    name VARCHAR(20) NOT Null,
    email VARCHAR(50) UNIQUE NOT NULL,
    age INT,
    CHECK (age>18),
    contactNo VARCHAR(11),
    password VARCHAR(12) NOT NULL,
    createdAt DATE DEFAULT CURRENT_TIMESTAMP
);
SELECT * FROM users;

INSERT INTO users(name, email, contactNo, password)
VALUES
('Jannat', 'jannat55@email.com', '01735412548', 'asdf134');

-- constrain
INSERT INTO users(name, email, age, contactNo, password)
VALUES
('Faruk', 'Faruk@email.com', 19, '01735412548', 'asdf134');