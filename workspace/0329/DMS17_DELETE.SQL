-- p285 1분복습
-- emp_temp테이블에서 급여가 3000이상인 사원을 삭제하는 다음 코드를 채워보세요.

-- 삭제 전 테이블 데이터 확인
SELECT * FROM emp_temp;
-- EMPNO ENAME    JOB         MGR HIREDATE     SAL     COMM  DEPTNO
-------- -------- --------- ----- -------- ------- ----------------
--  9999 홍길동   PRESIDENT       01/01/01    5000     1000      10
--  1111 홍03     PRESIDENT       01/01/01    5000     1000      10
--  2112 홍05     PRESIDENT       01/01/01    5000     1000      10
--  2113 홍06     PRESIDENT       22/03/29    5000     1000      10
--  7876 ADAMS    CLERK      7788 87/02/21    1100       50      20
--  7369 SMITH    CLERK      7902 80/12/17     800       50      20
--  7900 JAMES    CLERK      7698 81/12/03     950       50      30

-- 데이터 삭제하기
DELETE FROM emp_temp
WHERE sal >= 3000;
--4개 행 이(가) 삭제되었습니다.

--삭제 후 데이터 확인
SELECT * FROM emp_temp;
--EMPNO ENAME   JOB      MGR HIREDATE    SAL   COMM   DEPTNO
------- ------- ------------ -------- ------ ------ --------
-- 7876 ADAMS   CLERK   7788 87/02/21   1100     50       20
-- 7369 SMITH   CLERK   7902 80/12/17    800     50       20
-- 7900 JAMES   CLERK   7698 81/12/03    950     50       30