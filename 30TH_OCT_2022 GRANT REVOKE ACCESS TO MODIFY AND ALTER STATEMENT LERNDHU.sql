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


	


   
   
   
   

  
  

        