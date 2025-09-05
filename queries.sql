-- List all users and their total orders
SELECT u.name, COUNT(o.order_id) AS total_orders
FROM Users u
LEFT JOIN Orders o ON u.user_id = o.user_id
GROUP BY u.name;

-- Find top delivery partners by number of deliveries
SELECT d.partner_name, COUNT(o.order_id) AS deliveries
FROM Delivery_Partners d
JOIN Orders o ON d.partner_id = o.partner_id
WHERE o.status = 'Delivered'
GROUP BY d.partner_name
ORDER BY deliveries DESC;

-- Average delivery amount per partner
SELECT d.partner_name, AVG(o.amount) AS avg_amount
FROM Delivery_Partners d
JOIN Orders o ON d.partner_id = o.partner_id
WHERE o.status = 'Delivered'
GROUP BY d.partner_name;

-- Retrieve all orders by a specific user
SELECT u.name, o.order_id, o.amount, o.status, o.order_date
FROM Users u
JOIN Orders o ON u.user_id = o.user_id
WHERE u.name = 'Nitish';

-- Monthly revenue trends
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, SUM(amount) AS total_revenue
FROM Orders
WHERE status = 'Delivered'
GROUP BY month
ORDER BY month;