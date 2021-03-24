CREATE DATABASE lecturer;

USE lecturer;

CREATE TABLE lecturers(
    lec_id INT PRIMARY KEY AUTO_INCREMENT,
    lec_fname VARCHAR(15),
    lec_lname VARCHAR(15),
    department VARCHAR(25),
    major VARCHAR(15) NOT NULL,
    minor VARCHAR(15) DEFAULT "undicided"
);

INSERT INTO lecturers(lec_fname, lec_lname, department, major,minor) VALUES("Malan", "Jarju", "Information Com", "Networking", "Computer Sci");

INSERT INTO lecturers(lec_fname, lec_lname, department, major) VALUES("Alan", "Abass", "Information Com", "Networking");

INSERT INTO lecturers(lec_fname, lec_lname, department, major) VALUES("Lamin", "Touray", "Information Com", "Java");

INSERT INTO lecturers(lec_fname, lec_lname, department, major, minor) VALUES("Adb Al", "Camara", "Information Com", "Web", "Database");

INSERT INTO lecturers(lec_fname, lec_lname, department, major, minor) VALUES("Maty", "Mybe", "Management", "Management", "English");

INSERT INTO lecturers(lec_fname, lec_lname, department, major) VALUES("Yankuba", "Camara", "Management", "Management");

-- check for the lectureres with no minor
SELECT * FROM lecturers WHERE minor = "undicided";

SELECT * FROM lecturers WHERE minor = "undicided" && department = "Management";

-- update table and columns
UPDATE lecturers 
SET minor = "Statistic"
WHERE lec_id = 6;

UPDATE lecturers 
SET minor = "Gender"
WHERE minor = "English";

-- set the major to Mgnt
UPDATE lecturers 
SET major = "Mgnt"
WHERE major = "Management";

-- update multiples columns
UPDATE lecturers
SET minor = "Com Sci Co"
WHERE major = "Networking";

-- select all the lecturers
UPDATE lecturers
SET department = "I.T";

-- delete records from the table
DELETE FROM lecturers
WHERE lec_id = 5;