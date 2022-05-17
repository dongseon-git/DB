-- 컬럼 삭제하기
-- LOC컬럼 삭제하기
ALTER TABLE dept7
DROP COLUMN loc;
--Table DEPT7이(가) 변경되었습니다.

DESC dept7;
--이름        널?       유형           
----------- -------- ------------ 
--DCODE              VARCHAR2(6)  
--DNAME     NOT NULL VARCHAR2(30) 
--LOCATIONS          VARCHAR2(10) 