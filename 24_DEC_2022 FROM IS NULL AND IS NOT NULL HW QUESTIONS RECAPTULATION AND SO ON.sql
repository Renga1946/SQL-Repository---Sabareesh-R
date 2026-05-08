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
-- AND, OR operator - THE PRACTICALS PRACTICE of AND OR
-- ==========================================
-- LHS   AND   RHS    - both true
-- LHS   OR    RHS    - atleast 1 true

-- Question 1: Get list of customers who are born after 1980 
-- and whose points are more than 1000 

Use store_db_nazeer_hw;

Select * from customers;

Select * from customers
	Where Birth_Date > "1980-12-31" and 
     Points > 1000;

-- MY QUESTION - Get list of customers who are born after 2020 
-- and whose points are more than 1000 

Select * from customers
  Where Birth_Date = "2020-12-31" and 
  Points = 1000;

-- MY QUESTION 2 - Get list of customers who are born before 2020 
-- and whose points are more than 1000

Select * from customers
  Where Points > 1000 and Birth_Date < "2020-12-31";
  
-- Question 2: Get order items with sales value more than 3000 
-- and the order id is 4  

Select * from order_items;

Select * from order_items
  where Order_ID = 4;

-- Here, we understand that since, we are not having
-- SALES VALUE we'll calculate the SALES VALUE by multiplying
-- QUANTITY and UNIT PRICE (Sales Value = Quantity * Unit_Price)

Select *, 
Quantity * Unit_Price As Sales_Value 
from order_items;

Select *,
Quantity * Unit_Price As Sales_Value
From order_items
Where Quantity * Unit_Price > 3000 and Order_ID = 4; 

-- Question 2a: Get order items with sales value more than 3000 
-- and the order id is 6

Select *, 
Quantity * Unit_Price As Sales_Value
From order_items
Where Quantity * Unit_Price > 3000 and Order_ID = 6;  
   
-- Question 2b: Get order items with sales value more than 3000 
-- and the order id is 13

Select *, 
Quantity * Unit_Price As Sales_Value
From order_items
Where Quantity * Unit_Price > 3000 and Order_ID = 13; 

-- HW Question 3: Get order items with sales value 
-- more than 1000 AND the order id is 1  

Select *,
Quantity * Unit_Price as SALES_VALUE
From Order_Items
Where Quantity * Unit_Price > 1000 and Order_ID = 1;

-- 'OR' CLAUSE

-- MY QUESTION -> Get customers who are born after 1995 OR whose
-- points are more than 1000 in number

Select * from customers
 Where Birth_Date > "1995-12-31" OR Points > 1000;
 
-- MY QUESTION -> Get customers who are born after 1995 OR whose
-- points are more than 3000 in number 

Select * from customers
 Where Birth_Date > "1995-12-31" OR Points > 3000;
 
-- HW Question NOT TRIED in Class: Get list of customers who are born 
-- after 1990 or 
-- whose points are more than 1000 and state is Tamil Nadu 
  
Select * from customers
 Where Birth_Date > "1990-12-31" OR Points > 1000;
 
-- Question tried in CLASS: Get order items 
-- with sales value more than 
-- 3000 or the order id is 6 and product_id 2 

Use store_db_nazeer_hw;

Select *, Quantity * Unit_Price as SALES_VALUE
  From order_items
  Where Quantity * Unit_Price > 3000 Or
  Order_ID = 6 and Product_ID = 2;

-- HW Question NOT tried in class: Get list of customers who are born after 1990 or 
-- whose points are more than 1000 and state is Tamil Nadu

Select * from customers;

Select *, Birth_Date > "1990-12-31" as Customer_List
 from Customers 
 Where Birth_Date > "1990-12-31" or Points > 1000
 and State = "TN";  -- INCORRECT AS SAID BY NAZEER SIR

Use store_db_nazeer_hw;

Select * from customers
 Where Birth_Date > "1990-12-31" OR Points > 1000
 and State = "TN"; 
 
-- ==========================================
-- BETWEEN operator    -- NUMBERS & DATES
-- ==========================================

-- HW Question 1: Get employees whose salary is 
-- between 45000 & 78000

Use hr;

Select * from executives
 where Salary between 45000 and 78000;
 
-- Question discussed in CLASS: Get customers whose points 
-- are more than 1000 and less than 3000 

Use store_db_nazeer_hw;

Select * from customers
 Where Points > 1000 and Points < 3000;

-- WORK WITH DATES - BETWEEN CLAUSE INCLUSIVE OF
-- 'WHERE' AND 'AND' USING CRITERIA AS WELL

-- Question 1: Get list of customers who are 
-- born after 1990 and before 1993

Select * from customers
 Where Birth_Date > "1990-12-31" and 
 Birth_Date < "1993-01-01";

Select * from customers
 Where Birth_Date between "1990-12-31" 
 and "1993-01-01";

-- HW Question 2: Get invoices with balances between 1100 & 2150

Use store_db_nazeer_hw;

Use invoicing_db;

Select * from invoices;

Select * from invoices
 Where Invoice_Total between 1100 and
 2150;

Select * from payments;

Select * from payments
 where Invoice_ID between 1 and 26
 and Amount between 1100 and 2150;
 
Use store_db_nazeer_hw;

Use invoicing_db;

Select * from invoices;

