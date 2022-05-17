-- EQUI join(등가 조인)
-- 선행 테이블에서 데이터를 가져 온 후 조인 조건절을 검사해서 
-- 동일한 조건을 가진 데이터를 후행 테이블에서 꺼내 오는 방법
-- 연산자) '='

-- EMP테이블과 DEPT 테이블을 조회하여 아래와 같이 출력

-- ORACLE JOIN
SELECT
    t1.empno,
    t1.ename,
    t2.dname
FROM emp t1, dept t2
WHERE t1.deptno = t2.deptno
;
--     EMPNO ENAME      DNAME         
------------ ---------- --------------
--      7839 KING       ACCOUNTING    
--      7934 MILLER     ACCOUNTING    
--      7782 CLARK      ACCOUNTING    
--      7902 FORD       RESEARCH      
--      7566 JONES      RESEARCH      
--      7369 SMITH      RESEARCH      
--      7788 SCOTT      RESEARCH      
--      7876 ADAMS      RESEARCH      
--      7900 JAMES      SALES         
--      7844 TURNER     SALES         
--      7654 MARTIN     SALES         
--      7521 WARD       SALES         
--      7499 ALLEN      SALES         
--      7698 BLAKE      SALES 

-- ANSI JOIN
-- INNER JOIN -> INNER 생략가능 : 조인 기준
-- ON절에는 조인 조건 : WHERE 같은 역할
SELECT
    t1.empno,
    t1.ename,
    t2.dname
FROM emp t1 JOIN dept t2
ON t1.deptno = t2.deptno
;
--     EMPNO ENAME      DNAME         
------------ ---------- --------------
--      7839 KING       ACCOUNTING    
--      7934 MILLER     ACCOUNTING    
--      7782 CLARK      ACCOUNTING    
--      7902 FORD       RESEARCH      
--      7566 JONES      RESEARCH      
--      7369 SMITH      RESEARCH      
--      7788 SCOTT      RESEARCH      
--      7876 ADAMS      RESEARCH      
--      7900 JAMES      SALES         
--      7844 TURNER     SALES         
--      7654 MARTIN     SALES         
--      7521 WARD       SALES         
--      7499 ALLEN      SALES         
--      7698 BLAKE      SALES 