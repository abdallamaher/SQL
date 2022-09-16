# Write your MySQL query statement below
/*
INPUT
-----


OUTPUT
------


CONSTRAINS
-----------


*/
-- 1523 ms
select U.unique_id, e.name
from Employees E
left join EmployeeUNI U using(id)
