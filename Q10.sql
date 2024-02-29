select * from matches;
select * from players;
select * from teams;

-- 10. What is the date and the score of the match with match_id = 3?
select match_date,score_team1,score_team2
from matches
where match_id = 3;