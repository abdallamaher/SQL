--
-- @lc app=leetcode id=183 lang=mysql
--
-- [183] Customers Who Never Order
--

-- @lc code=start
# Write your MySQL query statement below
/*
input
------
customers (id)
orders (id, custoemrId)


output
------
customers name who never order anything


constrains
------


*/

select name as Customers
from Customers C
left join Orders O on C.id = O.customerId
where O.id is null;

-- @lc code=end

