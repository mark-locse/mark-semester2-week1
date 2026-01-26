-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 books.db
-- 2. Load this script: .read tasks.sql
-- 3. Exit SQLite: .exit


-- write your sql code here

-- Extension Question #1 --
Select title from books
Where genre='Fantasy' and rating>4.0
order by rating desc
Limit 5;

-- Extension Question #2 --
Select title from books
Where genre='Science Fiction' and published_year>2010
order by published_year desc
Limit 5;

-- Extension Question #3 --
Select title from books
order by Pages asc
Limit 10;

-- Extension Question #4 --
Select title from books
where published_year < 1950 and Pages>300
order by published_year asc;

-- Extension Question #5 --
Select genre, avg(rating) from books
group by genre
order by avg(rating) desc;
