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

-- The correct solution is as below

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
Invoice_Total - Payment_Total as BALANCES
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
 Where Client_Name Like "Surabhi%"; 

Select * from clients
 Where Client_Name Like "%Surabhi%"; 

Select * from clients
 Where Client_Name = "Surabhi Store";

-- Question 1 (CLASS WORK): Get customers whose 
-- phone number contains 98 
 
Use store_db_nazeer_hw;

Select * from customers
 Where Phone Like "98";

-- CORRECT WAY OF USING "LIKE" CLAUSE FOR THE ABOVE
--  Question 1 (CLASS WORK) IS AS BELOW

-- (FILTER 1) -> Contains

Select * from customers
 Where Phone Like "%98%";

-- NOTE – WE HAVE A CORRECTION IN “RAM MOHAN” RECORD
-- WE'LL USE THE OLD "UPDATE STATEMENT CONCEPT" IN MY SQL
-- THAT WE LEARNT

Update customers
  Set Gender = "M"
  Where Customer_ID = 16;

Select * from customers;  
   
-- (FILTER 2) -> Begins with

Select * from customers
 Where Phone Like "98%";
  
-- (FILTER 3) -> Ends with

Select * from customers
  Where Phone Like "%98";	

-- FILTER 4 -> IF WE’RE NOT SURE WHERE THE “VALUE” IS -> 
-- WE’LL USE UNDERSCORES ACCORDING TO THE PLACES AND THEN, 
-- WE’LL USE THE PERCENTAGE SYMBOL IN THE END

Select * from customers
  Where Phone Like "______98%";

-- FILTER 5 – USING UNDERSCORES -> BOTH BEFORE, 
-- AS WELL AS, AFTER -> NOT USING PERCENTAGE SYMBOL  

Select * from customers
  Where Phone Like "______98__";

-- My Own Practice

-- WHEN WE WANT TO FIND “36” NUMBER HAVING RECORDS -
-- WE JUST KNOW THAT “36” COMES ONLY IN BETWEEN - BUT
-- NOT SURE ABOUT THE PLACE WHERE IT COMES - THEN DO AS
-- BELOW

Select * from customers
 Where Phone Like "__36%";  

-- =========================================================
-- 	HOME WORK QUESTION – TRIED BY MYSELF -FOR LIKE
--   CLAUSE – USED IN DIFFERENT FILTER CASES

-- HW Question: Get customers whose last name 
-- contains, ends with, begins with "man"

Use store_db_nazeer_hw;

-- FILTER 1 : Contains

Select * from customers;

Select * from customers
 Where Last_Name Like "%man%";

-- FILTER 2 : Begins with

Select * from customers
 Where Last_Name Like "man%";

-- FILTER 3 : Ends with 

Select * from customers
  Where Last_Name Like "%man";
  
-- FILTER 4 -> IF WE’RE NOT SURE WHERE THE “VALUE” IS -> 
-- WE’LL USE UNDERSCORES ACCORDING TO THE PLACES 
-- AND THEN, WE’LL USE THE PERCENTAGE SYMBOL IN THE END

Select * from customers
 Where Last_Name Like "__man%";

-- FILTER 5 – USING UNDERSCORES -> BOTH BEFORE, 
-- AS WELL AS, AFTER -> NOT USING PERCENTAGE SYMBOL

Select * from customers
 Where Last_Name Like "__man"; 

-- FILTER 6 – USING UNDERSCORES -> BOTH BEFORE, 
-- AS WELL AS, AFTER -> NOT USING PERCENTAGE SYMBOL
 
 Select * from customers
 Where Last_Name Like "man____"; 

-- =====================================================
-- Regular Expression ( REGEXP )
-- =====================================================

	-- 					LIKE       REGEXP
	-- Contains			"%8%"		"8"
	-- Starts with		"8%"		"^8"
	-- Ends with		"%8"		"8$"
	-- or							|
	-- combinations					[abcd]
	-- range						[a-f]
	-- 								[mng]a		ma, na, ga
	-- 								a[ngs]		an, ag, as
	-- 					"__6"		REGEXP_LIKE(exp,"^..2") 
 
-- Question (CLASS): Get clients 
-- whose name contains, 
-- ends with , begins with "ST" 

-- Filter 1 : Contains

Use invoicing_db;

Select * from clients
  Where Client_Name REGEXP "ST";

-- Filter 2 : Ends with ($)

Select * from clients
  Where Client_Name REGEXP "ST$";
  
Select * from clients
  Where Client_Name REGEXP "RES$";

-- Filter 3 : Starts with (^) - Circumflex symbol 

Select * from clients
  Where Client_Name regexp "^ST";

Select * from clients
  Where Client_Name REGEXP "^SU";

