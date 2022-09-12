# Write your MySQL query statement below
/*
INPUT
-----
cinema (id, movie, desc, rating)
rating float in the range [0, 10]

OUTPUT
------
report the movies with an odd-numbered ID and a description that is not "boring"
rating in descending order

CONSTRAINS
-----------


*/
 -- 237 ms
select id, movie, description, rating
from cinema
where mod(id, 2) = 1 && description != "boring"
order by rating desc

/*
-- 375 ms	
select id, movie, description, rating
from cinema
where
    id % 2 = 1 && 
    description != "boring"
order by rating desc
*/
