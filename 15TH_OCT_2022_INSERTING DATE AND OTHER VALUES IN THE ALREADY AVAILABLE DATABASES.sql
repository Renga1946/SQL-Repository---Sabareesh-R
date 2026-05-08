use store_db_nazeer_hw;
Select * from customers;
insert into customers values
(1,"Ganesh","Pai",	
"M","1986-03-28","7819329754","VijayNagar",	
"Bangalore","KA",2273);

insert into customers values(2,"Chandran","Dhania","M","1996-12-03",
"9734279456","#17 Colaba Street","Mumbai",	
"MH",1957);

insert into customers values(3,"Shami","Saman","M","1985-02-07","7197247869",
"2 Jalandhar","Ludhiana","PB",2967);

insert into customers values(4,"Ambika","Deshmukh",
"F","1974-04-14",	
"4072318017","30 New Link Road","Mumbai","MH",457);

insert into customers values(5,"Pranit","Sundur",
"M","1983-01-27","8845454512",
"#26 Praful Marg","Delhi","DL",65);

insert into customers values(6,"Sulekha","Mohan",
"F","1991-09-04","3124808498",
"RamNivas Nagar","Chennai","TN",3073);
Use store_db_nazeer_hw;

insert into customers values(7,"Sagar",
"Dsouza","M","1964-08-30","6156414759",	
"50 Lillian Crossing","Chennai","TN",1672);

insert into customers values(8,"Karthik","Babu",	
"M","1993-07-17",NULL,"538 Tilak Center",	
"Ahmedabad","GJ",1205);

insert into customers values (9,"Nazeer","Hussain","M",
"1982-06-23","9991824422","3 Golden Park","Mysore","KA",1486),
(10,"Naveen","Stella","M","1969-10-13","4042463370",
"106, Roshan Pura","Delhi","DL",796),
(11,"Tejas","Kumar","M","1989-03-28","9919329754",
"Villas Nagar","Mumbai","MH",2479),
(12,"Rahul","Dholakia","M","1986-04-13","8044279456",
"14187 Commercial Street","Mumbai","MH",947),
(13,"Rafi","Salman","M","1995-06-17","7897427869",
"SectorA Gulmarg","Ludhiana","PB",2967),
(14,"Darsh","Deshmukh","M","1984-04-24","9421271277",
"Palace Road","Mysore","KA",3457),
(15,"Vani","Gullu","F","1973-11-07",NULL,
"26 Pragati Tower","Delhi","DL",3675);

SELECT * FROM store_db_nazeer_hw.customers;

insert into customers values(16,"Ram","Mohan","F","1981-03-14",
"5124908498","Rohan Niwas","Chennai","TN",4075),
(17,"Giridhar","Murthy","M","1974-09-30","6146894712",
"Lillian Crossing","Chennai","TN",2672),
(18,"Karthik","Kumar","M","1993-07-17","9415273977",
"538 Tilak Center","Ahmedabad","GJ",205),
(19,"Kailash","Guru","M","1992-05-23",
"5591813744","3 Golden Park","Mysore","KA",1486),
(20,"Jihan","Kapoor","F","1979-12-11",
"4045464571","North Block","Delhi","DL",3796),
(21,"Naya","Sagar","M","1988-04-18",
"5250680454","11# Kapali veedi","Chennai","TN",1923),
(22,"Ishaan","Sohan","M","1991-08-19",
"4979283572","2nd Cross, Roshana Street","Chennai","TN",1749),
(23,"Inaya","Avasthi","F","1990-01-17",
"4707886689","Gandhi Marg","Ahmedabad","GJ",1574),
(24,"Dhruv","Rathi","M","1982-10-24",
"4436489807","Temple street","Mysore","KA",1400),
(25,"Shyla","Manohar","F","1993-10-07",
"4165092925","Bamboo bazaar","Delhi","DL",1226),
(26,"Amar","Sharma","M","1991-03-14",
"3893696043","Behind Church, Coastal Lane","Mumbai","MH",1051),
(27,"Diya","Kapoor","F","1990-09-30","3622299161",	
"Andheri East","Mumbai","MH",877),
(28,"Ananya","Warad","F","1996-11-07",
"3350902278","Chamundi nagar","Mysore","KA",702);

SELECT * FROM store_db_nazeer_hw.products;

-- PRODUCTS TABLE IN STORE_DB_NAZEER_HW DB

insert into products values
(1,'Italian Dinner Set', 70, 1100.15),
(2,'Bottled Mango Slice', 49, 45.25),
(3,'Chill Coke', 38, 30.35),
(4,'Gold Tea', 90, 400.55);

insert into products values(5,"Tomato Sauce",94,61.65),
(6,"Bhendi Masala",14,42.3),
(7,"Fresh Mutter",98,35.2),
(8,"Swiss Strawberry",26,200.75),
(9,"Labels - Stationary",67,20),
(10,"Lux Soap",6,75.25),
(11,"Dish Washer",44,85.1),
(12,"Frozen Pepper",58,21.15),
(13,"Banana Chips",20,100.75),
(14,"Apple Green",100,255.25),
(15,"Promise Gel",60,45.5);

