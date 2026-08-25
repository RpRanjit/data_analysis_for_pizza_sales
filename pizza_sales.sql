CREATE DATABASE pizza_sales;
DROP TABLE pizza_sales;

select * from pizza_sales;

SELECT Round(SUM(total_price),2) as total_revenue
FROM pizza_sales;

-- Average Order Value

SELECT SUM(total_price) / COUNT( DISTINCT order_id) as avg_order_value
FROM pizza_sales;

-- Total pizza sold 
SELECT SUM(quantity) as total_quantity FROM pizza_sales;

-- Total Orders
SELECT COUNT( DISTINCT order_id) FROM pizza_sales;

--  Average pizza per order 
SELECT SUM(quantity) / COUNT(DISTINCT order_id) as avg_pizza_per_order
FROM pizza_sales;





-- Daily trends for total orders 
SELECT DAYNAME(STR_TO_DATE(order_date, '%m/%d/%Y')) as order_day, COUNT(DISTINCT order_id) as total_orders
FROM pizza_sales
GROUP BY DAYNAME(STR_TO_DATE(order_date, '%m/%d/%Y'));


-- Monthly Trends for total orders
SELECT monthname(STR_TO_DATE(order_date, '%m/%d/%Y')) as months, COUNT(DISTINCT order_id) as total_orders
FROM pizza_sales
GROUP BY monthname(STR_TO_DATE(order_date, '%m/%d/%Y'));


-- Percentage of sales by pizza category
SELECT pizza_category, SUM(quantity) as no_of_sales ,ROUND((SUM(total_price) * 100) / (SELECT SUM(total_price) from pizza_sales), 2) as percent_sales
FROM pizza_sales
GROUP BY pizza_category
ORDER BY no_of_sales ASC;

SELECT pizza_category,ROUND((SUM(total_price) * 100) / 
(SELECT SUM(total_price) from pizza_sales WHERE MONTH(str_to_date(order_date,'%m/%d/%Y')) = 1), 2) as percent_sales
FROM pizza_sales
WHERE MONTH(str_to_date(order_date,'%m/%d/%Y')) = 1
GROUP BY pizza_category;

-- Percentage of sales by pizza sizes
 SELECT distinct pizza_size FROM pizza_sales;
 
 SELECT pizza_size, ROUND((SUM(total_price) * 100) / (SELECT SUM(total_price) FROM pizza_sales), 2) as percentage_sales
 FROM pizza_sales
 GROUP BY pizza_size;
 
 -- Total pizza SOLD by Pizza Category
 SELECT DISTINCT pizza_category FROM pizza_sales;
 
 SELECT pizza_category, SUM(quantity) as pizza_sold
 FROM pizza_sales
 GROUP BY pizza_category
 ORDER BY pizza_sold DESC;
 


-- Top 5 best Sellers By Revenue, Total Quantity and total orders
SELECT pizza_name, SUM(total_price) as total_revenue, SUM(quantity) as total_quantity, COUNT(DISTINCT order_id) as total_orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_revenue DESC LIMIT 5;

-- Bottom 5 worst Sellers By Revenue, Total Quantity and total orders
SELECT pizza_name, SUM(total_price) as total_revenue, SUM(quantity) as total_quantity, COUNT(DISTINCT order_id) as total_orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_revenue LIMIT 5;