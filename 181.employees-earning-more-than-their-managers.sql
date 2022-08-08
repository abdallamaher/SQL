--
-- @lc app=leetcode id=181 lang=mysql
--
-- [181] Employees Earning More Than Their Managers
--

-- @lc code=start
# Write your MySQL query statement below
/*
input
-----
person(id, salary, manager_id)


output
-------
person(name)



constrains
----------
person earn more than his manager


*/

select
    A.name as Employee
from
    Employee A, Employee B
where 
    A.managerId = B.id and
    A.salary > B.salary;
    
-- @lc code=end

