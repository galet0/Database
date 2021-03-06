CREATE DATABASE one_to_one_relationship;
USE one_to_one_relationship;


CREATE TABLE passports(
passport_id INT PRIMARY KEY NOT NULL,
passport_number VARCHAR(50)
);

CREATE TABLE persons(
person_id INT PRIMARY KEY NOT NULL,
first_name VARCHAR(50),
salary DECIMAL(10,2),
passport_id INT UNIQUE,
CONSTRAINT FK_persons_passports FOREIGN KEY (passport_id)
REFERENCES passports(passport_id)
);



INSERT INTO passports(passport_id, passport_number)
VALUES (101, 'N34FG21B'),
		 (102,	'K65LO4R7'),
		 (103,	'ZE657QP2');

INSERT INTO persons(person_id, first_name, salary, passport_id)
VALUES (1, 'Roberto', 43300.00, 102),
		 (2, 'Tom', 56100.00, 103),
		 (3, 'Yana', 60200.00, 101);