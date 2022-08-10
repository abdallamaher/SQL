# Write your MySQL query statement below
/*
INPUT
-----
courses (student, class)
stu, cls are pk | indexing

OUTPUT
------
 classes that have at least five students

CONSTRAINS
-----------


*/

-- 301 ms , this what having all about
select class
from (
    select class, count(student) as num
    from courses 
    group by class
) as T
where num >= 5


/*
420 ms
select class
from courses
group by class 
having count(student) >= 5;
*/

/*
2345 ms
select distinct class
from courses A
where (
    select count(*)
    from courses B
    where A.class = B.class
) >= 5;
*/