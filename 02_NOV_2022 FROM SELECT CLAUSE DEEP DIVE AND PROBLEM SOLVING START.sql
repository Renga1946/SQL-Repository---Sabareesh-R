Use hr;

Select * from offices;

Update offices
	Set address = "AASHCHARYAM ROAD"
		where office_ID = 4;

Update offices
	Set Alias_Name = "PayPal"
		Where Alias_name = "The Bay";

Update offices
 Set City = "Mysore"
   Where Address = "55 Gandhi Bazar";
   
Update offices
 Set City = "Gurgoan"
   Where City = "Pune";
   
Alter table offices
Modify Pin_Code  Varchar(9);  

-- REVOKE ACCESS TO SUBORDINATE USERS

Revoke update on hr.offices from 
"sabareeshjagannathan5"@"127.0.0.1";

Drop user 
"sabareeshjagannathan5"@"127.0.0.1";	

-- DEEP DIVING CLAUSES – SELECT CLAUSE (BY 
-- WORKING IN PROBLEM SOLVING SCENARIOS)

-- Q1 - GET ME ALL EMPLOYEES DATA

Use hr;

Select * from executives;

-- Q2 - GET ME EMPLOYEE NAMES, JOB TITLES AND SALARIES

Select * from executives;

Select First_Name, Last_Name, Job_Title, Salary
from executives;

-- Q3 - GET ME THE PRODUCT NAME, QUANTITY, PRICE AND ALSO
-- 10% INCREASE IN THE PRICE AS NEW PRICE

Use store_db_nazeer_hw;

Select * from products;

Select Product_Name, Quantity_In_Stock, Cost_Price
from products;

Select Product_Name, Quantity_In_Stock, Cost_Price,
Cost_Price * 10 / 100 + Cost_price,
Cost_Price * 0.1 + Cost_Price,
Cost_Price * 1.1
from products;

Select Product_Name, Quantity_In_Stock, Cost_Price,
Cost_Price * 1.1 As New_Price
from products;

-- BODMAS - Brackets pOwer Division Multiplication Addition
-- Subtraction

Select (4+5)*2-3/6;  

-- Q4. Get me product name, quantity, price 
-- and also 10% increase in the price as new price
-- indicate that it is online price

Use store_db_nazeer_hw;

Select product_name, quantity_in_stock, cost_price,
cost_price * 1.1 as new_price,
"Online Price" as price_type           -- Literal charecter string    
from Products;  

-- Alternate Quote operator

Use store_db_nazeer_hw;

Select product_name, quantity_in_stock, cost_price,
cost_price * 1.1 as new_price,
'Online''s Price' as price_type            
from Products; 

Select product_name, quantity_in_stock, cost_price,
cost_price * 1.1 as new_price,
'12"' as price_type            
from Products;


                             



























	


   
   
   
   

  
  

        