# Write your MySQL query statement below
/*
INPUT
-----


OUTPUT
------


CONSTRAINS
-----------


*/

-- More Condition 248 ms
select x, y, z,
    (case 
        when x+y<=z then "No"
        when x+z<=y then "No"
        when y+z<=x then "No"
        else "Yes"
    end ) as triangle
from triangle

/*
-- 307 ms
select x, y, z , 
    if(x+y>z and x+z>y and y+z>x, "Yes", "No") as triangle
from triangle
*/
