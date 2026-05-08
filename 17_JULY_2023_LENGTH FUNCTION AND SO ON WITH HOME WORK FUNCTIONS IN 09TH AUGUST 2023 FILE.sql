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

-- Example for OFFSET concept which might come as an
-- interview question

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
-- ------------------------------------------------------

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

--  ***************** THE END *********************
-- ***************************************************
--                FRESH NEW TOPIC
-- SQL FUNCTIONS - BROAD CATEGORIES - THERY AND ITS
-- APPLICATION

-- 1. Number
-- 2. String
-- 3. Date 
-- 4. Aggregate -> Used as ETL (example)
-- 5. Analytical Functions (If, Else and Case Statement)

-- 1. Number Functions
-- ---------------------------------------

-- In case of AGGREGATE FUNCTIONS, it is performed 
-- in the regular 'SQL DBS' and these functions are
-- part of ETL
-- When you want to run some reports, we use these 
-- functions
-- ---******************-----------------------*****

-- Number Functions

-- 1. ABS()   Absolute value

Select ABS() As ab; -- Incorrect as it is without
-- parameter count in the ABS function

Select ABS(10) As ab;

Select abs(+275) as Amount;

Select abs(-96000) as BigAmount;

Select abs(-100000.4521) as BigBigAmount;

-- ******************************************

-- 2. EXP()   Exponential  value

Select exp(4) ex;

Select exp(5) ex1; 

Select exp(10) Exponent10;

Select exp(100) EXPONENTBIG1;

-- ******************************************

-- 3. LOG()   Logerithmic values 

Select Log(22026.465794806718) Log;
      
Select LOG(148.413159103) Log123;

-- 4. POWER() Power Functions

Select 	Power(2,4) Power;

Select Power(10,10) BigPower;

-- 5.SQUARE FUNCTION EXECUTED VIA POWER FUNCTION

Select Power(3,2) Square;

Select Power(25,2) SquareNumber;

Select Power(569,2) SquareDiffNo;

Select Power(890,2);

-- 6. SQRT () SQUARE ROOT - Finds a root of the SQUARED 
-- value

Select SQRT(16);

Select SQRT(625);

Select sqrt(743);

-- 7. ROUND () - rounds off decimal places

Select Round(22046.46479481,2) RND;

Select Round(22046.46479481,3) RND;

Select Round(22046.46479481,0) RND;

-- 8. TRUNCATE (As a NUMBER FUNCTION) --
-- cut off the values

Select Truncate(22046.46579285,2) cutoff;

Select truncate(30045.9632,3) Trunc;

-- 9. Ceil () or Ceiling () -- It will give us the 
-- smallest integer not less than the Argument

Select Ceiling(43.54) Ceiling;

Select ceiling(100000.23) Ceil_FN;

-- 10. Floor ()	--the LARGEST INTEGER 
-- which is NOT MORE than that of the ARGUMENT 

Select Floor(43.51) Floor_FN;

Select Floor(1000000.65) Floor;

-- 11. Mod() -- fetches the REMAINDER value

Select Mod(5,2) Modulator;	

Select Mod(1000001,2) Moduluator1;

Select Mod(12456,16) Remainder_FN;

-- 12. Rand() random values between 0 to 1

Select rand() Random_Value;

-- ---------------------------------------
-- NEXT TOPIC -> STRING FUNCTIONS
-- ---------------------------------------

-- 1. CONCAT()

Select * from store_db_nazeer_hw.customers;

Select concat(First_Name, Last_Name) Customer_Name,
Gender, Phone, concat(Address, City, State) Address
From store_db_nazeer_hw.customers;

Select concat(First_Name," ", Last_Name) Customer_Name,
Gender, Phone, concat(Address," ",City," ",State) 
Address
From store_db_nazeer_hw.customers;

Select concat(First_Name," ", Last_Name) Customer_Name,
Gender, Phone, concat(Address,", ", City,", ", State) 
Address
From store_db_nazeer_hw.customers;

-- 2. INSTR(String, Sub- String) -- This function
-- is to determine the position # of
-- the SUB - STRING value

Select First_Name from store_db_nazeer_hw.customers;

Select First_Name, instr(First_Name,"A") STR
from store_db_nazeer_hw.customers;

Select Last_Name, instr(Last_Name,"S") Positioning
from store_db_nazeer_hw.customers;

Select Address, instr(Address,"an") Positioning
from store_db_nazeer_hw.customers;

-- 3. LOCATE (substr, str)

