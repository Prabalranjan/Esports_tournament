select * from matches;
select * from players;
select * from teams;

-- 5. What are the player names and their roles in the team with team_id = 1? 
select player_name,role
from players
where team_id = 1;