# Write your MySQL query statement below
/*
INPUT
-----


OUTPUT
------


CONSTRAINS
-----------


*/

-- 554
select activity_date as day, count(distinct user_id) as active_users
from Activity
group by activity_date
having day between '2019-06-28' and '2019-07-27'
