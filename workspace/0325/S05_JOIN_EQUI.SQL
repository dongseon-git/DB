-- EQUI join(등가 조인)
-- 선행 테이블에서 데이터를 가져 온 후 조인 조건절을 검사해서 
-- 동일한 조건을 가진 데이터를 후행 테이블에서 꺼내 오는 방법
-- 연산자) '='

--학생 테이블의 데이터는 20건, 즉 5명의 학생이 안 나왔다는 것이다.
--EQUI JOIN은 양쪽 테이블에 모두 존재해야 한다.

-- 학생 테이블(student)과 학과 테이블(department) , 교수 테이블(professor)을 
--Join하여 학생의 이름과 학생의 학과이름, 학생의 지도교수 이름을 출력하세요.
--desc department;
--이름     널?       유형           
-------- -------- ------------ 
--DEPTNO NOT NULL NUMBER(3)    
--DNAME  NOT NULL VARCHAR2(50) 
--PART            NUMBER(3)    
--BUILD           VARCHAR2(30)
--select*from department;

--ORACLE JOIN
SELECT
    stu.name AS stud_name,
    prof.name AS prof_name,
    depa.dname AS dept_name
FROM student stu, professor prof, department depa
WHERE stu.profno = prof.profno
AND stu.deptno1 = depa.deptno
;
--STUD_NAME        PROF_NAME            DEPT_NAME                 
--------------------------------------- --------------------------
--James Seo        Audie Murphy         Computer Engineering      
--Billy Crystal    Angela Bassett       Computer Engineering      
--Richard Dreyfus  Angela Bassett       Computer Engineering       
--Rene Russo       Winona Ryder         Multimedia Engineering     
--Nicholas Cage    Michelle Pfeiffer    Multimedia Engineering     
--Tim Robbins      Winona Ryder         Multimedia Engineering     
--Sandra Bullock   Julia Roberts        Software Engineering       
--Demi Moore       Meryl Streep         Electronic Engineering     
--Macaulay Culkin  Meryl Streep         Electronic Engineering     
--Wesley Snipes    Susan Sarandon       Electronic Engineering     
--Steve Martin     Nicole Kidman        Electronic Engineering     
--Danny Glover     Nicole Kidman        Mechanical Engineering     
--Micheal Keaton   Nicole Kidman        Mechanical Engineering     
--Bill Murray      Jodie Foster         Library and Information science
--Daniel Day-Lewis Jodie Foster         Library and Information science

--ANSI JOIN
-- student stu JOIN professor prof 
-- ON stu.profno = prof.profno으로 조인 수행 후 나온 결과값을 가지고 
-- JOIN  department depa
-- ON stu.deptno1 = depa.deptno 조건으로 조인 수행
SELECT
    stu.name AS stud_name,
    prof.name AS prof_name,
    depa.dname AS dept_name
FROM student stu JOIN professor prof
ON stu.profno = prof.profno
JOIN  department depa
ON stu.deptno1 = depa.deptno
;