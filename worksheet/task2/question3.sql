-- For each department, calculate the number of enrolments in its courses.
-- Expected Columns:
-- DepartmentName, TotalEnrolments
Select dep.DepartmentName, count(en.StudentId) as TotalEnrolments from department dep, course c, enrolment en
WHERE en.CourseID = c.CourseID AND c.departmentID = dep.departmentID
Group by dep.DepartmentName;
