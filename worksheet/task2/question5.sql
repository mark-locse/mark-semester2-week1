-- For each student, calculate the total number of credits from courses they passed. Assume a passing grade is 40 or higher.
-- Expected Columns:
-- StudentId, FirstName, LastName, TotalCreditsPassed
Select st.StudentID, st.FirstName, st.LastName, sum(en.Grade) as TotalCreditsPassed from student st, enrolment en
WHERE st.StudentID=en.StudentID
group by st.StudentID;
