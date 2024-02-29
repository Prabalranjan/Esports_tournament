select * from matches;
select * from players;
select * from teams;


-- 4. What is the team name and captain name of the team with team_id = 2? 
with team_info as(
select team_name, captain_id
from teams
where team_id = 2
)
select team_name,player_name as captain_name
from team_info,players
where player_id = captain_id;