Select * from invoices
 Where Invoice_Total between 1100 and
 2150; -- WRONG PERSPECTIVE OF UNDERSTANDING 
 -- GIVING WRONG SOLUTION

Select * from payments; -- NO NEED PAYMENTS TABLE

Select * from payments
 where Invoice_ID between 1 and 26
 and Amount between 1100 and 2150;
-- WRONG PERSPECTIVE OF UNDERSTANDING 
-- GIVING WRONG SOLUTION 

-- Then, what else is the correct solution?

Use invoicing_db;

Select *, 
Invoice_Total - Payment_Total as Balances
From Invoices
Where Invoice_Total - Payment_Total between
1100 and 2150;

-- However, since, we're not having the range of BALANCES in
-- between 1100 and 2150, we're reframing the question as suggested
-- by NAZEER SIR

-- HW Question 2: Get invoices with balances between 20000 & 30000

Use invoicing_db;

Select *, 
Invoice_Total - Payment_Total as Balances
from Invoices
where Invoice_Total - Payment_Total between
20000 and 30000;


-- ==========================================
-- IN, NOT operator
-- ==========================================

-- Question 1 (CLASS WORK DONE BY NAZEER SIR)
-- Get customers from state KA, DL, MH

-- There are 2 ways for trying the above question. One - 
-- Longest way and Two - Shortest way

Use store_db_nazeer_hw;

-- LONGEST WAY

Select * from customers
	Where State = "KA" or State = "DL" or
    State = "MH";

-- SHORTEST WAY

Select * from customers
 Where State IN ("KA", "DL", "MH");

Select * from customers
  Where State IN ("KA");

-- Question 2 (CLASS WORK DONE BY NAZEER SIR) : 
-- Get products with quantity in stock 
-- equal to 33, 67, 49 , 70

Use store_db_nazeer_hw;

Select * from products
	Where Quantity_In_Stock In (33,67,49,70);

Select * from products;

-- Question 3 (CLASS WORK DONE BY NAZEER SIR) : 
-- Get customers NOT from state KA, DL, MH

Select * from customers
  Where state Not In ("KA", "DL", "MH"); 

-- =============================================
-- HW Question: Get employees from offices : 2, 4, 5, 8, 10
-- HW Question: Get employees not from these offices : 1, 3, 5
-- HW Question: Get customer not in state PB, TN, MH
-- ==============================================

-- HW QUESTION 1 (IN OPERATOR) 
-- Get employees from offices : 2, 4, 5, 8, 10

Use hr;

Select * from executives;

Select * from offices;

Select * from executives
 Where Office_ID In (2, 4, 5, 8, 10);

-- HW QUESTION 2 (IN OPERATOR) 
-- Get employees not from these offices : 1, 3, 5

Select * from executives
 Where Office_ID not in (1,3,5);

-- HW QUESTION 3 (IN OPERATOR) 
-- Get customers not in state PB, TN, MH

Use store_db_nazeer_hw;

Select * from customers
  Where State not in ("PB", "TN", "MH");

-- ==========================================
-- IS NULL    -- IS NOT NULL
-- ==========================================

-- (CLASS WORK DONE ALONG WITH NAZEER SIR)  
-- Get data from invoices where 
-- we have no payment dates  

Use invoicing_db;

Select * from invoices;

Select * from invoices
 Where Payment_Date Is Null;

-- (CLASS WORK DONE ALONG WITH NAZEER SIR)
-- Get data from invoices where we have payment dates 

Select * from invoices
  Where Payment_Date Is not null;
  
Select * from store_db_nazeer_hw.orders;	  

-- ***************************************
-- HOME WORK QUESTIONS OF 'IS NULL' AND
-- 'IS NOT NULL' FOR PRACTICE

-- HomeWork 1 : Get orders where the comments are null
-- HomeWork 2 : Get orders where the 
-- shipped date is not null 

-- *******************************************************

-- HomeWork 1 : Get orders where the comments are null

Use store_db_nazeer_hw;

Select * from orders;

Select * from orders
 Where Comments Is Null; 

-- HomeWork 2 : Get orders where the 
-- shipped date is not null 

Select * from orders
  Where Shipped_Date Is not null;  
--  ***********************************************************
-- (NAZEER SIR RECOMMENDATION) CHOOSE THE QUESTION(S)
-- as advised by NAZEER SIR in his recommendation

-- 1. Which of these orders does not have a shipped date?

-- 2. Which of these orders does not have a shipper ID?

-- *****************************************************************

-- 1. Which of these orders does not have a shipped date?

Use store_db_nazeer_hw;

Select * from orders
  Where Shipped_Date Is Null;  

-- 2. Which of these orders does not have a shipper ID?

Select * from orders
 Where Shipper_ID Is Null;
  
-- ************************************************************************

-- LIKE CLAUSE AND IT'S ADVANTAGES AND APPLICATION

-- **************************************************************************

-- 1. SURABHI WRITTEN AS SURBHI

Use invoicing_db;

Select * from clients
 Where Client_Name = "Surbhi";
 
Select * from clients;

Select * from clients
 Where Client_Name = "Surabhi";

Select * from clients
 Where Client_Name = "Surabhi Store";

-- Question 1 (CLASS WORK): Get customers whose phone number contains 98 
 
 

 

  








  

















	


   
   
   
   

  
  

        