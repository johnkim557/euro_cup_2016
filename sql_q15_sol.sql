/* Question 15
. Write a SQL query to find the referees who booked the most number of players.
*/

SELECT referee_id, referee_name, COUNT(referee_id) AS total_ref_book
FROM player_booked
INNER JOIN referee_mast
ON player_booked.team_id = referee_mast.country_id
GROUP BY referee_id, referee_name
ORDER BY total_ref_book DESC
LIMIT 1

/*How would I go about creating a subquery to find the max*/

