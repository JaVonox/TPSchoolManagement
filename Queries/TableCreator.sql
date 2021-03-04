--Lewis' tables
--Includes Student, Subject_Grade, Subject,
--Assessment_Grade and Assessment.


CREATE TABLE Student(
	Person_ID int PRIMARY KEY NOT NULL,
	Class_ID int NOT NULL,
	Guardian_ID int NOT NULL,
	Guardian_Relationship varchar(30) NOT NULL,
	
	--FOREIGN KEY (Person_ID) references Person(Person_ID) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (Class_ID) references Class(Class_ID) ON DELETE CASCADE ON UPDATE CASCADE,
	--FOREIGN KEY (Guardian_ID) references Person(Person_ID) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE Subject_Grade(
	Subject_ID int NOT NULL,
	Student_ID int NOT NULL,
	CurrentYear int NOT NULL,
	Grade int NOT NULL,
	Feedback varchar(100),
	Graded TINYINT NOT NULL,
	
	PRIMARY KEY (Subject_ID, Student_ID, CurrentYear),

	FOREIGN KEY (Student_ID) references Student(Person_ID) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (Subject_ID) references Subject(Subject_ID) ON DELETE CASCADE ON UPDATE CASCADE,
	
	CHECK (CurrentYear > 6 and CurrentYear < 12),
	CHECK (Graded = 0 or Graded = 1),
	CHECK (Grade >= 0)
);


CREATE TABLE Subject(
	Subject_ID int PRIMARY KEY NOT NULL AUTO_INCREMENT,
	Department_ID_ID int NOT NULL,
	Subject_Name varchar(30) NOT NULL,
	Length int NOT NULL,
	Level int NOT NULL,
	Number_Of_Exams int NOT NULL,

	FOREIGN KEY (Department_ID) references Department(Department_ID) ON DELETE CASCADE ON UPDATE CASCADE,
	
	CHECK (Length > 0 and Length < 6),
	CHECK (Number_Of_Exams >= 0),
	CHECK (Level >= 0)
);


CREATE TABLE Assessment(
	Assessment_ID int PRIMARY KEY NOT NULL AUTO_INCREMENT,
	Assessment_Type varchar(30) NOT NULL,
	Assessment_Name varchar(30) NOT NULL,
	Subject_ID int NOT NULL,
	Class_ID int NOT NULL,
	Date_Assigned datetime NOT NULL,
	Date_Due datetime NOT NULL,
	Date_Extension datetime NOT NULL,
	Duration int NOT NULL,
	Teacher_Comments varchar(150) NOT NULL,

	FOREIGN KEY (Subject_ID) references Subject(Subject_ID) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (Class_ID) references Class(Class_ID) ON DELETE CASCADE ON UPDATE CASCADE,
	
	CHECK (Date_Due > Date_Assigned and Date_Extension > Date_Due),
	CHECK (Duration > 0)
);


CREATE TABLE Assessment_Grade(
	Student_ID int NOT NULL,
	Assessment_ID int NOT NULL,
	Grade int NOT NULL,
	Feedback varchar(100),
	Graded TINYINT NOT NULL,
	
	PRIMARY KEY (Student_ID, Assessment_ID),

	FOREIGN KEY (Student_ID) references Student(Person_ID) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (Assessment_ID) references Assessment(Assessment_ID) ON DELETE CASCADE ON UPDATE CASCADE,
	
	CHECK (Grade >= 0),
	CHECK (Graded = 0 or Graded = 1)
	
);

/*
One to One - Foreign key on one side (both)
One to Many - Foreign key on Many side to link to One
Many to Many - Buffer table to convert to One to Many
*/

/* To be added, relations with other tables */

CREATE TABLE Department( /*One to many with subject. One to many with staff, one to one with staff*/
Department_ID int PRIMARY KEY NOT NULL AUTO_INCREMENT,
Department_Name varchar(50) NOT NULL,
Leader_ID int NOT NULL,
Budget decimal(15,2)
);

CREATE TABLE Class( /*one to many with assessment, one to many with student, one to many with lecture*/
Class_ID int PRIMARY KEY NOT NULL AUTO_INCREMENT,
Class_Name varchar(50) NOT NULL,
Class_Year int NOT NULL,
CHECK (Class_Year >= 7) /*This is a secondary school, students are at minimum year 7*/
);

CREATE TABLE Lecture( /*many to one with subject, many to one with class, many to one with classroom, many to one with staff, one to many with student in lecture*/
Lecture_ID int PRIMARY KEY NOT NULL AUTO_INCREMENT,
Class_ID int NOT NULL,
Subject_ID int NOT NULL,
Classroom_ID int NOT NULL,
Lesson_Date DATETIME NOT NULL, /* To allow for times to be implemented too */
Staff_Person_ID int NOT NULL, /*Person_ID but just for staff*/
FOREIGN KEY (Class_ID) references Class(Class_ID),
FOREIGN KEY (Classroom_ID) references Classroom(Classroom_ID)
);

CREATE TABLE Classroom( /* one to many with lecture */
Classroom_ID int PRIMARY KEY NOT NULL AUTO_INCREMENT,
Classroom_Name varchar(50),
Classroom_Location varchar(50) NOT NULL,
Maximum_Capacity int NOT NULL,
CHECK (Class_Year > 0) 
);

CREATE TABLE Student_In_Lecture( /*Many to one with lecture, Many to one with Student*/
/* Buffer table for many to many student and lecture table */
Student_ID int PRIMARY KEY NOT NULL,
Lecture_ID int NOT NULL,
IsPresent BOOL NOT NULL,
FOREIGN KEY (Lecture_ID) references Lecture(Lecture_ID)
);
