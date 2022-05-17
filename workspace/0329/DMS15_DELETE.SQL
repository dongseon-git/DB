-- DELETE : 테이블에 있는 데이터 삭제하기

--emp_temp2테이블에서 JOB 'MANAGER'인 사람들 삭제

--데이터 삭제 전 테이블 확인
SELECT * FROM emp_temp2 WHERE job = 'MANAGER';
-- EMPNO ENAME   JOB        MGR HIREDATE   SAL   COMM  DEPTNO
-------- ------- -------------- -------- -----  ----- -------
--  7566 JONES   MANAGER   7839 81/04/02  2975            20
--  7698 BLAKE   MANAGER   7839 81/05/01  2850            30
--  7782 CLARK   MANAGER   7839 81/06/09  2450            10

-- 조건에 맞는 테이블 삭제하기
DELETE FROM emp_temp2
WHERE job = 'MANAGER';
--3개 행 이(가) 삭제되었습니다.

--삭제 후 테이블 확인
SELECT * FROM emp_temp2 WHERE job = 'MANAGER';
--선택된 행 없음

--데이터 삭제 후 확정
COMMIT;
--커밋 완료.