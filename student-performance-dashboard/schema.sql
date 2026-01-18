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

INSERT INTO students(name, marks1, marks2, attendance) VALUES
('Jay',90,95,90.5),
('Praj',80,85,90),
('Sha',70,45,66),
('Hru',56,98,89);
