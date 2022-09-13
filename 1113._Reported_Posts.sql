# Write your MySQL query statement below
/*
INPUT
-----


OUTPUT
------


CONSTRAINS
-----------


*/

select extra as report_reason, count(distinct post_id) as report_count
from Actions
where action_date = '2019-07-04' && extra is not null && action = "report"
group by extra
