Create Database Practice_mysql;
Create Database Practice_mysql_2;
Use Practice_mysql;
Create Table OFFICE_DB (Office_ID tinyint, 
    Office_Name varchar(50),
    Address varchar(100),
    City varchar(50),
    State char(2));

Create Table EMPLOYEES_SABAREESH (
      Employee_ID smallint Not Null Primary Key,
      First_Name varchar(25) Not Null,
      Last_Name varchar(25) Not Null,
      Gender Enum("M", "F") Not Null,
      Job_Title varchar(50) Not Null,
      Duration_Months smallint Not Null,
      Salary mediumint Not Null,
      Manager_ID smallint ,
      Office_ID tinyint Not Null,
      foreign key FK_Employees_DB_Employees_DB (Manager_ID)
      references Employees_DB (Employee_ID),
	  Foreign Key FK_Employees_DB_Office_DB (Office_ID)
      References  Office_DB(Office_ID)	
      );
      
      Drop table EMPLOYEES_DB;
      
Select * from office_db;
Select * from employees_db;
Select Employee_ID, Job_Title, Salary From employees_db;
Select Salary, Job_Title, Employee_ID from employees_db;

Use hr;
SELECT * FROM hr.offices;

Insert into Offices (office_ID, Office_name, 
Office_Address, Office_City, Office_State)
Values (1,"Technopolis", "Miller house Westend circle", "Hyderabad"
	, "TS");

Select * from offices;

INSERT INTO OFFICES (OFFICE_ADDRESS, OFFICE_ID, OFFICE_STATE,
OFFICE_NAME, OFFICE_CITY) VALUES ("#5 Buland street", 2,
	"DL","Infinity", "Delhi");

Insert into Offices (office_ID, Office_name, 
Office_Address, Office_City, Office_State)
Values (3,"Pinnacle", "9 GymKhana layout", "Pune"
	, "MH"),
    (4,"Titanium", "8 Main South Crossing", "Mumbai"
	, "MH"),
    (5,"The Bay", "55 Gandhi Bazar", "Bengaluru"
	, "KA");    

SELECT * FROM hr.employees;

Insert into employees (Employee_ID, FIRST_NAME, LAST_NAME, 
GENDER, JOB_TITLE, DURATION_MONTHS, SALARY, MANAGER_ID, 
 OFFICE_ID) 
 values (301, "Toby",	
"Swindell", "M", 'Staff Accountant I', 68, 15520, 786, 2);

Use hr;

Insert into employees  
values (301, "Toby"	
"Swindell", "M", 'Staff Accountant I', 68, 15520, 786, 2);

Insert into employees  
values (495, "Elizabeth"	
"Latha", "F", 'Chief Executive Officer', 50, 257400, null, 1);

Use Practice_mysql;
Drop Table employees_db;
Use hr;
Drop Table employees;


      
Use Practice_mysql_2;

Create Table OFFICE_SAB (Office_ID tinyint, 
    Office_Name varchar(50),
    Address varchar(100),
    City varchar(50),
    State char(2));
Insert into Office_SAB (office_ID, Office_name, 
Office_Address, Office_City, Office_State)
Values (1,"Technopolis", "Miller house Westend circle", "Hyderabad"
	, "TS");    
    
    
    Create Table EMPLOYEES_SAB (
      Employee_ID smallint Not Null Primary Key,
      First_Name varchar(25) Not Null,
      Last_Name varchar(25) Not Null,
      Gender Enum("M", "F") Not Null,
      Job_Title varchar(50) Not Null,
      Duration_Months smallint Not Null,
      Salary mediumint Not Null,
      Manager_ID smallint ,
      Office_ID tinyint Not Null,
      foreign key FK_Employees_SAB_Employees_SAB (Manager_ID)
      references Employees_SAB (Employee_ID),
	  Foreign Key FK_Employees_SAB_Office_SAB (Office_ID)
      References  Office_SAB(Office_ID)	
      );
