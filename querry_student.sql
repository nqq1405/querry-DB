CREATE SCHEMA student_cmc_plusplus;
USE student_cmc_plusplus;

CREATE TABLE student(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    mssv VARCHAR(15),
    password VARCHAR(20),
    phone VARCHAR(10),
    address VARCHAR(100),
    age INT,
    email VARCHAR(50),
    created_timestamp DATETIME DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE student ADD last_updated_timestamp DATETIME;
ALTER TABLE student CHANGE last_updated_timestamp last_update_timestamp DATETIME DEFAULT NOW() ON UPDATE NOW();

CREATE TABLE class (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    major VARCHAR(10),
    total_student int,
    teacher_name VARCHAR(50),
    created_timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    last_update_timestamp DATETIME DEFAULT NOW() ON UPDATE NOW()
);

CREATE TABLE student_class (
	student_id varchar(10),
    class_id varchar(5)
);