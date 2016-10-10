CREATE DATABASE self_referencing;
USE self_referencing;

CREATE TABLE teachers(
teacher_id INT PRIMARY KEY NOT NULL,
name VARCHAR(50),
manager_id INT NULL,
CONSTRAINT FK_teachers_teachers FOREIGN KEY (manager_id)
REFERENCES teachers(teacher_id)
);


INSERT INTO teachers(teacher_id, name, manager_id)
VALUES (101,'John',NULL);

INSERT INTO teachers(teacher_id, name, manager_id)
VALUES (106,'Greta',101);


INSERT INTO teachers(teacher_id, name, manager_id)
VALUES (105,'Mark',101);


INSERT INTO teachers(teacher_id, name, manager_id)
VALUES (102,'Maya',106),
		 (103,'Silvia',106),
		 (104,'Ted',105);
		 
		 