-- Filter 4 : OR OPERATOR (|) - BAR symbol 

Select * from clients
	Where Client_Name REGEXP "SU|MA|KT";

-- FILTER 5 -> ‘OR’ OPERATOR – USING 
-- STARTS WITH, ENDS WITH AND CONTAINS FILTERS –
-- IN OR OPERATOR   

-- Case 1 - SU – STARTS WITH
-- MA – ENDS WITH
-- KT – CONTAINS

Select * from clients
  Where Client_Name REGEXP "^su|ma$|kt";

-- Case 2 - SU – ENDS WITH
-- MA – STARTS WITH
-- KT – CONTAINS

Select * from clients
  Where Client_Name REGEXP "^ma|su$|kt";

-- Case 3 - SU – CONTAINS WITH
-- MA – ENDS WITH
-- KT – STARTS WITH

Select * from clients
  Where Client_Name REGEXP "KT^|MA$|SU";

Select * from clients; 

-- CASE 4

Use invoicing_db;

SELECT * FROM clients
	WHERE client_name REGEXP "^su|ma$|ket"; 
    
-- *******************************************    
	
-- Next Sub Topic - In REGEXP -
-- COMBINATIONS

-- ***************************************

Use store_db_nazeer_hw; 

Select * from customers;

Select Customer_ID, First_Name 
from customers
Where Customer_ID = 20; 

-- QUESTION (CLASS) - First Name Contains 
-- either r or t or s or v or b

Select Customer_ID, First_Name
    From customers
    Where First_Name REGEXP "[rtvsb]";

-- QUESTION (SPIN-OFF) - First Name Contains 
-- either r or t or v or b 

Use store_db_nazeer_hw;   
    
Select Customer_ID, First_Name 
  From customers
  Where First_Name REGEXP "[rtvb]";

Select Customer_ID, First_Name
  From customers
  Where First_Name REGEXP "[trv]";
  
select Customer_ID, First_Name
from customers
Where First_Name REGEXP "[r]";  

Select Customer_ID, First_Name
from customers
Where First_Name REGEXP "[a]"; 

-- Question (HW QUESTION) : Get first names with 
-- combinations of ne,la, le (contains)
 
Select First_Name
From customers
Where First_Name REGEXP "[ne|la|le]";

-- Another way of writing the solution

Select First_Name
From customers
Where First_Name REGEXP "ne|la|le";
    
-- ==============================================
-- “RANGE” – NEXT SUB TOPIC 
-- OF – "REGULAR EXPRESSIONS" TOPIC
-- ==============================================

-- 1. From M to P

Select Customer_ID, First_Name
from customers
Where First_Name REGEXP "[m-p]";

-- 2. Question (CLASS): Get first names with combinations 
-- of an,ag, al

Select Customer_ID, First_Name
From Customers
Where First_Name REGEXP "an|ag|al";

-- Alternative way of writing - the above question
-- { a[ngs]	}	{an, ag, as}

Select Customer_ID, First_Name
From Customers
Where First_Name regexp "a[ngl]";

Select Customer_ID, First_Name
From Customers
Where First_Name REGEXP "[ngl]a";

-- 3.HW Question: Get first names with range of 
-- characters Q - W

Select Customer_ID, First_Name
From Customers
Where First_Name REGEXP "[Q-W]";

-- 4.HW Question: Get first names with combinations 
-- of start with na, end with ka, contains le

Select Customer_ID, First_Name
From Customers
Where First_Name REGEXP "^na|ka$|le";

-- 5.HW Question: Get employees whose job title 
-- contains "Account"

use hr;

Select * from executives;

Select First_Name, Job_Title
From Executives
Where Job_Title regexp "Account";

-- 6. HW Question: Get products whose name 
-- starts with "Tomato"

Use store_db_nazeer_hw;

Select * from Products;

Select Product_Id, Product_Name
From Products
Where Product_name regexp "Tomato"; -- Wrong Perception

Select Product_ID, Product_Name
from Products
Where Product_Name regexp "^Tomato";

-- ==========================================
--  ORDER BY clause   -   ASC / DESC   - 
-- char, date, number
-- ==========================================

-- Ascending Order

Use hr;

Select * from hr.executives
 order by salary;

Select * from hr.executives
 order by Salary ASC; 
 
-- First Name in Ascending order 
 
Select * from hr.executives
 Order by First_Name ASC; 

Select * from hr.executives
 Order by First_Name; 

-- Descending Order

Select * from hr.executives
 Order by Salary Desc;

-- First name in descending order

Select * from hr.executives
 Order by First_Name Desc;

-- Both First_name and Last_name

Select * from hr.executives
  Order by First_Name, Last_Name Asc;

Select * from hr.executives
  Order by First_Name, Last_Name Desc;

