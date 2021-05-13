/* Question 14
. Write a SQL query to find referees and the number of bookings they made for the
entire tournament. Sort your answer by the number of bookings in descending order
*/

SELECT referee_id, referee_name, COUNT(referee_id) AS total_ref_book
FROM player_booked
INNER JOIN referee_mast
ON player_booked.team_id = referee_mast.country_id
GROUP BY referee_id, referee_name
ORDER BY total_ref_book DESC
