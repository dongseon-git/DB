-- 테이블에 데이터 추가하는 INSERT문

--테이블에 날짜 데이터 입력하기
--EMP테이블을 copy emp_temp 생성, 단 데이터는 가져오지 않는다.

CREATE TABLE emp_temp
AS SELECT * FROM emp
WHERE 1 <> 1; 
-- true이어야만 데이터까지 가져오지만 강제로 false하여 빈 테이블만 가져옴(구조는 유지)

SELECT * FROM emp_temp;