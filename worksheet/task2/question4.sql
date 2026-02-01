-- List all students along with the names of the courses they are enrolled in.
-- Expected Columns:
-- StudentId, FirstName, LastName, CourseName

SELECT StudentId, FirstName, LastName, CourseName
FROM Student s, Enrolment e, Course c
WHERE s.StudentId = e.StudentId AND e.CourseId = c.Courseld;
