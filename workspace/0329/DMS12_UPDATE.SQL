-- p279 1분복습
--emp_temp 테이블의 사원들 중에서 급여가 2500이하인 사원만 추가수당을 
--50으로 수정하는 다음 코드를 채워보세요.

--데이터 변경 전 테이블 확인
SELECT * FROM emp_temp WHERE sal <= 2500;
-- EMPNO ENAME  JOB      MGR HIREDATE   SAL   COMM  DEPTNO
-------- ------ ------------ -------- ----- ------ -------
--  7876 ADAMS  CLERK   7788 87/02/21  1100             20
--  7369 SMITH  CLERK   7902 80/12/17   800             20
--  7900 JAMES  CLERK   7698 81/12/03   950             30

-- 데이터 변경
UPDATE emp_temp
   SET comm = 50
WHERE sal <= 2500;
--3개 행 이(가) 업데이트되었습니다.

--변경한 데이터 확정
COMMIT;

--변경한 데이터 확인
SELECT * FROM emp_temp WHERE sal <= 2500;