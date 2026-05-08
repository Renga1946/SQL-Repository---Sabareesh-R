Alter table offices
Change NAME Alias_Name VARCHAR(30),
Change Office_Address ADDRESS VARCHAR(100),
Change OFFICE_CITY CITY VARCHAR(15),
Change OFFICE_STATE STATE CHAR(2);


Use hr;
Select * from offices;

-- Create OFFICE_2 table and added PRIMARY KEY

Use hr;
Create Table OFFICE_2 (Office_ID tinyint, 
    Office_Name varchar(50),
    Address varchar(100),
    City varchar(50),
    State char(2),
    Pin_code varchar(8));
    
Select * from office_2;

Alter table Office_2
Add constraint pk_Office_2_Office_ID
Primary key (Office_ID);    

-- Create EMPLOYEE_2 table and added FOREIGN KEY

Create Table EMPLOYEE_2 (
      Employee_ID int Not Null Primary Key,
      First_Name varchar(25) Not Null,
      Last_Name varchar(25) Not Null,
      Gender Enum("M", "F") Not Null,
      Job_Title varchar(50) Not Null,
      Duration_Months smallint Null,
      Salary mediumint not null);

Create Table EMPLOYEE_2 (
      Employee_ID int Not Null Primary Key,
      First_Name varchar(25) Not Null,
      Last_Name varchar(25) Not Null,
      Gender Enum("M", "F") Not Null,
      Job_Title varchar(50) Not Null,
      Duration_Months smallint Not Null,
      Salary mediumint Not Null,
      Manager_ID int ,
      Office_ID int Not Null
      	);   
        
SELECT * FROM hr.employee_2;	

-- ADD FOREIGN KEY VIA ALTER TABLE STATEMENT

Alter table employee_2
 ADD CONSTRAINT fk_employee_2_office_ID
 Foreign key (office_ID)
 References Office_2(Office_ID)
 On update cascade
 On delete cascade;	

-- USAGE OF ALTER COLUMN AND SET DEFAULT WORDS
 
Alter table employee_2
 Alter column manager_id SET DEFAULT 001;
 
SELECT * FROM hr.employees;

-- CHECK CONSTRAINT CONCEPT AND USAGE OF INSERT INTO,
-- IN ORDER TO UNDERSTAND THE CONCEPT OF CHECK CONSTRAINT

Alter table employees
  Add constraint ck_employees_Salary
    Check (Salary >= 10000 AND Salary <= 250000);

Insert into employees values
(100, "Ram", "Mohan", "M", "Executive", 10, 10000, DEFAULT, 1); 

Insert into employees values
(101, "Ram", "Mohan", "M", "Executive", 10, 250000, DEFAULT, 1);    
    
Update employees
Set Salary = 250000
where employee_ID = 495;   

Select * from employees;

Alter table employees
  Add constraint ck_employees_Job_Title
    Check (Job_Title <> "Sr.Executive");

Insert into employees values
(103, "Ram", "Mohan", "M", "Sr.Executive", 10, 25000, DEFAULT, 1); 

Alter table employees
  Drop constraint ck_employees_Job_Title;
  
Insert into employees values
   (104, "Ram", "Mohan", "M", "Sr.Executive",10, 56000, Default,1);
   
Insert into employees values
  (103, "Ravi", "Varma", "M", "Jr.Executive", 10, 51000, Default, 1);   
   
Select * from employees;	

-- RENAME TABLE

Rename table Employees to AGENTS; 

Select * from agents; 

Alter table agents Rename Executives;

Use hr;

SELECT * FROM hr.offices;

-- UPDATE STATEMENT AND ITS WORKINGS

Update offices
 Set Address = "Westend Circle"
 Where Office_ID = 1;
 
Update offices
Set Address = "9 Gymkhana Layout, Main South
Crossing, Technopark Campus"
Where State = "MH"; 

Update offices
Set address = "Aacharya Road", City = "Pune"
Where state = "MH";

