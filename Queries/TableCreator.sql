/*
One to One - Foreign key on one side (both) - This *Does not work*. we'll have to set up one to one the same way as one to many.
One to Many - Foreign key on Many side to link to One
Many to Many - Buffer table to convert to One to Many
*/

create table Person
( Person_ID int AUTO_INCREMENT,
  First_Name varchar(30),
  Last_Name varchar(30),
  Date_Of_Birth Date,
  Role varchar(20),
  Start_Date Date,
  Sex varchar(10),
  Address text,
  Phone_Number varchar(20),
  Medical_Information text, 
  Comments text,
  primary key(Person_ID));

CREATE TABLE Class( /*one to many with assessment, one to many with student, one to many with lesson*/
Class_ID int PRIMARY KEY AUTO_INCREMENT,
Class_Name varchar(50) NOT NULL,
Class_Year int NOT NULL
);

CREATE TABLE Department( /*One to many with subject. One to many with staff, one to one with staff*/
Department_ID int PRIMARY KEY AUTO_INCREMENT,
Department_Name varchar(50) NOT NULL,
Budget decimal(15,2)
);

CREATE TABLE Classroom( /* one to many with lesson */
Classroom_ID int PRIMARY KEY AUTO_INCREMENT,
Classroom_Name varchar(50),
Classroom_Location varchar(50) NOT NULL,
Maximum_Capacity int NOT NULL
);

CREATE TABLE Student(
	Person_ID int PRIMARY KEY,
	Class_ID int NOT NULL,
	Guardian_ID int NOT NULL,
	Guardian_Relationship varchar(30) NOT NULL,
	
	FOREIGN KEY (Person_ID) references Person(Person_ID) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (Class_ID) references Class(Class_ID) ON DELETE CASCADE ON UPDATE CASCADE , 
	FOREIGN KEY (Guardian_ID) references Person(Person_ID) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Subject(
	Subject_ID int PRIMARY KEY AUTO_INCREMENT,
	Department_ID int NOT NULL,
	Subject_Name varchar(30) NOT NULL,
	Length int NOT NULL,
	Level int NOT NULL,
	Number_Of_Exams int NOT NULL,

	FOREIGN KEY (Department_ID) references Department(Department_ID) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE Subject_Grade(
	Subject_ID int,
	Student_ID int,
	CurrentYear int,
	Grade int,
	Feedback text,
	
	PRIMARY KEY (Subject_ID, Student_ID, CurrentYear),

	FOREIGN KEY (Student_ID) references Student(Person_ID) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (Subject_ID) references Subject(Subject_ID) ON DELETE CASCADE ON UPDATE CASCADE
	
);


CREATE TABLE Assessment(
	Assessment_ID int PRIMARY KEY AUTO_INCREMENT,
	Assessment_Type varchar(30) NOT NULL,
	Assessment_Name varchar(255) NOT NULL,
	Subject_ID int NOT NULL,
	Class_ID int NOT NULL,
	Date_Assigned datetime NOT NULL,
	Date_Due datetime NOT NULL,
	Date_Extension datetime NOT NULL,
	Duration int NOT NULL,
	Teacher_Comments text NOT NULL,

	FOREIGN KEY (Subject_ID) references Subject(Subject_ID) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (Class_ID) references Class(Class_ID) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Assessment_Grade(
	Student_ID int,
	Assessment_ID int,
	Grade int,
	Feedback text,
	
	PRIMARY KEY (Student_ID, Assessment_ID),

	FOREIGN KEY (Student_ID) references Student(Person_ID) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (Assessment_ID) references Assessment(Assessment_ID) ON DELETE CASCADE ON UPDATE CASCADE
	
);

CREATE TABLE Lesson( /*many to one with subject, many to one with class, many to one with classroom, many to one with staff, one to many with student in lesson*/
Lesson_ID int PRIMARY KEY AUTO_INCREMENT,
Class_ID int NOT NULL,
Subject_ID int NOT NULL,
Classroom_ID int NOT NULL,
Lesson_Date DATETIME NOT NULL, /* To allow for times to be implemented too */
Staff_Person_ID int, /*Person_ID but just for staff*/
FOREIGN KEY (Class_ID) references Class(Class_ID),
FOREIGN KEY (Classroom_ID) references Classroom(Classroom_ID),
FOREIGN KEY (Subject_ID) references Subject(Subject_ID)
);

CREATE TABLE Student_In_Lesson( /*Many to one with lesson, Many to one with Student*/
/* Buffer table for many to many student and lesson table */
Student_ID int NOT NULL,
Lesson_ID int NOT NULL,
IsPresent Boolean NOT NULL,
PRIMARY KEY (Student_ID, Lesson_ID),
FOREIGN KEY (Lesson_ID) references Lesson(Lesson_ID),
FOREIGN KEY (Student_ID) references Student(Person_ID)
);

CREATE TABLE Login(
Person_ID int PRIMARY KEY,
Password varchar(64) NOT NULL,
FOREIGN KEY (Person_ID) references Person(Person_ID) ON DELETE CASCADE ON UPDATE CASCADE
); 

create table Credit
( Person_ID int,
  Balance decimal(5,2),
  Last_Top_Up Date,
  primary key(Person_ID),
  foreign key(Person_ID) references Person(Person_ID));
  
create table Transactions
( Transaction_ID int,
  Person_ID int,
  Transaction_Value decimal(5,2),
  Date_Of_Transaction DateTime,
  Primary key(Transaction_ID),
  foreign key(Person_ID) references Credit(Person_ID));

create table Staff
( Person_ID int,
  Salary decimal(9,2),
  Role varchar(20),                            
  Education_and_Qualification text,
  Work_Experience text,
  National_Insurance varchar(9),
  Tax_Code varchar(6),
  Bank_Details text,
  Department_ID int,
  LeaderOf int,
  primary key(Person_ID),
  foreign key(Person_ID) references Person(Person_ID),
  foreign key(Department_ID) references Department(Department_ID),
  foreign key(LeaderOf) references Department(Department_ID)
  );
