# Write your MySQL query statement below
/*
INPUT
-----


OUTPUT
------


CONSTRAINS
-----------


*/

-- 1273 ms
select 
    s.name
from SalesPerson S
where S.sales_id not in(
    select O.sales_id
    from Orders O
    join  Company C 
    on O.com_id = C.com_id && C.name = "RED"
)


/*
-- 1223 ms
select 
    s.name
from SalesPerson S
where not exists(
    select O.sales_id
    from Orders O
    join  Company C 
    on O.com_id = C.com_id && O.sales_id = S.sales_id && C.name = "RED"
)
*/
