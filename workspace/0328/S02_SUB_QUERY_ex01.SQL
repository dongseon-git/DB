-- ex01) student 테이블과 department테이블을 사용하여 'Anthony Hopkins'학생과 
-- 1전공(deptno1)이 동일한 학생들의 이름과 1전공 이름을 출력하세요.
SELECT
    t1.name AS stud_name,
    t2.dname AS dept_name
--    t1.deptno1
FROM student t1, department t2
WHERE t1.deptno1 = t2.deptno
AND t1.deptno1 = (SELECT deptno1
     FROM student
     WHERE name = 'Anthony Hopkins')
;
--STUD_NAME         DEPT_NAME             
------------------- ----------------------
--Sandra Bullock    Software Engineering  
--Anthony Hopkins   Software Engineering  