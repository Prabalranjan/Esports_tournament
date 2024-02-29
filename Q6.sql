select * from matches;
select * from players;
select * from teams;


-- 6. What are the team names and the number of matches they have won?
select t.team_id,t.team_name, count(m.winner_id) as no_of_wins
from teams t
join matches m
on t.team_id = m.winner_id
group by t.team_name,t.team_id
