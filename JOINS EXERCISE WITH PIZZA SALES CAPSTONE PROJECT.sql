SELECT * FROM pizza_sales_capstone.pizza_sales;
-- INNER JOIN - PIZZA_SALES AND PIZZAS
-- This returns only the rows where there is a match in both tables.
SELECT ps.*, p.pizza_type_id, p.size, p.price
FROM pizza_sales_capstone.pizza_sales ps
INNER JOIN pizza_sales_capstone.pizzas p 
    ON ps.pizza_id = p.pizza_id;
-- LEFT JOIN - PIZZA_SALES AND PIZZAS
-- Returns all records from pizza_sales, plus matching data from pizzas. 
-- If a sale exists 
-- for a pizza not in the pizzas table, those columns will show as NULL. 
SELECT ps.*, p.pizza_type_id, p.size
FROM pizza_sales_capstone.pizza_sales ps
LEFT JOIN pizza_sales_capstone.pizzas p 
    ON ps.pizza_id = p.pizza_id;
-- RIGHT JOIN - PIZZA_SALES AND PIZZAS
-- Returns all records from the pizzas table, plus matching sales. 
-- This helps you identify which pizzas have never been sold.
SELECT p.*, ps.order_id, ps.order_date
FROM pizza_sales_capstone.pizza_sales ps
RIGHT JOIN pizza_sales_capstone.pizzas p 
    ON ps.pizza_id = p.pizza_id;
-- CROSS JOIN - PIZZA_SALES AND PIZZAS
-- This matches every single row from pizza_sales with every single row 
-- from pizzas. 
-- It creates a massive "grid" of all possible combinations.
SELECT ps.order_id, p.pizza_id
FROM pizza_sales_capstone.pizza_sales ps
CROSS JOIN pizza_sales_capstone.pizzas p;
    
    


