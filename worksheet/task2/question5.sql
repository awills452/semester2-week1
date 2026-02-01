-- For each student, calculate the total number of credits from courses they passed. Assume a passing grade is 40 or higher.
-- Expected Columns:
-- StudentId, FirstName, LastName, TotalCreditsPassed

SELECT s.StudentId, s.FirstName, s.LastName, COALESCE(SUM(c.Credits), 0) AS TotalCreditsPassed
FROM Student s, Enrolment e, Course c
WHERE s.StudentId = e.StudentId 
  AND e.CourseId = c.Courseld 
  AND e.Grade >= 40
GROUP BY s.StudentId;