-- Assignment #3
-- william Ng
drop table student;
create database EnrollmentSystem;
use EnrollmentSystem;
-- 1.1 
CREATE TABLE student (
	studentID INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    department VARCHAR(100)
);

-- 1.2
CREATE TABLE course (
	courseID INT PRIMARY KEY,
    name VARCHAR(100),
    credits INT
);

-- 1.3
CREATE TABLE Enrollments (
    enrollmentID INT PRIMARY KEY,
    studentID INT,
    courseID INT,
    grade CHAR(2),
    FOREIGN KEY (studentID) REFERENCES student(studentID),
    FOREIGN KEY (courseID) REFERENCES course(courseID)
);

-- 1.4
INSERT INTO student (studentID, name, age, department)
VALUES 	(001, 'John Doe', 22, 'Computer Engineering'),
		(002, 'Jane Smith', 21, 'Computer Science'),
        (003, 'Dwayne Johnson', 25, 'Electrical Engineering');

INSERT INTO course (courseID, name, credits)
VALUES	(336000, 'Database Systems', 3),
		(342000, 'Computer Organization', 4),
        (457000, 'Digital Integrated Circuits', 3);

INSERT INTO Enrollments (enrollmentID, studentID, courseID, grade)
VALUES 	(1001, 001, 336000, 'A'),
		(1002, 002, 342000, 'B+'),
        (1003, 003, 457000, 'A+');

-- 1.6
SELECT student.name AS StudentName, course.name AS CourseName
FROM Enrollments
JOIN student ON Enrollments.studentID = student.studentID
JOIN course ON Enrollments.courseID = course.courseID;

INSERT INTO course (courseID, name, credits)
VALUES  (392000, 'Linear Algebra Vector Analysis',3),
        (101000, 'Engineering Lab', 1);

-- 1.7
SELECT course.name AS CourseName, student.name AS StudentName
FROM course
LEFT JOIN Enrollments ON course.courseID = Enrollments.courseID
LEFT JOIN student ON Enrollments.studentID = student.studentID;


