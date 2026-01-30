-- List all students along with the names of the courses they are enrolled in.
-- Expected Columns:
-- StudentId, FirstName, LastName, CourseName
Select st.StudentID, st.FirstName, st.LastName, co.CourseName from student st, enrolment en, course co
WHERE st.StudentID=en.StudentID AND en.CourseID=co.CourseID;