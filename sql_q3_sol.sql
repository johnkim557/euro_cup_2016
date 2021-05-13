/*Question 3
. Write a SQL query to find the match number, date, and score for matches in which no
stoppage time was added in the 1st half.
*/

SELECT match_no , play_date , REPLACE(goal_score,'Jan',1) AS goal_score_conv
FROM match_mast
WHERE stop1_sec = 0

/* The goal_score column must be converted from a date format to numeric*/





