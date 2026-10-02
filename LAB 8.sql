CREATE TABLE Student7 (
    Name VARCHAR(20),
    Department VARCHAR(20),
    Marks INT
);

INSERT INTO Student7 VALUES
('Diganth', 'BCA', 80),
('Rahul', 'BCA', 70),
('Kiran', 'BBA', 60),
('Arun', 'BBA', 90);

SELECT Department, COUNT(*)
FROM Student7
GROUP BY Department;

SELECT Department, COUNT(*)
FROM Student7
GROUP BY Department
HAVING COUNT(*) > 1;

SELECT * FROM Student7
ORDER BY Marks;

SELECT * FROM Student7
ORDER BY Marks DESC;