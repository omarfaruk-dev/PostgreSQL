-- Active: 1763995340694@@localhost@5432@alibaba

--* get user name and email from orders table

--! inner join (only matched data)
SELECT total, quantity, name, email FROM orders
JOIN users ON orders.userId = users.id;

--! left join - show all row from two table
SELECT total, quantity, name, email FROM orders
LEFT JOIN users ON orders.userId = users.id;

--!right join - 

SELECT total, quantity, name, email FROM orders
RIGHT JOIN users ON orders.userId = users.id;

--! full join
SELECT total, quantity, name, email FROM orders
FULL JOIN users ON orders.userId = users.id;