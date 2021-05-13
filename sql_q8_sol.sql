/* Question 8
Write a SQL query to find the match number for the game with the highest number of
penalty shots, and which countries played that match.*/
/*In this case, a repition of match_no does not appear so there isn't a single match_no that has the highest
number of penalty shots. But if there were multiples of a match no. How would I calculate this?*/
SELECT * 

FROM goal_details
INNER JOIN soccer_country
ON goal_details.team_id = soccer_country.country_id
WHERE goal_type = 'P'
