select * from matches;
select * from players;
select * from teams;


-- 7. What is the average salary of players in the teams with country 'USA'?

select t.team_name,t.country,round(avg(p.salary),2) as avg_salary
from teams t
join players p
on t.team_id = p.team_id
group by t.team_name,t.country
having t.country = 'USA';