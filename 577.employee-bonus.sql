# Write your MySQL query statement below
/*
INPUT
-----
person(id, name)
bonus(person_id, amount)

OUTPUT
------
person(name)
bonus(amount)

CONSTRAINS
-----------
amount < 1000 || null

*/

select A.name, B.bonus
from Employee A
left join Bonus B on A.empId = B.empId 
where B.bonus < 1000 || B.bonus is null