Select * from hr.executives
  Order by First_Name, Duration_Months Asc;
  
-- =================================================
-- HOME WORK QUESTIONS - ORDER BY CLAUSE
-- =================================================  

-- HW 1 - Question: Get customers sorted by 
-- firstname in ascending order 

Use store_db_nazeer_hw;

Select * from customers
 Order by First_Name Asc;

-- HW 2 : Rearrange data on highest to lowest salary 

Use hr;

Select * from executives;

-- Normal way of writing

Select * from executives
 Order by Salary desc;
 
-- Short way of writing 

Select First_Name, Last_Name, Salary
from executives
Order by Salary desc; 
-- ===================================================
-- order by clause - continued
-- ===========================================

-- (CLASS) arrange orders based on 
-- shipped date latest on top

Use store_db_nazeer_hw;

Select * from orders
 Order by Shipped_Date desc;

Select Customer_ID, Order_ID, Shipped_Date
from orders
 Order by Shipped_Date Desc; 

-- ===============================================
-- Order By Clause - Home Work Questions - Part 2
-- ===============================================

-- HW Question 3: Get products sorted 
-- in highest to lowest cost price

Select * from products;

Select Product_Name, Cost_Price from
products
Order by Cost_Price Desc;

-- HW Question 4: Get employees arranged 
-- in lowest to hightest salary

Use hr;
Select First_Name, Last_Name, Salary
from executives
Order by Salary Asc;
	-- ************* The End***************
    
-- ==========================================
-- LIMIT clause      -  MSS TOP
-- ==========================================

-- Question (Class): Get only first 3 customers

Use store_db_nazeer_hw;

Select * from customers
Limit 3;

Select * from customers
Limit 8;

-- ASCENDING AND DESCENDING ORDER USAGE

-- Question (Class):TOP 3 CUSTOMERS BASED ON 
-- THEIR POINTS highest to lowest 

Use store_db_nazeer_hw;

Select * from customers
Order by Points Desc
Limit 3;

-- Question (Dummy): TOP 10 CUSTOMERS BASED ON 
-- THEIR POINTS highest to lowest 

Select * from customers
Order by Points Desc
Limit 10;

-- Question (Class):BOTTOM 3 CUSTOMERS BASED ON 
-- THEIR POINTS lowest to the highest

-- We'll use the ASCENDING ORDER for extracting the data
-- from the lowest to the highest

Select * from customers
Order by Points Asc
Limit 3;

Select * from customers
Order by Points
Limit 3;

Select First_name, Last_Name, Points 
from customers
Order by Points
Limit 3;

-- OFFSET CONCEPT -- SKIPPING OF RECORD POSITIONS
-- CONCEPT IN LIMIT CLAUSE

Use hr;

Select * from office_2;

Select * from office_2
Order by Pin_code Desc
Limit 2;

Select * from hr.executives	
Order by Salary Desc
Limit 2;

Select * from employee_2;

Select * from hr.executives;

-- 	interview question : Employees 7th highest salary

-- Note - Here, we use the DESCENDING ORDER as well
-- as for the HIGHEST RECORD we can go from below

Select * from hr.executives	
Order by Salary Desc
Limit 6,1;

-- interview question : Employees 7th & 8TH 
-- highest salary

Select * from hr.executives
Order by Salary Desc
Limit 6,2;

-- ==========================================
-- LIMIT CLAUSE - HW QUESTIONS
-- ==========================================

-- HW Question 1: Get customers from 5th place 
-- till 9th place

Use store_db_nazeer_hw;

Select * from customers
Limit 4,5; -- Confirmed from NAZEER SIR that it is
-- INCORRECT

-- Alternative trials - Need to ask Nazeer Sir

Select * from customers
Order by Points Asc
Limit 4,5;-- Confirmed from NAZEER SIR that it is
-- CORRECT SOLUTION

Select * from customers
Order by Points desc
Limit 4,5;  -- Confirmed from NAZEER SIR that it is
-- INCORRECT



-- ******************************************************

-- HW Question 2: employees 7th - 10th position 
-- duration (highest on top)

Use hr;

Select * from executives;	

Select First_Name, Last_Name, Duration_Months
From executives -- Employees table
Order by Duration_Months Desc
Limit 6,4; 
-- Confirmed by NAZEER SIR that it is CORRECT

-- ******************************************************

-- HW Question 3: Get top 5 invoices as per 
-- their balances, highest being on top

use invoicing_db;

Select * from invoices;

Select *, Invoice_Total - Payment_Total as Balances
from Invoices
Order by Balances Desc
Limit 5; -- Will this be the correct perception?
 -- Yes. This is the correct PERCEPTION. Confirmed by
 -- Nazeer Sir

-- ***************************************************

 
	

















	


   
   
   
   

  
  

        