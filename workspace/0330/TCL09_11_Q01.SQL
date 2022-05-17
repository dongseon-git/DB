-- p309 Q1

-- 문제 풀이 전 CTAS로 테이블 복사 dept -> dept_hw
CREATE TABLE dept_hw
AS SELECT * FROM dept;

--세션A
UPDATE dept_hw
   SET dname = 'DATABASE',loc='SEOUL'
WHERE deptno = 30;
--1 행 이(가) 업데이트되었습니다.

SELECT * FROM dept_hw;
--    DEPTNO DNAME          LOC          
------------ -------------- -------------
--        10 ACCOUNTING     NEW YORK     
--        20 RESEARCH       DALLAS       
--        30 DATABASE       SEOUL        
--        40 OPERATIONS     BOSTON

--세션B
SELECT * FROM dept_hw;
--    DEPTNO DNAME          LOC          
------------ -------------- -------------
--        10 ACCOUNTING     NEW YORK     
--        20 RESEARCH       DALLAS       
--        30 SALES          CHICAGO      
--        40 OPERATIONS     BOSTON

--(1)현재 세션 A,B에서 조회한 DEPT_HW테이블 30번 부서의 DNAME,LOC열의 데이터 상태를 작성
--답 : 세션 A의 DNAME 내용은 (DATABASE), LOC 내용은 (SEOUL)
--     세션 B의 DNAME 내용은 (SALES), LOC 내용은 (CHICAGO)

--세션B
UPDATE dept_hw
   SET dname = 'DATABASE', loc = 'SEOUL'
WHERE deptno = 30;
--1 행 이(가) 업데이트되었습니다.

--(2)현재 세션B에 실행한 UPDATE문 실행 결과를 적어보세요.
-- 대기

--세션A
ROLLBACK;
--롤백 완료.

--(3)현재 세션A에서 ROLLBACK명령어를 사용한 후 세션 B에서 일어나는 변화를 작성
--세션A
SELECT * FROM dept_hw;
--    DEPTNO DNAME          LOC          
------------ -------------- -------------
--        10 ACCOUNTING     NEW YORK     
--        20 RESEARCH       DALLAS       
--        30 SALES          CHICAGO      
--        40 OPERATIONS     BOSTON

--세션B
SELECT * FROM dept_hw;
--    DEPTNO DNAME          LOC          
------------ -------------- -------------
--        10 ACCOUNTING     NEW YORK     
--        20 RESEARCH       DALLAS       
--        30 DATABASE       SEOUL        
--        40 OPERATIONS     BOSTON

--(4)현재 세션 A,B에서 조회한 DEPT_HW테이블 30번 부서의 DNAME,LOC열의 데이터 상태를 작성
--답 : 세션 A의 DNAME 내용은 (SALES), LOC 내용은 (CHICAGO)
--     세션 B의 DNAME 내용은 (DATABASE), LOC 내용은 (SEOUL)

--세션B
COMMIT;
--커밋 완료.

--세션A
SELECT * FROM dept_hw;
--    DEPTNO DNAME          LOC          
------------ -------------- -------------
--        10 ACCOUNTING     NEW YORK     
--        20 RESEARCH       DALLAS       
--        30 DATABASE       SEOUL        
--        40 OPERATIONS     BOSTON

--세션B
SELECT * FROM dept_hw;
--    DEPTNO DNAME          LOC          
------------ -------------- -------------
--        10 ACCOUNTING     NEW YORK     
--        20 RESEARCH       DALLAS       
--        30 DATABASE       SEOUL        
--        40 OPERATIONS     BOSTON

--(5)현재 세션 A,B에서 조회한 DEPT_HW테이블 30번 부서의 DNAME,LOC열의 데이터 상태를 작성
--답 : 세션 A의 DNAME 내용은 (DATABASE), LOC 내용은 (SEOUL)
--     세션 B의 DNAME 내용은 (DATABASE), LOC 내용은 (SEOUL)