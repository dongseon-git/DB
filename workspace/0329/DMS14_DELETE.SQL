-- DELETE : 테이블에 있는 데이터 삭제하기
--문법)
--    DELETE FROM table
--    WHERE 조건 ;

-- 데이터 삭제 하기 전 테이블 확인 !!!!!!!
-- 데이터 변경 및 삭제시에는 테이블 구조 및 컬럼,데이터 확인 후 진행. 커밋 전 한번 더 확인!!!

-- emp copy -> emp_temp2 생성
CREATE TABLE emp_temp2
AS SELECT * FROM emp;
--Table EMP_TEMP2이(가) 생성되었습니다.

--생성한 테이블 확인
SELECT * FROM emp_temp2