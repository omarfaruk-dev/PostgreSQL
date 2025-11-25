-- Active: 1763995340694@@localhost@5432@alibaba@public
SELECT current_database();

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    CHECK (age>=18),
    gender VARCHAR(10)
    CHECK (gender IN ('male', 'female')),
    email VARCHAR(50) UNIQUE NOT NULL,
    phone_no VARCHAR(11),
    district VARCHAR(15),
    password VARCHAR(16) NOT NULL,
    createdAt DATE DEFAULT CURRENT_TIMESTAMP    
);
SELECT * FROM users;

INSERT INTO users(name, email, contactNo, password)
VALUES
('Jannat', 'jannat55@email.com', '01735412548', 'asdf134');

-- constrain
INSERT INTO users (name, age, gender, email, phone_no, district, password)
VALUES 
('Omar', 23, 'male', 'omar@mail.com', '01751234567', 'Dhaka', 'Omar@1234'),

('Jannat', 21, 'female', 'jannat@mail.com', '01865432109', 'Chittagong', 'Jannat#2024'),

('Rahim', 28, 'male', 'rahim28@mail.com', '01911223344', 'Rajshahi', 'Rahim*8899'),

('Fatima', 19, 'female', 'fatima19@mail.com', '01699887766', 'Khulna', 'FatiMa@555'),

('Hasan', 30, 'male', 'hasan30@mail.com', '01533445566', 'Sylhet', 'HaSan#001'),

('Nadia', 22, 'female', 'nadia22@mail.com', '01722334455', 'Barishal', 'Nadia@7788'),

('Kamal', 25, 'male', 'kamal25@mail.com', '01855667788', 'Rangpur', 'Kamal1234@@'),

('Lubna', 27, 'female', 'lubna27@mail.com', '01944556677', 'Mymensingh', 'LubNa#090'),

('Sajid', 24, 'male', 'sajid24@mail.com', '01788990011', 'Comilla', 'Sajid@333'),

('Rima', 20, 'female', 'rima20@mail.com', '01899001122', 'Gazipur', 'Rima*1212');