-- UPDATE EXERCISE SUGGESTED IN THE DATABASE MODELLING PDF

Use store_db_nazeer_hw;

Create Table ORDER_STATUS_PART2 (
ORDER_STATUS_ID INT NOT NULL PRIMARY KEY,
ORDER_STATUS_NAME VARCHAR(12)); 

Select * from store_db_nazeer_hw.ORDER_STATUS_PART2;

Insert into ORDER_STATUS_PART2 values
(1, "Open"),
(2, "Processed"),
(3, "Fulfilled"),
(4, "Cancelled"),
(5, "Delivered"),
(6, "Nt Delivered"),
(7, "Damaged"),
(8, "Rotten"),
(9, "Returned");

Update ORDER_STATUS_PART2
  Set ORDER_STATUS_NAME = "Opened"
  Where Order_Status_ID = 1;
  
Update  ORDER_STATUS_PART2
  Set  ORDER_STATUS_NAME = "ProcessedWIP"
  Where Order_Status_ID = 2;

Update  ORDER_STATUS_PART2
 Set  ORDER_STATUS_NAME = "Processed"
  Where Order_Status_ID = 3;
  
Update  ORDER_STATUS_PART2
 Set  ORDER_STATUS_NAME = "Delivered"
  Where Order_Status_ID = 4;
  
Update  ORDER_STATUS_PART2
 Set  ORDER_STATUS_NAME = "Nt Delivered"
  Where Order_Status_ID = 5; 
  
Update  ORDER_STATUS_PART2
 Set  ORDER_STATUS_NAME = "Cancelled"
  Where Order_Status_ID = 6;   
  
-- DROP AND TRUNCATE - EXERCISED AND LEARNT

Use hr;

SELECT * FROM hr.office_2;

SELECT * FROM hr.employee_2; 

Drop table office_2;

Drop Database world;

-- TRUNCATE AND ITS USAGE

Use hr;

Select * from hr.office_2;

Select * from hr.employee_2;

Truncate table office_2;

Truncate table employee_2;

Insert into Office_2 values
(1,"Technopolis","Miller house Westend circle","Hyderabad",
"TS","600001"),
(2,"Infinity","#5 Buland street","Delhi","DL","600002"),
(3,"Pinnacle","9 GymKhana layout","Pune","MH","600003"),
(4,"Titanium","8 Main South Crossing","Mumbai","MH","600004"),
(5,"The Bay","55 Gandhi Bazar","Bengaluru",	"KA","600005");


insert into employee_2 values
(495,"Elizabeth","Latha","F","Chief Executive officer",
50,	257400,	NULL,1),
(376,"David","Wiener","M","VP Product Management",
68,239100,495,1),
(375,"Shirley","Daniels","F","VP Marketing",
68,225100,495,1),
(396,"Leela","Arumbum","F","VP Accounts",
63,217182,495,1),
(529,"Darsh","Guru","M","Junior Executive",
41,14500,495,1),
(699,"Kailash","Kumar","M","Senior General Manager",
22,187500,495,1),
(759,"Erica","Hackney","F","Information Systems Manager",
14,158500,495,1),
(589,"Brian","Dahlen","M","Junior Executive",
39,12500,375,1),
(630,"Rahul","Murthy","M","Assistant Manager",
32,74852,375,1),
(743,"Lycoris","Saunders","M","Assistant Manager",
19,52900,375,1);

-- DELETE KEYWORD AND ITS USAGE

Use hr;

SELECT * FROM hr.executives;

Delete from executives
  Where Employee_ID = 103;
 
Delete from executives
  Where Salary = 56000; 

-- WORLD DATABASE CAN BE USED FOR MY SQL PRACTICE

Use world;  

SELECT * FROM world.city;

Select * from world.country;

Select * from world.countrylanguage;

Alter table City
 Add column Row_ID Int
     Not Null; 
	
 
  
  
 

 
	 
        

        
 