Select First_Name, locate("an",First_Name) Locate
from store_db_nazeer_hw.customers;

-- 4. LEFT () -- FETCHES YOUR CHARACTERS FROM LEFT
-- SIDE

Select First_Name, Last_Name,
Left(First_Name, 1) F_Name, Left(Last_Name, 1) L_Name
From store_db_nazeer_hw.customers;

Select First_Name, Last_Name, Phone, Address,
Left(First_Name, 4) F_Name, Left(Last_Name, 5) L_Name, 
Left(Phone, 7) P_Number, Left(Address, 7) ADD_Char
From store_db_nazeer_hw.customers;

Select First_Name, Last_Name, 
Left(First_Name, 4) , Left(Last_Name, 5) , 
Left(Phone, 7) , Left(Address, 7) 
From store_db_nazeer_hw.customers;

-- -----------------------------------
-- USAGE OF CONCAT AND INIT 
-- ALONG WITH LEFT FUNCTION 
-- (INIT) stands for Initials
-- -----------------------------------
-- Suppose, when we are using the CONCAT function 
-- and the INIT function (INITIAL) along with  
-- left function, we can also use the DELIMITER  
-- that we want and we can extract ----------

-- First Letter of the First Name and
-- Last Letter of the Last Name
-- Hyphen separating the INITIALS extracted and
-- the Customer ID
-- To create an ALPHA NUMERIC character

-- That ALPHA NUMBERIC character can be 
-- used as a CODE or EMPLOYEE ID or some 
-- other kind of an ID as such based 
-- on the requirement 

Select First_Name, Last_Name,
concat(Left(First_Name, 1), Left(Last_Name, 1) 
, "-", Customer_ID) Initials_as_ID
from store_db_nazeer_hw.customers;

Select First_Name, Last_Name,
concat(Left(First_Name, 2), Left(Last_Name, 2) 
, "-", Customer_ID) Initials_as_ID
from store_db_nazeer_hw.customers;

Select Customer_ID, First_Name, Last_Name
from store_db_nazeer_hw.customers; 

-- 5. RIGHT () -- FETCHES YOUR CHARACTERS FROM RIGHT
-- SIDE 

Select First_Name, Last_Name,
Right(First_Name, 1), Right(Last_Name, 1), 
Right(Phone,3)
from store_db_nazeer_hw.customers;

-- -----------------------------------
-- USAGE OF CONCAT AND INIT 
-- ALONG WITH RIGHT FUNCTION 
-- (INIT) stands for Initials
-- -----------------------------------

Select First_Name, Last_Name,
concat(Right(First_Name, 2), Right(Last_Name, 2),
"-", Customer_ID) Initials_As_ID
from store_db_nazeer_hw.customers; 

-- 6. TRIM () -- TRIMS THE BLANK SPACES FROM THE 
-- TRIM FUNCTION -- THAT'S ALL THE PURPOSE

Select Trim("    TEX  AS  ") Trimmed;

-- 7. LTRIM () -- TRIMS THE BLANK SPACES FROM THE 
-- LEFT HAND SIDE LTRIM FUNCTION 
-- THAT'S ALL THE PURPOSE

Select Ltrim("    SABA  REE SH   ") L_Trimmed;

-- 8. RTRIM () -- TRIMS THE BLANK SPACES FROM THE 
-- RIGHT HAND SIDE RTRIM FUNCTION 
-- THAT'S ALL THE PURPOSE

Select Rtrim("       JAGAN NATHAN     ") R_Trimmed;

-- 9. SUBSTRING () -- (str, start_pos[,end_pos])

Select Substring("Kindergarden",7) Sub_String_Position;

Select substring("Kindergarden",7,3) Start_and_End;

Select substring("Kindergarden",1,4) 
From_1stChar_to_4th;

-- USAGE OF CONCAT AND INIT(INITIAL) ALONG WITH 
-- SUBSTRING FUNCTION 

Select First_Name, Last_Name,
Concat(Substring(First_Name,1,1)," ",
Substring(Last_Name,1,1)," - ", Customer_ID) Init
From store_db_nazeer_hw.customers;

