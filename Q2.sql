select * from matches;
select * from players;
select * from teams;

-- 2. What is the team name of the player with player_id = 3?
select p.player_id,p.player_name,t.team_name
from players p
join teams t
on p.team_id = t.team_id
where p.player_id = 3;
 