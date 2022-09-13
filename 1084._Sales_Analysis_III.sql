# Write your MySQL query statement below
/*
INPUT
-----


OUTPUT
------


CONSTRAINS
-----------


*/
-- 1473 ms
select distinct product_id, product_name
from sales 
join product
using(product_id)
group by product_id
having min(sale_date) >= '2019-01-01' and max(sale_date) <= '2019-03-31'

/*
-- 2050 ms
select distinct product_id, product_name
from sales 
join product
using(product_id)
where sale_date >= '2019-01-01' and sale_date <= '2019-03-31' && product_id not in (
    select product_id 
    from sales 
    where sale_date < '2019-01-01' or sale_date > '2019-03-31'
)
*/


/*
-- 1719 ms
with T as (
    select product_id as id 
    from sales 
    group by product_id 
    having min(sale_date) >= '2019-01-01' and max(sale_date) <= '2019-03-31'
)


-- 1949 ms
with T as (
    select product_id as id 
    from sales 
    where sale_date >= '2019-01-01' and sale_date <= '2019-03-31' && product_id not in (
        select product_id 
        from sales 
        where sale_date < '2019-01-01' or sale_date > '2019-03-31'
    )
)

select distinct product_id , product_name
from Product
join T on Product.product_id = T.id
*/
