-- 1. How many lines (total orders) are there?
SELECT COUNT('Order ID') FROM new_schema.restaurant_orders;
-- ANSWER: 500

-- 2. What food categories are available? (No duplicates)
SELECT DISTINCT Category
FROM new_schema.restaurant_orders;
-- ANSWER: Main, dessert, starter

-- 3. What is the order timeframe?
SELECT
	MAX(Order_Time) AS max_time,
    MIN(Order_Time) AS min_time
FROM new_schema.restaurant_orders;
-- ANSWER: Max:2025-08-14, Min: 2025-01-01

-- 4. What is the total turnover of the restaurant?
SELECT SUM(Price*Quantity) AS total_money
FROM new_schema.restaurant_orders;
-- ANSWER: '20023'

-- 5. What is the average value of a transaction (Average Receipt)?
SELECT AVG(Price*Quantity) AS total_money_avg
FROM new_schema.restaurant_orders;
-- ANSWER: '40.046'

-- 6. What is the average price of a single dish?
SELECT AVG(Price) AS avg_price
FROM new_schema.restaurant_orders;
-- ANSWER: '13.197'

-- 7. What are the 5 best-selling dishes by total quantity?
SELECT Food_Item, SUM(Quantity) AS total_sold
FROM new_schema.restaurant_orders
GROUP BY Food_Item
ORDER BY total_sold DESC;
-- ANSWER: PIZZA

-- 8. Which category generates the most revenue (Main, Dessert, Starter)?
SELECT Category, SUM(price) AS total_price
FROM new_schema.restaurant_orders
GROUP BY Category
ORDER BY total_price DESC;
-- ANSWER: Starter

-- 9. What is the most used payment method?
SELECT Payment_Method, COUNT(*) AS payment_most_use
FROM new_schema.restaurant_orders
GROUP BY Payment_Method
ORDER BY payment_most_use DESC;
-- ANSWER: 132

-- 10. Do digital payments (Credit Card/Online) lead to higher receipts?
SELECT Payment_Method, AVG(Price*Quantity) AS avg_price
FROM new_schema.restaurant_orders
GROUP BY Payment_Method
ORDER BY avg_price DESC;
-- ANSWER: yes

-- 11. Order classification by size (Small, Medium, Large)
WITH order_stat AS (
	SELECT `Order ID`, SUM(Price*Quantity) as order_total
    FROM new_schema.restaurant_orders
    GROUP BY  `Order ID`)
SELECT  `Order ID`, order_total,
CASE
	WHEN order_total<20 THEN 'small_order'
    WHEN order_total BETWEEN 20 AND 50 THEN 'medium_order'
    ELSE 'large_order'
END AS order_segment
FROM order_stat
ORDER BY order_total DESC

    

    