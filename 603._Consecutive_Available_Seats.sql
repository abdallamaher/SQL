# Write your MySQL query statement below
/*
INPUT
-----
cinema(seat_id, free)

OUTPUT
------
all the consecutive available

CONSTRAINS
-----------
ordered by seat_id in ascending order

*/
-- 322 ms inner join is faster
select distinct A.seat_id
from cinema A
join cinema B
on 
    abs(A.seat_id - B.seat_id ) = 1
    and A.free = 1
    and B.free = 1
order by A.seat_id

/*
-- 484 ms  abs() is faster
select distinct A.seat_id
from cinema A, cinema B
where 
    abs(A.seat_id - B.seat_id ) = 1
    and A.free = 1
    and B.free = 1
order by A.seat_id
*/

/*
-- 886 ms
select distinct A.seat_id
from cinema A, cinema B
where 
    (A.seat_id = B.seat_id + 1 or A.seat_id = B.seat_id - 1)
    and A.free = 1
    and B.free = 1
order by A.seat_id
*/
