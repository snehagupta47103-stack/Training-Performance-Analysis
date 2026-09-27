USE training_performance;

-- S2a. Average score by department
SELECT
    c.department,
    AVG(a.score) AS average_score
FROM assessments a
JOIN courses c
    ON a.course_id = c.course_id
GROUP BY c.department;

-- S2b. Courses with average score below 60
SELECT
    c.course_id,
    c.course,
    AVG(a.score) AS average_score
FROM assessments a
JOIN courses c
    ON a.course_id = c.course_id
GROUP BY c.course_id, c.course
HAVING AVG(a.score) < 60;

-- S2c. Top 2 batches by average score
SELECT
    batch,
    AVG(score) AS average_score
FROM assessments
GROUP BY batch
ORDER BY average_score DESC
LIMIT 2;

-- Diagnostic LEFT JOIN
SELECT
    a.assessment_id,
    a.course_id,
    c.course,
    c.department,
    a.score
FROM assessments a
LEFT JOIN courses c
    ON a.course_id = c.course_id
ORDER BY a.assessment_id;