--UNIQUE INDEX : 인덱스를 만드는 컬럼에 중복되는 데이터가 없다.
--(데이터 중복이 현재, 미래에도 없다.)
-- 문법)
--    CREATE UNIQUE INDEX 인덱스명
--    ON 테이블 이름(컬럼 ASC|DESC, 컬럼 ASC|DESC); -(defuault) ASC
DESC dept2;
SELECT * FROM dept2;
--DCODE  DNAME                          PDEPT  AREA                          
-------- ------------------------------ ------ ------------------------------
--0001   President                             Pohang Main Office            
--1000   Management Support Team        0001   Seoul Branch Office           
--1001   Financial Management Team      1000   Seoul Branch Office           
--1002   General affairs                1000   Seoul Branch Office           
--1003   Engineering division           0001   Pohang Main Office            
--1004   H/W Support Team               1003   Daejeon Branch Office         
--1005   S/W Support Team               1003   Kyunggi Branch Office         
--1006   Business Department            0001   Pohang Main Office            
--1007   Business Planning Team         1006   Pohang Main Office            
--1008   Sales1 Team                    1007   Busan Branch Office           
--1009   Sales2 Team                    1007   Kyunggi Branch Office         
--1010   Sales3 Team                    1007   Seoul Branch Office           
--1011   Sales4 Team                    1007   Ulsan Branch Office 

-- dept2 테이블에 DNAME에 UNIQUE INDEX 생성
CREATE UNIQUE INDEX index_dept2_dname
ON dept2(dname);
--INDEX INDEX_DEPT2_DNAME이(가) 생성되었습니다.

INSERT INTO dept2 VALUES ( 9100,'temp01','1006','Seoul Branch Office');
--1 행 이(가) 삽입되었습니다.

-- DNAME 중복 시키기 -고의적 오류
INSERT INTO dept2 VALUES ( 9101,'temp01','1006','Seoul Branch Office');
--명령의 32 행에서 시작하는 중 오류 발생 -
--INSERT INTO dept2 VALUES ( 9101,'temp01','1006','Seoul Branch Office')
--오류 보고 -
--ORA-00001: 무결성 제약 조건(SCOTT.INDEX_DEPT2_DNAME)에 위배됩니다

-- UNIQUE INDEX가 성능이 아주 좋은데, 혹시 현재 중복된 값이 없다 하더라도
-- 향후에도 중복된 값이 입력될 가능성이 있는 컬럼에는 사용될수 없다.