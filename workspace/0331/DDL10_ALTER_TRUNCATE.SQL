--TRUNCATE : 테이블의 데이터를 전부 삭제하고 사용하고 있던 공간을 반납하는 명령어
-- 또한 해당 테이블에 생성되어 있던 인덱스의 내용도 함께 TRUNCATE
TRUNCATE TABLE dept7;
--Table DEPT7이(가) 잘렸습니다.

--DELETE,TRUNCATE,DROP 명령어의 차이점
--DELETE : 내용만 제거
--TRUNCATE : 컬럼명 외 모두 제거
--DROP : 테이블 자체 삭제