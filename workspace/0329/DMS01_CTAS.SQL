-- CTAS (테이블 복제)
--  CREATE TABLE new_테이블명
--  AS SELECT * FROM 테이블명

-- 테이블 삭제
DROP TABLE dept_temp;

-- DEPT테이블 복사해서 DEPT_TEMP테이블 생성
CREATE TABLE dept_temp
AS SELECT * FROM dept;

-- 복사된 테이블 확인
SELECT * FROM dept_temp;

-- 확정 하기
COMMIT;

-- 되돌리기 - 이후 다시 배움
ROLLBACK;
-- DEPT 테이블 복제 이후 작업.
--Table DEPT_TEMP이(가) 삭제되었습니다.
--
--
--Table DEPT_TEMP이(가) 생성되었습니다.
--
--
--    DEPTNO DNAME          LOC          
------------ -------------- -------------
--        10 ACCOUNTING     NEW YORK     
--        20 RESEARCH       DALLAS       
--        30 SALES          CHICAGO      
--        40 OPERATIONS     BOSTON       
--
--커밋 완료.