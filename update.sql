-- Active: 1763995340694@@localhost@5432@alibaba
SELECT * FROM users;

--! UPDATE Data in row / column

-- UPDATE table_column_name SET column 1 = 'xyz' where id =1;

UPDATE users SET name = 'Kamal', age = 27 WHERE id = 7;

UPDATE users SET phone_no = '0123456' WHERE phone_no IS NULL;