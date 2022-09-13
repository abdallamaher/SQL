# Write your MySQL query statement below
/*
INPUT
-----


OUTPUT
------


CONSTRAINS
-----------


*/
select product_id, sum(quantity) as total_quantity
from sales
group by product_id

/*
-- 1934 ms
select P.product_id, sum(S.quantity) as total_quantity
from product P 
join sales S on P.product_id = S.product_id
group by P.product_id
*/
