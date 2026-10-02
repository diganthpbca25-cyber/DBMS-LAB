CREATE TABLE Student (
    ID INT,
    Name VARCHAR(20),
    Course_ID INT
);

INSERT INTO Student VALUES
(1, 'Diganth', 101),
(2, 'Rahul', 102),
(3, 'Kiran', 103);


CREATE TABLE Course (
    Course_ID INT,
    Course_Name VARCHAR(20)
);

INSERT INTO Course VALUES
(101, 'BCA'),
(102, 'BBA'),
(104, 'BCom');

SELECT Student.Name, Course.Course_Name
FROM Student
INNER JOIN Course
ON Student.Course_ID = Course.Course_ID;

SELECT Student.Name, Course.Course_Name
FROM Student
LEFT JOIN Course
ON Student.Course_ID = Course.Course_ID;

SELECT Student.Name, Course.Course_Name
FROM Student
RIGHT JOIN Course
ON Student.Course_ID = Course.Course_ID;

SELECT Name, Course_Name
FROM Student
NATURAL JOIN Course;