-- Q5
-- 학생 테이블(student)과 학과 테이블(department)을 사용하여 학생이름,
-- 1 전공학과번호(deptno1), 1전공 학과 이름을 출력하세요.
--(ANSI JOIN문법과 ORACLE JOIN문법으로 각각 SQL을 작성하세요

-- ORACLE JOIN
SELECT
    t1.name AS stu_name,
    t1.deptno1 AS deptno1,
    t2.dname AS dept_name    
FROM student t1, department t2
WHERE t1.deptno1 = t2.deptno
;

-- ANSI JOIN
SELECT
    t1.name AS stu_name,
    t1.deptno1 AS deptno1,
    t2.dname AS dept_name
FROM student t1 INNER JOIN department t2
ON t1.deptno1 = t2.deptno
;
--STU_NAME           DEPTNO1  DEPT_NAME                        
----------------------------  ---------------------------------
--James Seo              101  Computer Engineering             
--Rene Russo             102  Multimedia Engineering           
--Sandra Bullock         103  Software Engineering             
--Demi Moore             201  Electronic Engineering           
--Danny Glover           202  Mechanical Engineering           
--Billy Crystal          101  Computer Engineering             
--Nicholas Cage          102  Multimedia Engineering           
--Micheal Keaton         202  Mechanical Engineering           
--Bill Murray            301  Library and Information science  
--Macaulay Culkin        201  Electronic Engineering           
--Richard Dreyfus        101  Computer Engineering             
--Tim Robbins            102  Multimedia Engineering           
--Wesley Snipes          201  Electronic Engineering           
--Steve Martin           201  Electronic Engineering           
--Daniel Day-Lewis       301  Library and Information science  
--Danny Devito           101  Computer Engineering             
--Sean Connery           201  Electronic Engineering           
--Christian Slater       201  Electronic Engineering           
--Charlie Sheen          102  Multimedia Engineering           
--Anthony Hopkins        103  Software Engineering  