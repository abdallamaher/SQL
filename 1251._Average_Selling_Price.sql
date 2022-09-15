# Write your MySQL query statement below
/*
INPUT
-----


OUTPUT
------


CONSTRAINS
-----------


*/

-- 1199 ms
select 
    P.product_id , 
    round(sum(units * price) / sum(units), 2) as average_price
from Prices P 
join unitssold U
on  P.product_id = U.product_id &&
    U.purchase_date >= P.start_date &&
    U.purchase_date <= P.end_date 
group by product_id
