-- Task 3

-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 countries.db
-- 2. Load this script: .read task3.sql
-- 3. Exit SQLite: .exit


-- write your sql code here

Select Continent, sum(AreaSqMi), sum(ArablePercent), avg(Birthrate) from countries
Where Population > 10000000
Group by Continent;


