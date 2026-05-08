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

-- BACK SLASH OPERATOR'S SIGNIFICANCE

Use store_db_nazeer_hw;

Select product_name, quantity_in_stock, cost_price,
cost_price * 1.1 as new_price,
'Online\'s Price' as price_type            
from Products; 


-- HOME WORK QUESTIONS TRIED BY SABAREESH JAGANNATHAN R

-- Q1 . Get me product name, quantity, price 
-- and also 10% decrease in the price as a new price
-- indicate that it is Diwali offer  

Use store_db_nazeer_hw;

Select * from products;

Select Product_Name, Quantity_In_Stock, Cost_Price,
Cost_Price * 0.9 as New_Price,
"Diwali Offer" as Price_Type
from Products;



-- Q2 . Get me product name, quantity, price 
-- and also 10% decrease in the price as a new price
-- indicate that it is Diwali offer  (literal character string)

Select Product_Name, Quantity_In_Stock, Cost_Price,
Cost_Price * 0.9 as New_Price,
"Diwali Offer" as Price_Type
from Products;

-- Q2 . Get me product name, quantity, price 
-- and also 10% decrease in the price as a new price
-- indicate that it is Diwali offer (alternate quote operator)

Select Product_Name, Quantity_In_Stock, Cost_Price,
Cost_Price * 0.9 as New_Price,
"Diwali's Offer" as Price_Type
from Products;

-- Home Work :Q2. Get me employee names and salary 
-- also give them 10% bonus on salaries

Use hr;

Select * from executives;

Select First_Name, Last_Name, Salary,
Salary * 0.10 as BONUS,
Salary + (Salary * 0.10) as Month_Payment
from executives;

-- Home Work : Q3. Get me all the invoices, 
-- invoice amount, payment made & balances

Use invoicing_db;

Select * from invoices;

Select Invoice_Total, Payment_Total
from invoices;

Select (Invoice_Total *1- Payment_Total*1) as Balances
from invoices; 	

Select Client_ID, Invoice_Total, Payment_Total,
(Invoice_Total *1- Payment_Total*1) as Balances 
from invoices;

Select (Invoice_Total - Payment_Total) as Balances
from invoices;

Select Client_ID, Invoice_Total, Payment_Total,
(Invoice_Total - Payment_Total) as Balances 
from invoices;

Select Invoices_ID, Invoice_Total, Payment_Total,
(Invoice_Total - Payment_Total) as Balances 
from invoices;

Select Invoices_ID, Client_ID, Invoice_Total, Payment_Total,
(Invoice_Total - Payment_Total) as Balances 
from invoices;

-- IMPORTANT TOPIC - WHERE CLAUSE

--  =, >, <, >=, <=, <> not equals to != -> All these are also
-- coming under WHERE clause

Use store_db_nazeer_hw;

Select * from customers;

Select * from customers
	Where Gender = "F";

Select * from customers
	Where state = "MH";
	
Select * from customers
    Where Points = 457;	

Select * from customers
    Where Points = 458;
    
Select * from customers
   Where Points > 2000;    

Select * from customers
   Where Points < 2000;
   
Select * from customers
   Where Points > 3073;   

Select * from customers
   Where Points < 3073;

Select * from customers
   Where Points >= 3073;
   
Select * from customers
   Where Points <= 3073;   

Select * from customers
  Where Points <> 457;   

Select * from customers
  Where Points != 2672;

Select * from customers
   Where Birth_Date = "1974-04-14";

Select * from customers;

Select * from customers
  Where Birth_Date = "1979-12-11";   

Select * from customers
  Where Birth_Date > "1979-12-11";

Select * from customers
  Where Birth_Date < "1979-12-11";

Select * from customers
  Where Birth_Date >= "1979-12-11";  
                             
Select * from customers
  Where Birth_Date <= "1979-12-11";

Select * from customers
  Where Birth_Date != "1979-12-11";

Select * from customers
  Where Birth_Date <> "1979-12-11";
                    
                    -- * --
-- HomeWork Q1 : Get me list of customers who are born after 1990
-- HomeWork Q2 : Get me employees who work from office id 1
-- HomeWork Q3 : Get me employees whose salary is larger than 100000
-- HomeWork Q4 : Get office details other than Technopolis
                    -- * --

-- HomeWork Q1 : Get me list of customers who are born after 1990  

Select * from customers
 Where Birth_Date >= "1990-01-01";
 
-- HomeWork Q2 : Get me employees who work from office id 1

Use hr;

Select * from executives;

Select * from executives
 Where Office_ID = 1; 

-- HomeWork Q3 : Get me employees whose salary is larger than 100000

Use hr;

Select * from executives;

Select * from executives
  Where Salary > 100000;

-- HomeWork Q4 : Get office details other than Technopolis

Select * from offices;

Select * from offices
	Where Alias_Name <> "Technopolis";
    
-- ==========================================
-- AND, OR operator 
-- ==========================================
-- LHS   AND   RHS    - both true
-- LHS   OR    RHS    - atleast 1 true

-- Question: Get list of customers who are born after 1980 
-- and whose points are more than 1000 

    



















	


   
   
   
   

  
  

        