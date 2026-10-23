-- ARCHITECTURE: ONE BIG TABLE (OBT) / DENORMALIZED DATABASE
DROP TABLE IF EXISTS pizza_master_dataset;

CREATE TABLE pizza_master_dataset (
    order_id INT, 
    order_date TEXT, 
    customer_name TEXT, 
    city TEXT,
    pizza_name TEXT, 
    category TEXT, 
    price REAL, 
    quantity INT,
    payment_method TEXT, 
    payment_status TEXT
);

INSERT INTO pizza_master_dataset VALUES 
(501, '2026-10-23', 'Aman Sharma', 'Delhi', 'Margherita', 'Veg', 199.0, 1, 'UPI', 'Success'),
(501, '2026-10-23', 'Aman Sharma', 'Delhi', 'Farmhouse', 'Veg', 299.0, 1, 'UPI', 'Success'),
(502, '2026-10-23', 'Priya Verma', 'Mumbai', 'Chicken Pepperoni', 'Non-Veg', 449.0, 1, 'Credit Card', 'Success'),
(503, '2026-10-24', 'Rahul Singh', 'Bangalore', 'Peppy Paneer', 'Veg', 349.0, 1, 'Cash', 'Pending'),
(504, '2026-10-24', 'Sneha Gupta', 'Noida', 'BBQ Chicken', 'Non-Veg', 399.0, 2, 'UPI', 'Success');

-- QUERY 1: PRODUCT PERFORMANCE ANALYTICS
SELECT pizza_name, SUM(quantity) AS total_quantity_sold, SUM(quantity * price) AS total_revenue
FROM pizza_master_dataset GROUP BY pizza_name ORDER BY total_revenue DESC;

-- QUERY 2: METROPOLITAN MARKET SHARE ANALYSIS
SELECT city, COUNT(DISTINCT order_id) AS total_orders, SUM(quantity * price) AS total_sales
FROM pizza_master_dataset GROUP BY city ORDER BY total_sales DESC;
