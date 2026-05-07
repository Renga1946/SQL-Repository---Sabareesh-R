-- Identifying Pizza Sales (View Pizza Sales) 
select * from pizza_sales 
Select SUM(total_price) from pizza_sales
-- Total Revenue
Select SUM(total_price) As Total_Revenue from pizza_sales
-- Average Order Value
SELECT (SUM(total_price) / COUNT(DISTINCT order_id)) 
AS Avg_order_Value FROM pizza_sales
-- Total Pizzas Sold
SELECT SUM(quantity) AS Total_pizza_sold FROM pizza_sales
-- Total Orders
SELECT COUNT(DISTINCT order_id) AS Total_Orders FROM pizza_sales
-- Average Pizzas Per Order
SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) / 
CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2))
AS Avg_Pizzas_per_order
FROM pizza_sales
-- Hourly Trend for Pizzas sold
SELECT DATEPART(HOUR, order_time) as order_hours, SUM(quantity) 
as total_pizzas_sold
from pizza_sales
group by DATEPART(HOUR, order_time)
order by DATEPART(HOUR, order_time)
-- Weekly Trend for Orders
SELECT 
    DATEPART(ISO_WEEK, order_date) AS WeekNumber,
    YEAR(order_date) AS Year,
    COUNT(DISTINCT order_id) AS Total_orders
FROM 
    pizza_sales
GROUP BY 
    DATEPART(ISO_WEEK, order_date),
    YEAR(order_date)
ORDER BY 
    Year, WeekNumber;
-- % of Sales by Pizza Category
SELECT pizza_category, CAST(SUM(total_price) AS DECIMAL(10,2)) 
as total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from pizza_sales) 
AS DECIMAL(10,2)) AS PCT
FROM pizza_sales
GROUP BY pizza_category
-- % of Sales by Pizza Size
Select Pizza_size, CAST(Sum(Total_Price) as Decimal(10,2)) 
as Total_Revenue, CAST(SUM(Total_Price) * 100 / (Select 
Sum(Total_Price) from pizza_sales) as decimal (10,2))  
AS PCT from pizza_sales
Group By pizza_size
Order By pizza_size
-- F. Total Pizzas Sold by Pizza Category
Select pizza_category, SUM(quantity) as Total_Quantity_sold
From pizza_sales
Where Month(order_date) = 2
Group by pizza_category
Order by Total_Quantity_sold Desc;
-- Top 5 Pizzas by Revenue
Select Top 5 pizza_name, sum(total_price) as Total_Revenue
From pizza_sales
Group by pizza_name
Order by Total_Revenue Desc;
-- H. Bottom 5 Pizzas by Revenue
Select Top 5 pizza_name, sum(total_price) as Total_Revenue
From pizza_sales
Group by pizza_name
Order by Total_Revenue Asc;
-- I. Top 5 Pizzas by Quantity
Select Top 5 pizza_name, sum(quantity) as Total_Pizza_sold
From pizza_sales
Group by pizza_name
Order by Total_Pizza_sold desc;
-- J. Bottom 5 Pizzas by Quantity 
Select Top 5 pizza_name, sum(quantity) as Total_Pizza_Sold
From pizza_sales
Group by pizza_name
Order by Total_Pizza_Sold Asc;
-- K. Top 5 Pizzas by Total Orders
Select Top 5 pizza_name, COUNT(Distinct order_id) As Total_orders
From pizza_sales
Group by pizza_name
Order by Total_orders Desc; 
-- L. Bottom 5 Pizzas by Total Orders  
Select Top 5 Pizza_name, Count(Distinct order_id) As Total_orders
From pizza_sales
Group by pizza_name
Order by Total_orders Asc;
-- M. Where clause - Where Pizza category is equal to
-- Classic
Select Top 5 pizza_name, Count(Distinct Order_ID) as Total_orders
From pizza_sales
Where pizza_category = 'classic'
Group by pizza_name
Order by Total_orders asc;
-- N. Where clause - Where Pizza category is equal to
-- Classic – also display pizza_category
Select Top 5 pizza_name, pizza_category, 
Count(Distinct Order_id) as Total_orders
From pizza_sales
Where pizza_category = 'classic'
Group by pizza_name, pizza_category
order by Total_orders Asc;  
-- O. Where Clause - Trials with displaying some
-- other pizza category - veggie
Select pizza_category, pizza_name from pizza_sales
Where pizza_category = 'veggie'
group by pizza_name, pizza_category;
-- P. Where Clause - Trials with displaying some
-- other pizza category - supreme
Select pizza_category, pizza_name from pizza_sales
Where pizza_category = 'Supreme'
group by pizza_name, pizza_category;
-- O. Where Clause - Trials with displaying some
-- other pizza category - veggie - Use Select All
Select All pizza_category, pizza_name from pizza_sales
Where pizza_category = 'veggie'
group by pizza_name, pizza_category;
-- Q. To get all the Individual sales records for ‘veggie’ pizzas 
Select pizza_category, pizza_name from pizza_sales
Where pizza_category = 'veggie';
-- R. To get all the Individual sales records for ‘chicken’ pizzas
Select pizza_category, pizza_name from pizza_sales
Where pizza_category = 'chicken';
-- S. To count how many times each veggie pizza 
-- was ordered – Use Aggregate function - 
-- COUNT & GROUP BY
Select pizza_name, Count(pizza_name) as total_orders
from pizza_sales
where pizza_category = 'veggie'
group by pizza_name;
-- JOINS - For this Data Research 
select * from pizza_sales
-- TO PRACTICE INNER JOIN
-- 1. CREATE A PIZZA_TYPES TABLE
-- This table will store unique pizza names and their categories to remove repeating text data.
SELECT DISTINCT 
    pizza_name, 
    pizza_category, 
    pizza_ingredients
INTO pizza_types 
FROM pizza_sales;
-- 2. CREATE A PIZZAS TABLE
-- This table stores the specific product variations (size and price) for each pizza type
SELECT  
    pizza_name, 
    pizza_size, 
    unit_price
INTO pizzas
FROM pizza_sales;
-- 3. Create a normalised orders table
-- This acts as your "fact table," containing the core transaction data while referencing the other tables
SELECT 
    order_id, 
    order_date, 
    order_time, 
    pizza_name, 
    pizza_size, 
    quantity, 
    total_price
INTO orders_normalized
FROM pizza_sales;
-- 4. Handling Ambiguity in Queries
SELECT 
    onorm.order_id, 
    onorm.pizza_name,  -- Specifying the table name prevents ambiguity
    pt.pizza_category
FROM orders_normalized AS onorm
JOIN pizza_types AS pt 
    ON onorm.pizza_name = pt.pizza_name; -- The identical names are used to match the rows 
    
-- INNER JOIN - RECTIFIED
-- Returns records that have matching values in both tables    
SELECT onorm.order_id, pt.pizza_name, pt.pizza_category
FROM orders_normalized AS onorm
INNER JOIN pizza_types AS pt ON onorm.pizza_name = pt.pizza_name;

-- LEFT (OUTER) JOIN
-- Returns all records from the left table, and matched records from the right table
SELECT pt.pizza_name, p.pizza_size, p.unit_price
FROM pizza_types AS pt
LEFT JOIN pizzas AS p ON pt.pizza_name = p.pizza_name;