# Write your MySQL query statement below
/*
INPUT
-----


OUTPUT
------


CONSTRAINS
-----------


*/

-- 722 ms
with T as (
    select 
    player_id,
    device_id,
    rank() over(partition by player_id order by event_date) as rnk
    from activity
)

select player_id, device_id
from T
where rnk = 1

/*
-- 954 ms
with T as (
    select player_id, min(event_date) as event_date
    from Activity B
    group by player_id
)

select distinct player_id, device_id
from Activity A
where (player_id, event_date) in (
    select *
    from T
)
*/

/*
-- 1086 ms
select distinct
player_id,
first_value(device_id) over(partition by player_id order by event_date) as device_id
from activity
*/


