-- Calculate average score of all students
SELECT AVG(score) AS average_score FROM grades;

-- Count passed and failed students
SELECT
    CASE WHEN score >= 60 THEN 'Pass' ELSE 'Fail' END AS result,
    COUNT(student_id) AS student_count
FROM grades
GROUP BY result;

-- Average score by grade level
SELECT grade_level, AVG(score) AS avg_score
FROM grades
GROUP BY grade_level;
