-- Active: 1763995340694@@localhost@5432@alibaba
--! Delete all data from table
--! Delete specific data from table
--! Delete multiple data from table
--! Delete table

SELECT * FROM users;
DELETE FROM users
WHERE id=3;

--! Delete multiple
DELETE FROM users
WHERE district='Khulna';

--! Delete all data from table
DELETE FROM users;

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
