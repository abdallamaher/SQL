# Write your MySQL query statement below
/*
INPUT
-----

OUTPUT
------

CONSTRAINS
-----------

*/
-- 2088 ms
with T as (
    select 
        project_id, 
        count(employee_id) as cnt, 
        rank() over(order by count(employee_id) desc) as rnk
    from project
    group by project_id
)
select project_id
from T
where rnk = 1

/*
-- 1289 ms
-- with tell the query planner “Materialize this intermediate table, because I will use it several times in the future. Please don’t recompute it each time”.
with T as (
    select project_id, count(employee_id) as employee_cnt
    from Project
    group by project_id
)

select project_id
from T
where employee_cnt = (select max(employee_cnt) from T)
*/

/*
-- 1552 ms
select project_id
from (
    select project_id, count(employee_id) as employee_cnt
    from Project
    group by project_id
) T
where employee_cnt = (select max(employee_cnt) from (
    select project_id, count(employee_id) as employee_cnt
    from Project
    group by project_id
) X
)

*/


