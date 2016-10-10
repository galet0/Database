CREATE DATABASE university;
USE university;

CREATE TABLE majors(
major_id INT PRIMARY KEY NOT NULL,
name VARCHAR(50)
);

CREATE TABLE students(
student_id INT PRIMARY KEY NOT NULL,
student_number VARCHAR(12),
student_name VARCHAR(50),
major_id INT,
CONSTRAINT FK_students_majors FOREIGN KEY (major_id)
REFERENCES majors(major_id)
);

CREATE TABLE payments(
payment_id INT PRIMARY KEY NOT NULL,
payment_date DATE,
payment_amount DECIMAL(8,2),
student_id INT,
CONSTRAINT FK_payments_students FOREIGN KEY (student_id)
REFERENCES students(student_id)
);

CREATE TABLE subjects(
subject_id INT PRIMARY KEY NOT NULL,
subject_name VARCHAR(50)
);

CREATE TABLE agenda(
student_id INT,
subject_id INT,
CONSTRAINT PRIMARY KEY (student_id, subject_id),
CONSTRAINT FK_agenda_students FOREIGN KEY (student_id)
REFERENCES students(student_id),
CONSTRAINT FK_agenda_subjects FOREIGN KEY (subject_id)
REFERENCES subjects(subject_id)
);