# Write your MySQL query statement below
select name
from Customer
-- where referee_id is null || referee_id != 2
-- where ifnull(referee_id, -1) <> 2 -- same time
where coalesce(referee_id, -1) <> 2 -- better time than is null and ifnull