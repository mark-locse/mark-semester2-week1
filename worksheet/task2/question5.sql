-- For each student, calculate the total number of credits from courses they passed. Assume a passing grade is 40 or higher.
-- Expected Columns:
-- StudentId, FirstName, LastName, TotalCreditsPassed
Select st.StudentID, st.FirstName, st.LastName, sum(co.credits) as TotalCreditsPassed from student st, enrolment en, course co
WHERE st.StudentID=en.StudentID AND en.CourseID=co.courseID AND en.Grade>=40
group by st.StudentID, st.FirstName, st.LastName;
