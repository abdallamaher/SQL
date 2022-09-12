# Write your MySQL query statement below
/*
INPUT
-----


OUTPUT
------


CONSTRAINS
-----------


*/

with T as(
    select x
    from point
    order by x
)

-- 307 ms
select min(abs(A.x - B.x)) as shortest
from T A join T B on A.x > B.x

/*
-- 316 ms
select min(abs(A.x - B.x)) as shortest
from point A join point B on A.x > B.x
*/

/*
-- 550 ms
select min(abs(A.x - B.x)) as shortest
from T A , T B
where A.x != B.x
*/
