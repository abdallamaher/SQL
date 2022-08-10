# Write your MySQL query statement below
/*
INPUT
-----
world (name)
name is pk

OUTPUT
------
name, population, and area of the big countries

CONSTRAINS
-----------
at least three million
at least twenty-five million

*/

-- UNION can be a bit faster because each select can use it's own index
select name, population, area
from world
where area >= 3000000
union
select name, population, area
from world
where population >= 25000000

/*
select name, population, area
from world
where area >= 3000000 or population >= 25000000
*/