CREATE DATABASE many_to_many_relationship;
USE many_to_many_relationship;

CREATE TABLE students(
student_id INT PRIMARY KEY NOT NULL,
name VARCHAR(50)
);

CREATE TABLE exams(
exam_id INT PRIMARY KEY NOT NULL,
name VARCHAR(50)
);

CREATE TABLE students_exams(
student_id INT,
exam_id INT,
PRIMARY KEY (student_id, exam_id)
);


ALTER TABLE students_exams
ADD CONSTRAINT FK_student_id_students FOREIGN KEY(student_id)
REFERENCES students (student_id),
ADD CONSTRAINT FK_exam_id_exams FOREIGN KEY(exam_id)
REFERENCES exams (exam_id);

INSERT INTO students(student_id, name)
VALUES (1,	'Mila'),
		 (2,	'Toni'),
		 (3,	'Ron');
		 

INSERT INTO exams(exam_id, name)
VALUES (101,	'Spring MVC'),
		 (102,	'Neo4j'),
		 (103,	'Oracle 11g');
		 
INSERT INTO students_exams(student_id,exam_id)
VALUES (1,	101),
		 (1,	102),
		 (2,	101),
		 (3,	103),
		 (2,	102),
		 (2,	103);
