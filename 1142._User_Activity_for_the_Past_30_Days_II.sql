# Write your MySQL query statement below
/*
INPUT
-----


OUTPUT
------
average number of sessions per user for a period of 30 days ending 2019-07-27 inclusively,

rounded to 2 decimal places

for a user are those with at least one activity in that time period

CONSTRAINS
-----------


*/
-- 606 ms
with T as (
    select user_id, session_id
    from Activity
    where activity_date >= ('2019-07-27' - interval 29 day) && activity_date <= '2019-07-27'
    group by user_id, session_id
    )

select ifnull(round(count(session_id) / count( distinct user_id ), 2), 0.00) as average_sessions_per_user
from T








