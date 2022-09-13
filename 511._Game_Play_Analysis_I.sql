# Write your MySQL query statement below
/*
INPUT
-----


OUTPUT
------


CONSTRAINS
-----------


*/

select player_id, min(event_date) as first_login
from Activity
group by player_id
