# Write your MySQL query statement below
/*
INPUT
-----
countries ( id pk, name )
weather (country_id pk, status, day)

OUTPUT
------
type of weather in each country for November 2019

CONSTRAINS
-----------


*/

-- 547 ms
select C.country_name,
    case
        when avg(weather_state) <= 15 then 'Cold'
        when avg(weather_state) >= 25 then 'Hot'
        else 'Warm'
    end as weather_type
from countries C
cross join weather W using(country_id)
where date_format(W.day, '%Y-%m') = '2019-11'
group by C.country_name


/*
-- 615 ms
select C.country_name,
    case
        when avg(weather_state) <= 15 then 'Cold'
        when avg(weather_state) >= 25 then 'Hot'
        else 'Warm'
    end as weather_type
from countries C
cross join weather W using(country_id)
where day >= '2019-11-01' && day < '2019-12-01'
group by C.country_name
*/


