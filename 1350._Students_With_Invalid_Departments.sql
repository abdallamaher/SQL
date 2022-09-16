# Write your MySQL query statement below
/*
INPUT
-----


OUTPUT
------
departments ( id pk, name ) 
students ( id pk, name , dep_id )

CONSTRAINS
-----------


*/

-- 834 ms
select distinct id, name
from Students S
where department_id not in (
    select distinct id
    from Departments D
)

/*
-- 1948 ms
select distinct id, name
from Students S
where not exists (
    select id
    from Departments D
    where D.id = S.department_id
    limit 1
)
*/

/*
-- 1544 ms
select S.id, S.name
from Students S
left join Departments D on D.id = S.department_id
where D.name is null
*/