-- ORDERS TABLE IN STORE_DB_NAZEER_HW DB

Use store_db_nazeer_hw;
insert into orders values (1,6,"22-01-19",4,NULL,
"27-01-19",7);

insert into orders values (2,27,"2019-01-22",4,NULL,
"2019-01-27",7);

insert into orders values 
(3,10,"2019-06-05",4,"Call before delivery",
"2019-08-05",5),
(4,5,"2019-08-11",4,NULL,
"2019-08-16",2),
(5,8,"2019-10-17",4,NULL,
"2019-10-22",2),
(6,6,"2019-12-23",4,
"Do Not Ring Bell.","2019-12-28",1),
(7,5,"2020-02-28",4,NULL,
"2020-03-04",3),
(8,7,"2020-05-05",4,
NULL,"2020-05-10",8),
(9,2,"2020-07-01",4,
NULL,"2020-07-23",4),
(10,10,"2020-07-05",2,
"Do Not Disturb",NULL,NULL),
(11,6,"2020-07-05",4,
NULL,"2020-07-08",6),
(12,2,"2020-08-25",
1,"Do Not Ring Bell.",NULL,NULL),
(13,10,"2020-08-25",3,NULL,
"2020-08-31",2),
(14,5,"2020-12-01",
4,NULL,"2020-12-09",5),
(15,8,"2020-12-01",2,
"Drop package next door",NULL,NULL),
(16,12,"2021-01-22",4,
NULL,"2021-04-26",2),
(17,20,"2021-02-08",4,NULL,
"2021-06-18",4),
(18,25,"2021-02-25",4,
"Call before delivery","2021-08-12",1),
(19,2,"2021-03-14",4,
NULL,"2021-09-28",2),
(20,13,"2021-04-30",2,
NULL,NULL,8),
(21,15,"2021-06-16",4,
"Do Not Disturb","2021-06-22",5),
(22,6,"2021-08-02",
4,NULL,"2021-08-08",1),
(23,19,"2021-09-18",
3,"Drop package next door",NULL,NULL),
(24,20,"2021-11-04",3,
NULL,NULL,NULL),
(25,28,"2021-12-21",
4,NULL,"2021-12-24",2),
(26,6,"2022-01-06",4,
"Call before delivery","2022-01-10",3),
(27,19,"2022-01-25",
4,NULL,"2022-01-28",3),
(28,13,"2022-02-11",4,
"Do Not Disturb","2022-02-14",5),
(29,23,"2022-02-27",
2,"Do Not Disturb",NULL,NULL),
(30,22,"2022-03-13",
2,NULL,NULL,3);	


Select * from store_db_nazeer_hw.orders;

Update orders
Set Order_date = "2019-01-22"
Where Order_ID = 1;

Update orders
Set Shipped_date = "2019-01-27"
Where Order_ID = 1;

Update orders
Set Order_date = "2019-03-30"
Where Order_ID = 2;

Update orders
Set Shipped_date = "2019-08-12"
Where Order_ID = 2;


-- ORDER_STATUS TABLE IN STORE_DB_NAZEER_HW DB

Use STORE_DB_NAZEER_HW;
insert into order_statuses values 
(1,"Open"),
(2,"Processed"),
(3,"Fulfilled"),
(4,"Delivered"),
(5,"Cancelled");
SELECT * FROM store_db_nazeer_hw.order_statuses;

-- SHIPPER TABLE FROM STORE_DB_NAZEER_HW DB

Use STORE_DB_NAZEER_HW;
insert into shipper values 
(1,"P&G In"),
(2,"Reckkit Benkiser"),
(3,"HUL Inc"),
(4,"K.C.Das"),
(5,"M&M Dist"),
(6,"Gen Pharma"),
(7,"Global Stationary"),
(8,"FreshOfresH");
Select * from store_db_nazeer_hw.shipper;

-- ORDER_ITEMS TABLE - DATA INSERTED 

insert into order_items values 
(1,4,4,404.36),
(2,1,2,1110.61),
(2,4,4,404.36),
(3,3,10,30.64),
(4,3,7,30.64),
(4,10,7,75.97),
(5,2,3,45.68),
(6,1,4,1110.61),
(6,2,4,45.68),
(6,3,4,30.64),
(7,3,7,30.64),
(8,5,2,62.24),
(8,8,2,202.66),
(9,6,5,42.70),
(10,1,10,1110.61),
(10,9,9,20.19),
(11,6,2,42.70),
(12,3,2,30.64),
(12,5,1,62.24),
(13,1,3,1110.61),
(14,3,1,30.64),
(15,1,5,1110.61),
(15,2,2,45.68),
(15,6,1,42.70),
(16,1,1,1110.61),
(17,5,3,62.24),
(17,2,1,45.68),
(18,1,5,1110.61),
(18,4,2,404.36),
(18,3,1,30.64),
(19,5,4,62.24),
(20,3,7,30.64),
(21,4,2,404.36),
(21,6,2,42.70),
(22,8,5,202.66),
(23,8,1,202.66),
(24,8,9,202.66),
(25,6,2,42.70),
(26,1,2,1110.61),
(26,3,1,30.64),
(27,1,7,1110.61),
(28,6,3,42.70),
(28,8,4,202.66),
(28,9,2,20.19),
(28,3,1,30.64),
(29,9,4,20.19),
(30,1,2,1110.61),
(30,5,8,62.24),
(30,8,4,202.66);

