--
-- @lc app=leetcode id=197 lang=mysql
--
-- [197] Rising Temperature
--

-- @lc code=start
# Write your MySQL query statement below
/*
INPUT
-----
weather (id, date, tem)

OUTPUT
------
weather (id)

CONSTRAINS
-----------
today_temperature is > than yesterday

*/

select  A.id
from Weather A, Weather B
where DATEDIFF(A.recordDate, B.recordDate) = 1 &&  A.temperature > B.temperature

-- @lc code=end

