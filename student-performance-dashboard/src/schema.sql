DROP DATABASE IF EXISTS studentdb;
CREATE DATABASE studentdb;
USE studentdb;

DROP TABLE IF EXISTS students;

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    marks1 INT,
    marks2 INT,
    attendance FLOAT,
    total INT,
    percentage FLOAT,
    result VARCHAR(10),
    grade VARCHAR(2),
    remark VARCHAR(20),
    fail_reason VARCHAR(50)
);
