-- 컬럼의 데이터크기 변경
-- 컬럼의 사이즈 변경
DESC dept7;
--이름        널?       유형           
----------- -------- ------------ 
--DCODE              VARCHAR2(6)  
--DNAME     NOT NULL VARCHAR2(30) 
--LOCATIONS          VARCHAR2(10) 
--LOC                VARCHAR2(10))

--LOC VARCHAR2(10) -> VARCHAR2(20)
ALTER TABLE dept7
MODIFY (loc VARCHAR2(20));
--Table DEPT7이(가) 변경되었습니다.

DESC dept7;
--이름        널?       유형           
----------- -------- ------------ 
--DCODE              VARCHAR2(6)  
--DNAME     NOT NULL VARCHAR2(30) 
--LOCATIONS          VARCHAR2(10) 
--LOC                VARCHAR2(20) 