-- Find the 5 youngest students in the database.
-- Expected Columns:
-- StudentId, FirstName, LastName, DateOfBirth
Select StudentId, FirstName, LastName, DateOfBirth from Student
Order by DateOfBirth Desc
Limit 5;