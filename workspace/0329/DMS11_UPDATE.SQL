-- UPDATE : 테이블에 있는 데이터 변경하기

-- 데이터 일부 수정

--DEPT
--부서번호(deptno) : 40
--부서명(dname)    : 'DATABASE'
--부서위치지역(loc) : SEOUL

--데이터 변경 전 테이블 확인
SELECT * FROM dept_temp2 WHERE deptno = 40;
--    DEPTNO DNAME          LOC          
------------ -------------- -------------
--        40 OPERATIONS     BOSTON    

-- 데이터 일부 변경하기 dname,loc
UPDATE dept_temp2
   SET dname = 'DATABASE',
       loc   = 'SEOUL'
WHERE deptno = 40;
--1 행 이(가) 업데이트되었습니다.

--변경데이터 확정
COMMIT;

--변경한 데이터 확인
SELECT * FROM dept_temp2 WHERE deptno = 40;