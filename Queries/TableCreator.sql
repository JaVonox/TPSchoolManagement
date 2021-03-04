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