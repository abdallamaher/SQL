--
-- @lc app=leetcode id=175 lang=mysql
--
-- [175] Combine Two Tables
--

-- @lc code=start
# Write your MySQL query statement below
/*
INPUT
-----
person(id, name)
address (id, person_id, city)

OUTPUT
------
person (first_name, last_name)
address (city, state )

CONSTRAINS
-----------
address could be null

*/

select
    P.firstName, P.lastName,
    A.city, A.state
from
    person P
left join
    Address A on P.personId = A.PersonId

-- @lc code=end

