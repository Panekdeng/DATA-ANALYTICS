--1.	List all customers along with the number of orders they’ve placed.
SELECT c.customer_id, c.name, o.order_id, o.product
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;



--2.	Find customers who haven’t placed any orders.

SELECT c.name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;


--3.	Find orders that were placed by unknown customers (those not in the customer list).
SELECT c.name, COUNT(o.order_id) AS total_orders
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name;


--4.	Calculate the total amount spent per customer.
SELECT c.name, SUM(o.amount) AS total_spent
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name;

--5.	Show a combined list of all customers and all orders (even unmatched ones).
SELECT c.customer_id, c.name, o.order_id, o.product
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;
