select * from matches;
select * from players;
select * from teams;

-- 8. Which team won the most matches?
with CTE1 as(
select t.team_id,t.team_name, count(m.winner_id) as no_of_wins
from teams t
join matches m
on t.team_id = m.winner_id
group by t.team_name,t.team_id
),
CTE2 as(
select *,
dense_rank() over(order by no_of_wins) as high_win
from CTE1
order by high_win desc limit 1)
select team_id, team_name
from CTE2;