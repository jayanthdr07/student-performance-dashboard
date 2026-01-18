USE studentdb;

INSERT INTO students(name, marks1, marks2, attendance) VALUES
('Jay',90,95,90.5),
('Praj',80,85,90),
('Sha',70,45,66),
('Hru',56,98,89);

UPDATE students
SET
  total = marks1 + marks2,
  percentage = (marks1 + marks2) / 2.0,
  result = CASE
            WHEN (marks1 + marks2)/2 >= 40 AND attendance >= 75 THEN 'PASS'
            ELSE 'FAIL'
           END,
  grade = CASE
            WHEN (marks1 + marks2)/2 >= 90 AND attendance >= 75 THEN 'A'
            WHEN (marks1 + marks2)/2 >= 75 AND attendance >= 75 THEN 'B'
            WHEN (marks1 + marks2)/2 >= 50 AND attendance >= 75 THEN 'C'
            ELSE 'F'
          END,
  remark = CASE
            WHEN (marks1 + marks2)/2 >= 90 AND attendance >= 75 THEN 'EXCELLENT'
            WHEN (marks1 + marks2)/2 >= 75 AND attendance >= 75 THEN 'GOOD'
            WHEN (marks1 + marks2)/2 >= 50 AND attendance >= 75 THEN 'AVERAGE'
            ELSE 'POOR'
          END,
  fail_reason = CASE
            WHEN (marks1 + marks2)/2 >= 40 AND attendance >= 75 THEN '-'
            WHEN attendance < 75 AND (marks1 + marks2)/2 < 40 THEN 'Low attendance and low marks'
            WHEN attendance < 75 THEN 'Low attendance'
            WHEN (marks1 + marks2)/2 < 40 THEN 'Low marks'
            ELSE 'Unknown'
          END;
