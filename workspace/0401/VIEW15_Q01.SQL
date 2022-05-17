-- View Q1

--1. Professor 테이블과 department 테이블을 조인하여 교수번호와 교수이름, 
--소속 학과이름을 조회하는 view 를 생성하세요. 
--View 이름은 v_prof_dept2 로 하세요.

--SELECT * FROM professor;
--PROFNO, NAME, ID, POSITION, PAY, HIREDATE, BONUS, DEPTNO, EMAIL, HPAGE
--SELECT * FROM department;
--DEPTNO, DNAME, PART, BUILD

CREATE OR REPLACE VIEW v_prof_dept2
AS (
    SELECT
        t1.profno,
        t1.name,
        t2.dname
    FROM professor t1, department t2
    WHERE t1.deptno = t2.deptno
);
--View V_PROF_DEPT2이(가) 생성되었습니다.

-- View 생성 확인
SELECT *
FROM v_prof_dept2;
--    PROFNO NAME                 DNAME                                             
------------ -------------------- --------------------------------------------------
--      1001 Audie Murphy         Computer Engineering                              
--      1002 Angela Bassett       Computer Engineering                              
--      1003 Jessica Lange        Computer Engineering                              
--      2001 Winona Ryder         Multimedia Engineering                            
--      2002 Michelle Pfeiffer    Multimedia Engineering                            
--      2003 Whoopi Goldberg      Multimedia Engineering                            
--      3001 Emma Thompson        Software Engineering                              
--      3002 Julia Roberts        Software Engineering                              
--      3003 Sharon Stone         Software Engineering                              
--      4001 Meryl Streep         Electronic Engineering                            
--      4002 Susan Sarandon       Electronic Engineering
--      4003 Nicole Kidman        Mechanical Engineering                            
--      4004 Holly Hunter         Mechanical Engineering                            
--      4005 Meg Ryan             Chemical Engineering                              
--      4006 Andie Macdowell      Library and Information science                   
--      4007 Jodie Foster         Library and Information science