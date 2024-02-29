select * from matches;
select * from players;
select * from teams;

-- 1. What are the names of the players whose salary is greater than 100,000?
select player_name 
from players
where salary > 100000;