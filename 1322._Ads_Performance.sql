# Write your MySQL query statement below
/*
INPUT
-----
ads ( id pk, user_id pk, action )

OUTPUT
------


CONSTRAINS
-----------
 ordered by ctr in descending order and by ad_id in ascending order

*/

-- 632 ms
select 
    ad_id,
    ifnull(
        round(
            sum(action = 'Clicked') / ( sum(action = 'Clicked') + sum(action = 'Viewed') ) * 100
        , 2)
    , 0) as ctr
from ads
group by ad_id
order by ctr desc, ad_id asc
