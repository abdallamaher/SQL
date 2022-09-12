# Write your MySQL query statement below
/*
INPUT
-----


OUTPUT
------
pairs (actor_id, director_id) >= 3 times

CONSTRAINS
-----------


*/

select actor_id, director_id
from ActorDirector
group by actor_id, director_id
having count(*) >= 3
