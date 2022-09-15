# Write your MySQL query statement below
/*
INPUT
-----


OUTPUT
------


CONSTRAINS
-----------


*/
-- 816 ms
select 
round(
    (
    select count(*)
    from Delivery
    where order_date = customer_pref_delivery_date
    )
    / 
    (
        select count(*)
        from Delivery
    )
    * 100, 
    2
) as immediate_percentage

-- 886 ms
select 
round(
    sum(order_date = customer_pref_delivery_date) / 
    count(*) * 
    100,
    2
) as immediate_percentage
from Delivery
