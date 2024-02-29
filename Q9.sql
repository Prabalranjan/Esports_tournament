select * from matches;
select * from players;
select * from teams;

-- 9. What are the team names and the number of players in each team whose salary is greater than 100,000?
with CTE1 as(
select p.player_name,p.salary,t.team_name
from players p
join teams t
on p.team_id = t.team_id
where salary > 100000
)
select team_name, count(team_name) as no_of_players
from CTE1
group by team_name;
