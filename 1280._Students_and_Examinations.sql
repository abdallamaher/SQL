# Write your MySQL query statement below
/*
INPUT
-----
student( id, name )
subjects( name )
examinations( id , name )

OUTPUT
------
times each student attended each exam

CONSTRAINS
-----------
ordered by student_id and subject_name

*/

-- 916 ms
select  st.student_id , 
        st.student_name , 
        sb.subject_name ,
        sum( case when e.subject_name is null then 0 else 1 end ) as attended_exams
from students st
cross join subjects sb
left join examinations e on st.student_id = e.student_id && sb.subject_name = e.subject_name
group by st.student_id, sb.subject_name
order by st.student_id, sb.subject_name

