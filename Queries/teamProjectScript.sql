--SQL script Mubashar's side draft No.1
create table Person
( Person_ID int,
  First_Name varchar(30),
  Last_Name varchar(30),
  Date_Of_Birth Date,
  Role varchar(20),
  Start_Date Date,
  Sex varchar(10),
  Address varchar(100), -- Address need more details, could be its own table
  Phone_Number int, --Person could have more than one number
  Medical_Information varchar(100), 
  --This could be its own table, Medical_Information could be more detailed and could go beyond 100 characters
  Comments varchar(100), -- Comments could be recorded for reference, may need its own table.
  primary key(Person_ID));

create table Credit
( Person_ID int,
  Balance int, --Type may be changed
  Last_Top_Up Date,
  primary key(Person_ID)
  foreign key(Person_ID) references Person);
  
create table Transactions
( Transaction_ID int,
  Person_ID int,
  Transaction_Value int, --Type may be changed
  Date_Of_Transaction Date,
  Primary key(Transaction_ID),
  foreign key(Person_ID) references Credit);

create table Staff
( Person_ID int,
  Salary int,
  Function varchar(20),
  Education_and_Qualification varchar(100), --Would need its own table for more details
  Work_Experience varchar(100), --Could beyond 100 characters and may not be needed here
  National_Insurance varchar(8),
  Tax_Code varchar(10),
  Bank_Details varchar(100), --More details
  Department_ID int, --This might have to be removed
  primary key(Person_ID),
  foreign key(Person_ID) references Person,
  foreign key(Department_ID) references Department);
  
--Anything with varchar(100) may need its own table.
--The staff table won't be able to reference the department
--table if the table is made before the department table.
--There will also be a problem with creating the department table
--if it references the staff table for the Person_ID. It should reference
--the person table.
--If we are keepin Department_ID in this table, then department should
--be placed before the staff table. -Mubashar

