CREATE DATABASE studentdb;

USE studentdb;

-- create schemas / tables
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    fname VARCHAR(15),
    lname VARCHAR(15),
    program VARCHAR(25) DEFAULT "undicieded",
    gpa DECIMAL(3,2) DEFAULT 0.00
);

-- check the date types of the table
DESCRIBE student;

-- delete table or drop
DROP TABLE student;

-- add new column 
ALTER TABLE student ADD gpa DECIMAL(3,2);

-- delete column
ALTER TABLE student DROP CLOUMN gpa;

-- insert data into student table
INSERT INTO student VALUES(0536, "Ebrima", "Touray", "Computer Science", 4.00);


-- add a student with a missing inform
INSERT INTO student(student_id, fname, lname, program) VALUES(0646, "Omar", "Cham", "Computer Science");
INSERT INTO student(student_id, fname, lname) VALUES(0586, "Ismaila", "Turner",);
INSERT INTO student(student_id, fname, lname, program) VALUES(0556, "Momodou", "Jaiteh", "Computer Science");
INSERT INTO student(student_id, fname, lname, program) VALUES(0756, "Maraim", "Faal", "Banking & Finance");


-- update the gpa of the student in banking and finance dep
UPDATE student
SET gpa = 3.8
WHERE program = "Banking & Finance";

-- update ismaila's program
UPDATE student
SET program = "Computer Science"
WHERE program = "undicided";

-- change program to Com Sci
UPDATE student
SET program = "Com Sci"
WHERE program = "Computer Science";

-- Update the gpa for the student with zero gpa
UPDATE student 
SET gpa = 3.5
WHERE gpa = 0.00;

-- check for the student with the highest gpa
SELECT * FROM student
WHERE gpa >= 4;

-- select with a range using AND operator -- you can also use AND instead
SELECT * FROM student
WHERE gpa >= 3.04 && gpa <= 3.8;

INSERT INTO student(student_id, fname, lname, program, gpa) VALUES(0766, "Sainabou", "Jeng", "Gender", 2.4);

-- select with a range using OR operator
SELECT * FROM student
WHERE gpa >= 3.04 || gpa <= 3.8;


