-- p289 Q5

-- 문제 진행 전 테이블 생성
--CREATE TABLE CHAP10HW_EMP      AS SELECT * FROM emp;
--CREATE TABLE CHAP10HW_DEPT     AS SELECT * FROM dept;
--CREATE TABLE CHAP10HW_SALGRADE AS SELECT * FROM SALGRADE;

-- CHAP10HW_EMP에 속한 사원 중, 급여등급이 5인 사원을 삭제하는 SQL문 작성

--데이터 삭제 전 테이블 조회
SELECT empno,ename,job,mgr,hiredate,sal,comm,deptno
FROM chap10hw_emp t1, chap10hw_salgrade t2
WHERE t1.sal BETWEEN t2.losal AND t2.hisal
AND t2.grade = 5;
--     EMPNO ENAME      JOB           MGR HIREDATE    SAL   COMM  DEPTNO
------------ ---------- --------- ------- -------- ------ ------  ------
--      7839 KING       PRESIDENT         81/11/17   5000             70
--      7201 TESE_USER1 MANAGER      7788 16/01/02   4500             70
--      7203 TESE_USER3 ANALYST      7201 16/04/11   3400             70

-- 데이터 삭제하기
DELETE FROM chap10hw_emp
WHERE empno IN (SELECT t1.empno
                FROM chap10hw_emp t1, chap10hw_salgrade t2
                WHERE t1.sal BETWEEN t2.losal AND t2.hisal
                AND t2.grade = 5)
;
--3개 행 이(가) 삭제되었습니다.

--삭제 후 데이터 확인
SELECT * FROM chap10hw_emp;
-- EMPNO ENAME      JOB         MGR HIREDATE   SAL  COMM DEPTNO
-------- ---------- --------- ----- -------- ----- ----- ------
--  7876 ADAMS      CLERK      7788 87/02/21  1100           20
--  7369 SMITH      CLERK      7902 80/12/17   800           20
--  7499 ALLEN      SALESMAN   7698 81/02/20  1600   300     30
--  7521 WARD       SALESMAN   7698 81/02/22  1250   500     30
--  7566 JONES      MANAGER    7839 81/04/02  2975           20
--  7654 MARTIN     SALESMAN   7698 81/09/28  1250  1400     30
--  7698 BLAKE      MANAGER    7839 81/05/01  2850           30
--  7782 CLARK      MANAGER    7839 81/06/09  2450           10
--  7788 SCOTT      ANALYST    7566 87/04/19  3000           20
--  7844 TURNER     SALESMAN   7698 81/09/08  1500     0     30
--  7900 JAMES      CLERK      7698 81/12/03   950           30
--  7902 FORD       ANALYST    7566 81/12/03  3000           20
--  7934 MILLER     CLERK      7782 82/01/23  1300           10
--  7202 TESE_USER2 CLERK      7201 16/02/21  1800           50
--  7204 TESE_USER4 SALESMAN   7201 16/05/31  2700   300     60
--  7205 TESE_USER5 CLERK      7201 16/07/20  2860           80
--  7206 TESE_USER6 CLERK      7201 16/09/08  2860           80
--  7207 TESE_USER7 LECTURER   7201 16/10/28  2530           80
--  7208 TESE_USER8 STUDENT    7201 18/03/09  1320           80

-- 확정하기
COMMIT;