SELECT * FROM store_db_nazeer_hw.order_items;



-- INVOICING_DB - CLIENTS TABLE FIRST

Use invoicing_db;
Select * from invoicing_db.clients;

insert into clients values
(1,"Laxmi Traders","17 Wallers Rd","Chennai","TN","4428535232"),
(2,"Twindale Market","51/c Tamwekar Niwas","Mumbai","MH","2224224938"),
(3,"Lokamat Stores","Unit No 13 Mahalaxmi Layout","Hyderabad","TS",
"4066832371"),
(4,"Kwalities Inc","8-b Manek Apartments","Mumbai","MH","2125845483"),
(5,"Surabhi Store","808 100ft ring rd bsk 3stg","Bangalore","KA",
"852674256"),
(6,"Lalwani Co.","Sector C Telangana Indl estate","Hyderabad","TS",
"4066846842"),
(7,"KC-Das Group","18/19 Mohan Shopping Complex","Mumbai","MH",
"2212248532"),
(8,"South-India Bro's","#25 80ft rd Koramangala","Bangalore","KA",
"8366723071");

-- INVOICING_DB - INVOICES TABLE SECOND

Use invoicing_db;
Select * from invoicing_db.invoices;

insert into invoices values
(1,3,"15153.82","600.63","2019-01-07",
"2019-02-07","2019-02-17"),
(2,1,"18953.39","8955.35","2019-02-28",
"2019-03-29","2019-03-03"),
(3,3,"18284.29","0",
"2019-03-08","2019-04-08",NULL),
(4,2,"12227.56","0",
"2019-04-09","2019-05-09",NULL),
(5,1,"19462.72","0",
"2019-06-30","2019-07-30",NULL),
(6,7,"22718.12","0",
"2019-12-20","2020-01-20",NULL),
(7,5,"21642.99","5137.76",
"2020-01-23","2020-02-23","2020-02-25"),
(8,5,"21060.39","982.63",
"2020-02-11","2020-03-11","2020-03-12"),
(9,5,"16218.13","10503.76","2020-02-25",
"2020-03-25","26-04-20"),
(10,1,"19160.00","0","2020-04-30",
"2020-05-30",NULL),
(11,5,"20681.99","0",
"2020-05-09","2020-06-09",NULL),
(12,7,"20344.44","0",
"2020-06-18","2020-07-18",NULL),
(13,3,"15181.45","8180.54",
"2020-07-30","2020-08-30","2020-09-15"),
(14,5,"17777.36","0","2020-10-31",
"2020-11-30",NULL),
(15,3,"16081.19","0",
"2020-11-04","2020-12-04",NULL),
(16,3,"20095.78","9647.27",
"2020-12-25","2021-01-25","2021-01-15"),
(17,1,"16153.26","0",
"2021-01-23","2021-02-23",NULL),
(18,5,"18111.31","3936.51",
"2021-02-02","2021-03-02","2021-03-02"),
(19,8,"13243.83","1213.27",
"2021-02-08","2021-03-08","2021-03-18"),
(20,5,"18111.31","0",
"2021-03-10","2021-04-10",NULL),
(21,1,"14415.05","3630.19",
"2021-04-03","2021-05-03","2021-05-03"),
(22,2,"30097.42","0",
"2021-04-16","2021-05-16",NULL),
(23,3,"12036.57","0",
"2021-05-08","2021-06-08",NULL),
(24,7,"15027.69","0",
"2021-05-18","2021-06-18",NULL),
(25,8,"18739.56","1801.88",
"2021-05-25","2021-06-25","2021-06-20"),
(26,1,"28321.97",
"3027.16","2021-05-28","2021-06-28","2021-06-28");

-- INVOICING_DB - PAYMENT_METHODS THIRD TABLE

Use invoicing_db;
Select * from invoicing_db.payment_methods;

insert into payment_methods values
(1,"Credit Card"),
(2,"Cash"),
(3,"PayTM"),
(4,"Net Banking"),
(5,"UPI"),
(6,"Cheque");

-- INVOICING_DB - PAYMENTs THIRD TABLE

Use invoicing_db;
Select * from invoicing_db.payments;

insert into payments values
(1,1,"2019-02-17",600.63,1),
(2,8,"2020-03-12",982.63,2),
(3,19,"2021-03-18",1213.27,2),
(4,25,"2021-06-20",1801.88,3),
(5,26,"2021-06-28",3027.16,3),
(6,21,"2021-05-03",3630.19,4),
(7,18,"2021-03-02",3936.51,1),
(8,7,"2020-02-25",5137.76,2),
(9,13,"2020-09-15",8180.54,4),
(10,2,"2019-03-03",8955.35,4),
(11,16,"2021-01-15",9647.27,2),
(12,9,"2020-04-26",10503.76,3);


























	