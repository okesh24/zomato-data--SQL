-- Insert Users
INSERT INTO Users (user_id, name, email, password) VALUES
(1, 'Nitish', 'nitish@gmail.com', 'p252h'),
(2, 'Khushboo', 'khushboo@gmail.com', 'hxn9b'),
(3, 'Vartika', 'vartika@gmail.com', '9hu7j'),
(4, 'Ankit', 'ankit@gmail.com', 'lkko3'),
(5, 'Neha', 'neha@gmail.com', '3i7qm');

-- Insert Delivery Partners
INSERT INTO Delivery_Partners (partner_id, partner_name) VALUES
(1, 'Suresh'),
(2, 'Amit'),
(3, 'Lokesh'),
(4, 'Kartik'),
(5, 'Gyandeep');

-- Insert Orders (dummy data)
INSERT INTO Orders (user_id, partner_id, order_date, amount, status) VALUES
(1, 1, '2023-07-01', 450.00, 'Delivered'),
(2, 2, '2023-07-02', 250.00, 'Delivered'),
(3, 3, '2023-07-03', 600.00, 'Cancelled'),
(4, 4, '2023-07-04', 300.00, 'Delivered'),
(5, 5, '2023-07-05', 550.00, 'Delivered'),
(1, 2, '2023-07-06', 700.00, 'Delivered');

-- Insert Payments (dummy data)
INSERT INTO Payments (order_id, payment_method, amount) VALUES
(1, 'UPI', 450.00),
(2, 'Credit Card', 250.00),
(4, 'Cash', 300.00),
(5, 'Debit Card', 550.00),
(6, 'UPI', 700.00);