select * from matches;
select * from players;
select * from teams;


-- 3. What is the total number of players in each team?
select t.team_name, count(p.team_id) as number_of_players
from teams t
join players p 
on t.team_id = p.team_id
group by team_name
