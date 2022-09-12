# Write your MySQL query statement below
/*
INPUT
-----
duplicates

OUTPUT
------
largest single number
If there is no single number, report null
 
CONSTRAINS
-----------


*/

-- 358 ms
select max(num) as num  -- max(null) >> null
from (
    select num
    from MyNumbers
    group by num
    having count(num) = 1
) as T
