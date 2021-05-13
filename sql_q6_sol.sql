/*
Question 6
Write a SQL query to find the number of matches that were won by a single point, but
do not include matches decided by penalty shootout.*/

SELECT *, SUBSTRING(goal_score,1,1) AS first_team_score, SUBSTRING(goal_score,6,6) AS second_team_score
FROM converted_match_mast
WHERE decided_by != 'P' AND results ='WIN'