Insert into employees_SAB 
values (495, "Elizabeth"	
"Latha", "F", 'Chief Executive Officer', 50, 257400, null, 1);  

Insert into employees_SAB  
values (301, "Toby"	
"Swindell", "M", 'Staff Accountant I', 68, 15520, 786, 2); 

Drop Database practice_mysql;   
Drop Database practice_mysql_2;

Use hr;
SELECT * FROM hr.offices;
Create Table EMPLOYEES (
      Employee_ID int Not Null Primary Key,
      First_Name varchar(25) Not Null,
      Last_Name varchar(25) Not Null,
      Gender Enum("M", "F") Not Null,
      Job_Title varchar(50) Not Null,
      Duration_Months smallint Not Null,
      Salary mediumint Not Null,
      Manager_ID int ,
      Office_ID int Not Null,
      foreign key FK_Employees_Employees (Manager_ID)
      references Employees (Employee_ID),
	  Foreign Key FK_Employees_Offices (Office_ID)
      References  Offices(Office_ID)	
      );
      
Insert into employees 
values (495, "Elizabeth",	
"Latha", "F", 'Chief Executive Officer', 50, 257400, null, 1);
Use hr; 

Insert into employees		 
values (301, "Toby",	
"Swindell", "M", 'Staff Accountant I', 68, 15520, 786, 2); 
Drop Database asif_sab_db;
Drop Database besant;
Drop Database new_one;
Drop Database sakila;
Drop database sampledb;
Drop database suresh;
Drop database stuart_little;

SELECT * FROM hr.employees;
use hr;
Insert into employees
values (495, "Elizabeth",	
"Latha", "F","Chief Executive Officer",50,257400,null,1); 

Insert into employees
values (376,"David","Wiener","M","VP Product Management",
68,239100,495,1),
(375,"Shirley","Daniels","F","VP Marketing",
68,225100,495,1),
(396,"Leela","Arumbum","F","VP Accounts",
63,217182,495,1),
(529,"Darsh","Guru","M","Junior Executive",
41,14500,495,1),
(699,"Kailash","Kumar","M","Senior General Manager",
22,187500,495,1);

Insert into employees values(589,"Brian","Dahlen","M",
"Junior Executive",
39,12500,375,1),
(630,"Rahul","Murthy","M","Assistant Manager",
32,74852,375,1),
(743,"Lycoris","Saunders","M","Assistant Manager",
19,52900,375,1),
(531,"Hardeep","Kapoor","F","Sales Analyst",
40,11376,630,1);

Insert into employees
values (531,"Hardeep","Kapoor","F",
"Sales Analyst",40,11376,630,1);	

Insert into employees
values (786,"Milind","Gokale","M",
"General Manager",10,125000,396,2),
(463,"Sheela","Dixit","F","Sales Analyst",54
,30187,630,2),
(518,"Allum","basappa","M","Sales Analyst",
45,32179,630,2),
(301,"Toby","Swindell","M","Staff Accountant I",
68,15520,786,2),
(427,"Seth","Vernon","M","Assistant Manager",
61,56210,786,2),
(676,"Minesh","Chaudhri","M","Staff Accountant III",
28,44860,786,2),
(863,"Karthik","Stella","M","Staff Accountant II",
4,35951,786,2),
(881,"Hunter","Lopez","M","Staff Accountant II",
3,22150,786,2),
(344,"Ancy","Mendez","F","Account Executive",
68,22871,427,2),
(429,"Chinna","Reddy","M","Account Executive",
59,46119,427,2),
(601,"Delfina","Latchford","F","Account Executive",
36,28100,427,2),
(616,"Kavya","Pawal","F","Account Executive",
33,42710,427,2),
(660,"Naveen","Gullu","M","Account Executive",
31,15426,427,2),
(753,"Thanush","Binney","F","Account Executive",
18,47354,427,2),
(758,"Carol","Adams","F","Account Executive",
15,32500,427,2);

