-- N. Where clause - Where Pizza category is equal to
-- Classic – also display pizza_category
Select Top 5 pizza_name, pizza_category, 
Count(Distinct Order_id) as Total_orders
From pizza_sales
Where pizza_category = 'classic'
Group by pizza_name, pizza_category
order by Total_orders Asc;
