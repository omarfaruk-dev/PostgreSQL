-- Active: 1763995340694@@localhost@5432@alibaba
SELECT * FROM users;
-- ! ALTER - table related update 

--? table rename, column rename, add, drop , edit column

--* table column rename
ALTER TABLE users
RENAME COLUMN name to user_name;

--* add new column
ALTER TABLE users
ADD COLUMN photo_url VARCHAR(200)

ALTER TABLE users
ADD COLUMN remarks VARCHAR(10) NOT NULL DEFAULT 'Good';

--! Table name change

ALTER Table customers
RENAME to users;

--* Drop column
ALTER table users
DROP COLUMN photo_url;

DROP TABLE users;