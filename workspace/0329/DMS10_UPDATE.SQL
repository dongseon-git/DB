-- UPDATE : 테이블에 있는 데이터 변경하기

-- 전체 데이터 수정 -- WHERE 조건이 없을 시 전체 변경
-- LOC의 데이터를 모두 'SEOUL'로 변경

-- 데이터 변경 전 테이블 확인
SELECT *
FROM dept_temp2;

-- 데이터 변경
UPDATE dept_temp2
   SET LOC = 'SEOUL';

--변경한 데이터 확인하기
SELECT * FROM dept_temp2;

-- 롤백하기 - 해당 파일의 커밋 치기 전 지점까지 되돌린다.
ROLLBACK;
--롤백 완료.

-- 롤백 완료 후 데이터 확인
SELECT * FROM dept_temp2;