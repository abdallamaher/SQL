# Write your MySQL query statement below
/*
INPUT
-----


OUTPUT
------


CONSTRAINS
-----------


*/
-- 318 ms
/*
update Salary
set sex = 
        case 
        when sex = 'm' then 'f'
        else 'm'
        end 
    
*/

-- 259 ms
update Salary
set sex = if(sex = 'm','f','m' )   
