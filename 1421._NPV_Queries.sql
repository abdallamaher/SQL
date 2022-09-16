# Write your MySQL query statement below
/*
INPUT
-----


OUTPUT
------


CONSTRAINS
-----------


*/

--  1912 ms
select Q.id, Q.year, ifnull( N.npv , 0) npv
from Queries Q
left join NPV N on Q.id = N.id && Q.year = N.year

