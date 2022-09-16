# Write your MySQL query statement below
/*
INPUT
-----
employee ( id pk, team_id )

OUTPUT
------
team size of each of the employees.

CONSTRAINS
-----------


*/

-- 295 ms
select 
    A.employee_id,
    count(*) as team_size
from employee A, employee B
where A.team_id = b.team_id
group by A.employee_id

/*
-- 552 ms
select
    employee_id,
    count(employee_id) over(partition by team_id) as team_size
from Employee
*/
