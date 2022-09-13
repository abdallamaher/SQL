# Write your MySQL query statement below
/*
INPUT
-----


OUTPUT
------


CONSTRAINS
-----------


*/
-- 2545 ms
with T as (
    select S.buyer_id, P.product_name
    from sales S
    join product P on P.product_id = S.product_id
)

select distinct buyer_id
from T
where product_name = 'S8' and buyer_id not in (
    select buyer_id
    from T
    where product_name = 'iphone'
)

/*
-- 2706 ms
select distinct S.buyer_id
from sales S
join product P on P.product_id = S.product_id
where P.product_name = 'S8' && buyer_id not in (
        select S.buyer_id
        from sales S
        join product P on P.product_id = S.product_id && P.product_name = 'iphone'
)
*/

/*
-- 2890 ms
select S.buyer_id
from sales S
join product P on P.product_id = S.product_id
group by S.buyer_id
having sum(P.product_name = 'S8') > 0 && sum(P.product_name = 'iPhone') = 0
*/

