-- SCOTT 

-- p416 Q2
-- SCOTT계정으로 접속하여 위에서 생성한 PREV_HW계정에 SCOTT소유의 EMP,DEPT,SALGRADE테이블에
-- SELECT 권한을 부여하는 SQL문을 작성해보세요. 권한을 부여했으면 PREV_HW계정으로
-- SCOTT의 EMP,DEPT,SALGRADE테이블이 잘 조회 되는지 확인해보세요.

-- 객체 권한 부여
--  객체 권한 부여 역시 GRANT문 사용
--    문법)
--     GRANT[권한/ALL PRIVILEGES]
--     ON [스키마.객체이름]
--     TO [사용자이름/롤(Role)이름/PUBLIC]
--     [WITH GRANT OPTION]

GRANT SELECT ON EMP TO PREV_HW;
GRANT SELECT ON DEPT TO PREV_HW;
GRANT SELECT ON SALGRADE TO PREV_HW;
--Grant을(를) 성공했습니다.

-- [ PREV_HW 계정
SELECT * FROM SCOTT.EMP;
SELECT * FROM SCOTT.DEPT;
SELECT * FROM SCOTT.SALGRADE;
-- SCOTT.EMP 테이블
--     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
------------ ---------- --------- ---------- -------- ---------- ---------- ----------
--      7788 SCOTT      ANALYST         7566 87/04/19       3000                    20
--      7876 ADAMS      CLERK           7788 87/02/21       1100                    20
--      7369 SMITH      CLERK           7902 80/12/17        800                    20
--      7499 ALLEN      SALESMAN        7698 81/02/20       1600        300         30
--      7521 WARD       SALESMAN        7698 81/02/22       1250        500         30
--      7566 JONES      MANAGER         7839 81/04/02       2975                    20
--      7654 MARTIN     SALESMAN        7698 81/09/28       1250       1400         30
--      7698 BLAKE      MANAGER         7839 81/05/01       2850                    30
--      7782 CLARK      MANAGER         7839 81/06/09       2450                    10
--      7839 KING       PRESIDENT            81/11/17       5000                    10
--      7844 TURNER     SALESMAN        7698 81/09/08       1500          0         30
--      7900 JAMES      CLERK           7698 81/12/03        950                    30
--      7902 FORD       ANALYST         7566 81/12/03       3000                    20
--      7934 MILLER     CLERK           7782 82/01/23       1300                    10

-- SCOTT.DEPT 테이블
--    DEPTNO DNAME          LOC          
------------ -------------- -------------
--        10 ACCOUNTING     NEW YORK     
--        20 RESEARCH       DALLAS       
--        30 SALES          CHICAGO      
--        40 OPERATIONS     BOSTON       

-- SCOTT.SALGRADE 테이블
--     GRADE      LOSAL      HISAL
------------ ---------- ----------
--         1        700       1200
--         2       1201       1400
--         3       1401       2000
--         4       2001       3000
--         5       3001       9999
--
--  PREV_HW ]