Insert into employees
values (691,"Jack","O Briant","M",
"Sales Analyst",25,28100,630,3),
(847,"Phillina","Ober","F","Sales Analyst",7,
29510,630,3),
(536,"Xylona","Preis","F","Assistant Manager",
40,69500,786,3),
(516,"Kailash","Hegde","M","Account Executive",
49,46401,536,3),
(559,"Maria","Etezadi","F","Account Executive",
40,32450,536,3),
(610,"Ionia","McGrath","F","Account Executive",
35,42400,536,3),
(689,"Anthony","Jacobs","M","Account Executive",
26,45300,536,3),
(707,"Bhushan","Kumar","M","Account Executive",
21,21200,536,3),
(793,"Natalie","DeCherney","F","Account Executive",
9,19210,536,3),
(841,"Giri","Kapoor","M","Account Executive",
9,41951,536,3),
(855,"Mark","Van Huff","M","Account Executive",
6,26120,536,3),
(879,"Muhammed","MacIntyre","M","Account Executive",	
4,31000,536,3),
(897,"Chris","Selesnick","M","Account Executive",
0,25000,536,3);

Insert into employees
values (759,"Erica","Hackney","F","Information Systems Manager",
14,158500,495,4),
(364,"Tejas","Mohan","M","Sales Analyst",
68,25254,630,4),
(667,"Melanie","Seite","F","Sales Analyst",
28,21450,630,4),
(418,"Keriyan","Allian","M",
"Computer Systems Analyst",62,29241,759,4),
(443,"Babloo","No Last Name","M","Structural Engineer",
57,32285,759,4),
(517,"Mira","Janaki","F","Computer Systems Analyst",
49,26410,759,4),
(644,"Mrudula","Kokila","F","Computer Systems Analyst",
32,31005,759,4),
(709,"Mick","Brown","M","Computer Systems Analyst",
20,25650,759,4),
(844,"Michael","Moore","M","Computer Systems Analyst",	
8,22400,759,4),
(888,"Nisery","Vosul","M","Computer Systems Analyst",1,
30500,759,4);

Insert into employees
values (515,"Vivek","Sundaresam","M","General Manager",
50,112500,396,5),
(345,"Vasanth","Gopal","M","Cost Accountant",
68,29850,515,5),
(407,"Darren","Powers","F","Cost Accountant",
63,24500,515,5),
(437,"Tom","Boeckenhauer","M","Cost Accountant",
57,20540,515,5),
(449,"Gulshan","Kumar","M","Cost Accountant",
56,17690,515,5),
(520,"Brendan","Sweed","F","Cost Accountant",
45,18550,515,5),
(590,"Speros","Goranitis","M","Cost Accountant",
39,15500,515,5),
(858,"Sadik","Raza","M","Office Assistant",
7,10250,515,5);

-- ALTER TABLE CODE WRITING PRACTICE FROM 15TH OCTOBER 2022

Use hr;
Select * from offices;

Alter table offices
  ADD PIN_CODE VARCHAR(8);
  
Alter table offices
  ADD PIN_CODE VARCHAR(8) after OFFICE_ADDRESS;  

Alter table offices
  ADD PIN_CODE VARCHAR(8) after OFFICE_STATE;
  
Alter table offices
 Drop PIN_CODE;  

Alter table offices
ADD PIN_CODE VARCHAR(8) First; 

Alter table offices
ADD PIN_CODE VARCHAR(8) First; 

Alter table offices
Change OFFICE_NAME NAME VARCHAR(40);

Alter table offices
Modify name Varchar(45);


  
Update offices
Set PIN_CODE = "500001"
Where Office_ID = 1;  

Update offices
Set PIN_CODE = "110001"
Where Office_ID = 2;  
  
Update offices
Set PIN_CODE = "410038"
Where Office_ID = 3;

Update offices
Set PIN_CODE = "400015"
Where Office_ID = 4;

Update offices
Set PIN_CODE = "560004"
Where Office_ID = 5;





      
    
    

      
      
      
	

	
    
      
      
