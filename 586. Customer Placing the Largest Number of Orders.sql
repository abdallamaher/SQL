# Write your MySQL query statement below
# Write your MySQL query statement below
/*
INPUT
-----
orders(id, customer)

OUTPUT
------
customer who has placed the largest number of orders.

CONSTRAINS
-----------
exactly one customer will have placed more

*/


select customer_number
from Orders
group by customer_number
having count(customer_number) >= all (
    select count(customer_number)
    from Orders
    group by customer_number
) ;


/*
select customer_number
from Orders
group by customer_number
order by count(customer_number) desc
limit 1;
*/