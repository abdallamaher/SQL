# Write your MySQL query statement below
/*
INPUT
-----


OUTPUT
------


CONSTRAINS
-----------


*/
-- 1586 ms
with T as (
    select distinct sub_id as post_id
    from Submissions
    where parent_id is null
)

select T.post_id, count(distinct S.sub_id) as number_of_comments
from submissions S
right join T on S.parent_id = T.post_id 
group by T.post_id

/*
-- 3035 ms
with T as (
    select 
        parent_id as post_id, 
        count(distinct sub_id) as number_of_comments
    from Submissions
    where parent_id is not null
    group by parent_id
)

select distinct sub_id as post_id, ifnull(number_of_comments, 0) as number_of_comments
from submissions S
left join T on S.sub_id = T.post_id 
where S.parent_id is null
order by post_id
*/
