# Write your MySQL query statement below
/*
INPUT
-----


OUTPUT
------


CONSTRAINS
-----------


*/

-- distinct ex: A Math. A Math
select class
from courses
group by class
having count(distinct student) >= 5 -- distinct student not equal distinct class

/*
select T.class
from (
    select class, count(student) as cnt
    from courses
    group by class
) as T
where T.cnt >= 5
*/

/*
select class
from courses
group by class
having count(class) >= 5
*/
