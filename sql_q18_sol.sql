/* Question 18
Write a SQL query to find the highest number of foul cards given in one match.
*/
SELECT match_no,COUNT(match_no)
FROM player_booked
GROUP BY match_no
ORDER BY match_no DESC
LIMIT 1
