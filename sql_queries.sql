CREATE DATABASE student_analysis;
USE student_analysis;
CREATE TABLE students (
    Exam_Score INT,
    Attendance INT,
    Hours_Studied INT,
    Previous_Scores INT,
    Motivation_Level VARCHAR(50),
    Tutoring_Sessions INT,
    Performance_Level VARCHAR(20)
);
SELECT COUNT(*) FROM students;
SELECT Performance_Level, COUNT(*) 
FROM students
GROUP BY Performance_Level;


SELECT 
    AVG(Exam_Score) AS Avg_Exam_Score
FROM students;

SELECT 
    Performance_Level,
    AVG(Attendance) AS Avg_Attendance
FROM students
GROUP BY Performance_Level;


SELECT 
    Performance_Level,
    AVG(Hours_Studied) AS Avg_Study_Hours
FROM students
GROUP BY Performance_Level;

SELECT 
    Performance_Level,
    AVG(Attendance) AS Avg_Attendance
FROM students
WHERE Performance_Level IN ('Top Performer','Weak Performer')
GROUP BY Performance_Level;

SELECT Performance_Level, COUNT(*) AS cnt
FROM students
GROUP BY Performance_Level;

SELECT 
    Performance_Level,
    AVG(Hours_Studied) AS Avg_Study_Hours
FROM students
WHERE Performance_Level IN ('Top Performer', 'Weak Performer')
GROUP BY Performance_Level;

SELECT 
    Tutoring_Sessions,
    AVG(Exam_Score) AS Avg_Score
FROM students
GROUP BY Tutoring_Sessions
ORDER BY Tutoring_Sessions;

SELECT 
    Motivation_Level,
    AVG(Exam_Score) AS Avg_Score
FROM students
GROUP BY Motivation_Level
ORDER BY Avg_Score DESC; 

SELECT 
    Performance_Level,
    AVG(Attendance) AS Avg_Attendance,
    AVG(Hours_Studied) AS Avg_Study_Hours
FROM students
WHERE Performance_Level = 'Weak Performer'
GROUP BY Performance_Level;









