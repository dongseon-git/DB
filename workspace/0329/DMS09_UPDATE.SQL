-- UPDATE : 테이블에 있는 데이터 변경하기
-- update전에 select로 테이블내부를 확인하고 진행해라!!
-- 문법)
--      UPDATE table이름
--      SET column01 = 값1(value),
--          column02 = 값2(value),
--          ...
--      WHERE 조건 ;

--DEPT COPY DEPT_TEMP2 생성
-- CTAS
CREATE TABLE dept_temp2
AS SELECT * FROM dept;

SELECT * FROM dept_temp2;
--    DEPTNO DNAME          LOC          
------------ -------------- -------------
--        10 ACCOUNTING     NEW YORK     
--        20 RESEARCH       DALLAS       
--        30 SALES          CHICAGO      
--        40 OPERATIONS     BOSTON 