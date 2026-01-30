-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 social.db
-- 2. Load this script: .read tasks.sql
-- 3. Exit SQLite: .exit

-- 1 --
--select id, content from posts
--where deleted=1;

-- 2 --
--select username from users
--where username like 'a%';

-- 3 --
--select u.username, p.content from users u, posts p
--where p.content like '%small%' and u.id=p.user_id;

-- 4 --
--select p.id, p.content, u.username from users u, posts p
--where p.deleted=0 and u.id=p.user_id;

-- 5 --
--select u.id, u.username, count(p.user_id) from users u, posts p
--where u.id=p.user_id
--group by u.id, u.username;

-- 6 --
--select u.id, u.username, count(p.user_id) from users u, posts p
--where u.id=p.user_id
--group by u.id, u.username having count(p.user_id)>3;

-- 7 --
--select u.id, u.username, count(f.followed_user_ID) from users u, follows f
--where u.id = f.following_user_ID
--group by u.id;

-- 8 --
--select u.id, u.username, count(f.following_user_ID) from users u, follows f
--where u.id = f.followed_user_ID
--group by u.id
--order by count(f.following_user_ID) desc
--limit 5;

-- 9 --
--select u.username, u2.username from users u, users u2, follows f
--where u.id = f.following_user_ID and u2.id = f.followed_user_ID;

-- 10 --
select p.id, u2.username, p.content from posts p, follows f, users u, users u2
where u.username = 'christopherprice' 
and u.id = f.following_user_ID 
and p.user_id = f.followed_user_ID
and u2.id = f.followed_user_ID
order by p.created_on desc;