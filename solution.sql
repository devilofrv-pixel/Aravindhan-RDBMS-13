DROP DATABASE IF EXISTS CollegeDB;
CREATE DATABASE CollegeDB;
USE CollegeDB;
CREATE TABLE Student (
StudentID INT PRIMARY KEY,
StudentName VARCHAR(50),
CourseName VARCHAR(50),
FacultyName VARCHAR(50),
DepartmentName VARCHAR(50)
);
INSERT INTO Student VALUES
(101,
(102,
(103,
(104,
'Arun'
'BCA'
'Dr. Kumar'
,
,
,
'Bala'
'BCA'
'Dr. Kumar'
,
,
,
'Divya'
'BSc CS'
,
,
'Dr. Priya'
,
'Meena'
'BCom'
'Dr. Ravi'
,
,
,
'Computer Science'),
'Computer Science'),
'Computer Science'),
'Commerce');
CREATE TABLE Student
_
1NF ( StudentID INT PRIMARY KEY, StudentName VARCHAR(50), CourseName
VARCHAR(50), FacultyName VARCHAR(50), DepartmentName VARCHAR(100) );
INSERT INTO Student
_
'Priya'
'BCA'
'Dr. Kumar'
,
,
,
Science'), (104,
'Suresh'
,
1NF VALUES (101,
'Arun'
'BCA'
'Dr. Kumar'
,
,
,
'Computer Applications'), (103,
'Ravi'
'BSc CS'
,
,
'BCA'
'Dr. Kumar'
,
,
'Computer Applications');
'Computer Applications'), (102,
'Dr. Meena'
,
'Computer
SELECT * FROM Student
1NF;
_
CREATE TABLE Course ( CourseID INT PRIMARY KEY, CourseName VARCHAR(50) NOT NULL, FacultyName
VARCHAR(50), DepartmentName VARCHAR(100) );
INSERT INTO Course VALUES (1,
'Computer Science');
'BCA'
,
'Dr. Kumar'
,
'Computer Applications'), (2,
'BSc CS'
,
'Dr. Meena'
,
CREATE TABLE Student ( StudentID INT PRIMARY KEY, StudentName VARCHAR(50) NOT NULL, CourseID
INT, FOREIGN KEY (CourseID) REFERENCES Course(CourseID) );
INSERT INTO Student VALUES (101,
'Arun'
, 1), (102,
'Priya'
, 1), (103,
'Ravi'
, 2), (104,
'Suresh'
, 1);
SELECT * FROM Student;
SELECT * FROM Course;
SELECT s.StudentID, s.StudentName, c.CourseName, c.FacultyName, c.DepartmentName FROM Student
s INNER JOIN Course c ON s.CourseID = CourceID;