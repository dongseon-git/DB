-- 삭제 테이블 쓰레기 통에서 복구
-- 1. flashback 확인
-- 2. 복원

-- 1)
SELECT 
    OBJECT_NAME,
    ORIGINAL_NAME,
    createtime
FROM recyclebin;
--OBJECT_NAME                     ORIGINAL_NAME   CREATETIME         
--------------------------------------------------------
--BIN$GRef1xcfR/6jU92vYsoxMQ==$0  DEPT_DDAL_30    2022-03-31:09:39:05
--BIN$/r8a/qscRn2RCuklI92slg==$0  EMP_HW          2022-03-31:11:08:07 

-- 2)
FLASHBACK TABLE "BIN$/r8a/qscRn2RCuklI92slg==$0" TO BEFORE DROP;
--Flashback을(를) 성공했습니다.

-- 3) 복구된 데이터 확인
SELECT * FROM emp_hw;
-- EMPNO ENAME      JOB        MGR HIREDATE   SAL   COMM     DEPTNO REMARK 
-------- ---------- -------------- -------- ----- ------ ---------- -------
--  7369 SMITH      CLERK     7902 80/12/17   800                20        
--  7499 ALLEN      SALESMAN  7698 81/02/20  1600    300         30        
--  7521 WARD       SALESMAN  7698 81/02/22  1250    500         30        
--  7566 JONES      MANAGER   7839 81/04/02  2975                20        
--  7654 MARTIN     SALESMAN  7698 81/09/28  1250   1400         30        
--  7698 BLAKE      MANAGER   7839 81/05/01  2850                30        
--  7782 CLARK      MANAGER   7839 81/06/09  2450                10        
--  7839 KING       PRESIDENT      81/11/17  5000                10        
--  7844 TURNER     SALESMAN  7698 81/09/08  1500      0         30        
--  7900 JAMES      CLERK     7698 81/12/03   950                30        
--  7902 FORD       ANALYST   7566 81/12/03  3000                20        
--  7934 MILLER     CLERK     7782 82/01/23  1300                10        