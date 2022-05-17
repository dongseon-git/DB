-- EQUI join(등가 조인)
-- 선행 테이블에서 데이터를 가져 온 후 조인 조건절을 검사해서 
-- 동일한 조건을 가진 데이터를 후행 테이블에서 꺼내 오는 방법
-- 연산자) '='

-- 학생(student)과 교수테이블(professor)를 join하여 
-- 학생의 이름과 지도교수 이름을 출력하세요
-- ORACLE JOIN
col stud_name for a18
col prof_name for a18
SELECT
    t1.name AS stud_name,
    t2.name AS prof_name
FROM student t1, professor t2
WHERE t1.profno = t2.profno
;

-- ANSI JOIN
SELECT
    t1.name AS stud_name,
    t2.name AS prof_name
FROM student t1 INNER JOIN professor t2
ON t1.profno = t2.profno
;
--STUD_NAME          PROF_NAME         
-------------------- ------------------
--Billy Crystal      Angela Bassett    
--Richard Dreyfus    Angela Bassett    
--James Seo          Audie Murphy      
--Bill Murray        Jodie Foster      
--Daniel Day-Lewis   Jodie Foster      
--Sandra Bullock     Julia Roberts     
--Demi Moore         Meryl Streep      
--Macaulay Culkin    Meryl Streep      
--Nicholas Cage      Michelle Pfeiffer 
--Danny Glover       Nicole Kidman     
--Micheal Keaton     Nicole Kidman     
--Steve Martin       Nicole Kidman     
--Wesley Snipes      Susan Sarandon    
--Tim Robbins        Winona Ryder      
--Rene Russo         Winona Ryder