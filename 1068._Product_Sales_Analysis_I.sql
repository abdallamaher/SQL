# Write your MySQL query statement below
/*
INPUT
-----


OUTPUT
------
reports the product_name, year, and price for each sale_id in the Sales table.

CONSTRAINS
-----------


*/
select P.product_name, S.year, S.price
from product P 
join sales S on P.product_id = s.product_id