-- 10. LENGTH () (In Excel it's called as LEN)

Select Length("Sabareesh Jagannathan Rengarajan");
Select Length("SabareeshJagannathanRengarajan")
without_space_trials;

-- TAKING COUNT OF THE COLUMN 
-- -  BY USING LENGTH FUNCTION 
-- A SMALL TECHNIQUE TO BE LEARNT -- SUBTRACTION OF
-- CHARECTERS FROM THE LENGTH FUNCTION

Use hr;

Select * from executives;

Select First_Name, Length(First_Name) Count
from executives;

Use invoicing_db;

Select * from invoices;

Select Invoice_Date, Length(Invoice_Date) Date_Length
from invoices;

Select * from clients;

Select Address, Phone, Length(Address),length(Phone)  
from clients;

Select Address, Length(Address) 
from clients;

Select Address, Length(Address)-4 Count from clients;

Select Address, Length(Address)+10 Count_Addition
from clients;

-- 11. LOWER CASE () L CASE ()

Select lcase("SABAREESH IS A GOOD BOY. HE WILL
COME SUCCESSFUL IN LIFE BY HIS CONCENTRATION AND 
FOCUS AND IS ALSO VERY GOOD HEARTED");

Select LCase("Asif is a SHARP FELLOW with Excellent 
helping NATURE") LCASE;

-- 12. UPPER CASE () U CASE ()

Select UCase("VADA maapillai Vaazha Pazha THOpilla
Volley Ball Aadalama") UP_Case;

-- 13. REPLACE -- REPLACE()

Select "Kindergarten"; -- want to replace the "ten"
-- with "den". How will you make it? See below

Select Replace("Kindergarten", "ten", "den") 
replace_it;

Select replace("Sabashankar", "shankar", "reesh") 
rep_name; 

Select replace("Jaganathan", "nathan", "nnathan")
second_name;

Select Replace("Sabaresh is the bestie frnd f Asif", 
"Sabaresh is the bestie frnd f Asif", 
"Sabareesh Jagannathan R is the only BESTIE EVER of
Mohammed Aasif Rabbani") Statement; 

-- NESTED FUNCTIONS USING LCASE, UCASE AND REPLACE 

Select Lcase(Replace("Kindergarten","der","dine"))
repl_example;

Select Ucase(Replace("Jayashree Madanagopalan, 
Sabareesh Mom",
"Jayashree Madanagopalan, Sabareesh Mom",
"Jayasree Rengarajan, Sabareesh Mother")) statement;
-- Upper case is not working out

-- NESTED FUNCTIONS USING LEFT, RIGHT AND REPLACE 
-- (Working well and correctly)

Select Left("John Michael",12) Lef,
(Replace("John Michael", "John Michael",
"John Abraham"))Work_out;

Select Right("John Michael Dsouza",14) Righ, 
Replace("John Michael Dsouza", "John Michael Dsouza",
"John Abraham Lincoln") Work_out;

-- **************************************************
-- HOME WORK QUESTION OF STRING FUNCTIONS - AFTER
-- COMPLETION OF THE 2ND CATEGORY FUNCTIONS
-- **************************************************

/*   homework
transform below city names into proper casing
'delhi'   =  'Delhi'
'   delhi   ' = 'Delhi'
'DELHI'   =  'Delhi'
'dELHI    ' = 'Delhi'

'   BENGALUru'    =  'Bengaluru'
'   MuMBAI   '    =  'Mumbai'
' chennAI    '    =  'Chennai'
' mysore'         =  'Mysore'
'GOA'             =  'Goa'

Create a common query that can be 
applied to various scenarios.
*/

-- -------------******************------------------ 
-- *************************************************	
-- NAZEER SIR CLASS TO BE CONTINUED ABOVE LATER
-- *************************************************

-- VENKAT KRISHNA'S BEST FRIEND COMBINED STUDIES
-- ON USAGE OF W3 SCHOOLS WEBSITE TO LEARN SQL
-- 23RD MAY 2023 TRIALS
-- *********************************************

-- W3 SCHOOLS WEBSITE'S SQL EDUCATION

-- 1. SQL 'WHERE NOT' EXERCISES - PRACTICALS

Use hr;

Select * from executives;

Select * from executives
Where NOT Job_Title = "Executive";

Select * from executives
Where NOT Job_Title = "Account Executive";

Select * from executives
Where NOT Manager_ID = 786;

Select * from executives
Where NOT Manager_ID in (427, 515, 630, 495,759, 427);

-- 'Where' Exercises
-- A Small check on the count of Manager_ID=786
-- in the executives table

Select * from executives
Where Manager_ID = 786;

-- ‘Or’ related query as per MY SQL DB

Select * from executives
Where First_Name = "Ancy" or Last_Name =
"Mohan" or Job_Title = "VP Accounts" or
Duration_Months = 54 or Salary = 32450 or 
Office_ID = 3;














	


   
   
   
   

  
  

        