# Write your MySQL query statement below
/*
INPUT
-----


OUTPUT
------


CONSTRAINS
-----------


*/
-- 602 ms
select 
    P.product_name,
    sum(O.unit) as unit
from Products P 
join Orders O on P.product_id = O.product_id && date_format(O.order_date, '%Y-%m') = '2020-02'
group by P.product_id
having sum(O.unit) >= 100
