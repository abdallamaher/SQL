--
-- @lc app=leetcode id=196 lang=mysql
--
-- [196] Delete Duplicate Emails
--

-- @lc code=start
# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below
# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below

/*
INPUT
-----
person(id, email)


OUTPUT
------
delete duplicate emails


CONSTRAINS
-----------


*/

delete A from Person A, Person B
where A.email = B.email && A.id > B.id

-- @lc code=end

