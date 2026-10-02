CREATE TABLE Student8 (
    ID INT,
    Name VARCHAR(20),
    Marks INT
);

INSERT INTO Student8 VALUES
(1, 'Diganth', 80),
(2, 'Rahul', 70);

DELIMITER //

CREATE PROCEDURE ShowStudents()
BEGIN
    SELECT * FROM Student8;
END //

DELIMITER ;

CALL ShowStudents();

DELIMITER //

CREATE PROCEDURE AddStudent(
    IN id INT,
    IN name VARCHAR(20),
    IN marks INT
)
BEGIN
    INSERT INTO Student8 VALUES (id, name, marks);
END //

DELIMITER ;

CALL AddStudent(3, 'Kiran', 90);

DELIMITER //

CREATE PROCEDURE UpdateStudent(
    IN sid INT,
    IN newmarks INT
)
BEGIN
    UPDATE Student8
    SET Marks = newmarks
    WHERE ID = sid;
END //

DELIMITER ;

CALL UpdateStudent(1, 95);

DELIMITER //

CREATE PROCEDURE DeleteStudent(
    IN sid INT
)
BEGIN
    DELETE FROM Student8
    WHERE ID = sid;
END //

DELIMITER ;

CALL DeleteStudent(2);

SELECT * FROM Student8;