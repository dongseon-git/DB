-- ex02) Professor테이블과 department테이블을 조회하여 'Meg Ryan'교수보다 나중에 입사한
-- 사람의 이름과 입사일, 학과명을 출력하세요.
--select * from department;
--select * from professor;
SELECT 
    t1.name AS prof_name,
    TO_CHAR(t1.hiredate,'YYYY/MM/DD') AS hiredate,
    t2.dname AS dept_name
FROM Professor t1, department t2
WHERE t1.deptno = t2.deptno
AND t1.hiredate > (SELECT hiredate
                   FROM Professor
                   WHERE name = 'Meg Ryan')
;
--PROF_NAME            HIREDATE   DEPT_NAME                           
---------------------- ---------- --------------------------------
--Angela Bassett       1987/01/30 Computer Engineering            
--Jessica Lange        1998/03/22 Computer Engineering            
--Winona Ryder         2001/09/01 Multimedia Engineering          
--Michelle Pfeiffer    1985/11/30 Multimedia Engineering          
--Julia Roberts        1997/07/01 Software Engineering            
--Sharon Stone         2002/02/24 Software Engineering            
--Susan Sarandon       2009/08/30 Electronic Engineering          
--Nicole Kidman        1999/12/01 Mechanical Engineering          
--Holly Hunter         2009/01/28 Mechanical Engineering          
--Andie Macdowell      2010/06/28 Library and Information science 
--Jodie Foster         2001/05/23 Library and Information science 