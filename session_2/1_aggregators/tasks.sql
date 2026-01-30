-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 countries.db
-- 2. Load this script: .read tasks.sql
-- 3. Exit SQLite: .exit

-- Task 1 --
select Continent, avg(population) from countries
group by continent;

-- Task 2 --
select Continent, sum(population) from countries
group by continent;

-- Task 3 --
select Continent, Country, max(population) from countries
group by continent;

-- Task 4 --
select Continent, Country, min(AreaSqMi) from countries
group by continent;

-- Task 5 --
select Continent, count(country) from countries
group by continent;

-- Task 6 --
select Continent, avg(GDPPerCapita) from countries
group by continent
order by avg(GDPPerCapita) desc;

-- Task 7 --
select Country, population from countries
order by population desc
limit 5;

-- Task 8 --
select Country, infantmortalityper1000 from countries
order by infantmortalityper1000 asc
limit 5;

-- Task 9 --
select Continent, avg(literacypercent) from countries
group by continent
order by avg(literacypercent);

-- Task 10 --
select Continent, sum(population) from countries
group by continent
order by sum(population) desc
limit 3;

-- Task 11 --
select Continent, avg(population) from countries
where population>10000000
group by continent;

-- Task 12 --
select Continent, avg(GDPPerCapita) from countries
where literacypercent > 80
group by continent;

-- Task 13 --
select continent, country, max(birthrate) from countries
where infantmortalityper1000 < 30
group by continent;

-- Task 14 --
select Continent, avg(GDPPerCapita) from countries
where literacypercent > 80
group by continent having avg(GDPPerCapita)>10000
order by avg(GDPPerCapita) desc;

-- Task 15 --
select Continent, sum(population) from countries
where birthrate<20
group by continent having sum(population)>500000000
order by sum(population) desc
limit 3;