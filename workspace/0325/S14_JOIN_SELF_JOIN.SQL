-- SELF JOIN
-- 원하는 데이터가 하나의 테이블에 들어가 있는 경우
-- 하나의 테이블을 2개의 테이블처럼 사용

-- Ansi Self Join
SELECT
    t1.empno,
    t1.ename,
    t2.ename AS mgr_name
FROM emp t1 LEFT OUTER JOIN emp t2
ON t1.mgr = t2.empno
;

-- Oracle Self Join
SELECT
    t1.empno,
    t1.ename,
    t2.ename AS mgr_name
FROM emp t1, emp t2
WHERE t1.mgr = t2.empno --(+)
;

--     EMPNO ENAME      MGR_NAME  
------------ ---------- ----------
--      7788 SCOTT      JONES     
--      7902 FORD       JONES     
--      7499 ALLEN      BLAKE     
--      7521 WARD       BLAKE     
--      7654 MARTIN     BLAKE     
--      7844 TURNER     BLAKE     
--      7900 JAMES      BLAKE     
--      7934 MILLER     CLARK     
--      7876 ADAMS      SCOTT     
--      7566 JONES      KING      
--      7698 BLAKE      KING      
--      7782 CLARK      KING      
--      7369 SMITH      FORD      
--      7839 KING             