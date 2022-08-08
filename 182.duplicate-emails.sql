--
-- @lc app=leetcode id=182 lang=mysql
--
-- [182] Duplicate Emails
--

-- @lc code=start
# Write your MySQL query statement below
select distinct A.email
from 
    Person A,
    Person B
where A.id != B.id and A.email = B.email;

-- @lc code=end

