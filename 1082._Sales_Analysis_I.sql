# Write your MySQL query statement below
/*
INPUT
-----


OUTPUT
------


CONSTRAINS
-----------


*/


-- 1534 ms
select seller_id
from (
    select seller_id, rank() over(order by sum(price) desc) as rnk
    from sales
    group by seller_id
) T
where rnk = 1

/*
-- 2410 ms
with T as (
        select seller_id, sum(price) as total
        from sales
        group by seller_id
        )
        
select seller_id
from T
where total = (
    select max(total)
    from T
)
*/

/*
-- 3148 ms
select seller_id
from sales
group by seller_id
having sum(price) = (
    select max(total)
    from (
        select seller_id, sum(price) as total
        from sales
        group by seller_id
    ) T
)
*/


