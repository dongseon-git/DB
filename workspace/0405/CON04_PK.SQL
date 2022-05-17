-- 유일하게 하나만 있는 값 PRIMARY KEY
-- PRIMARY KEY : NOT NULL + UNIQUE의 특징을 가지며 테이블 내에서 데이터들 끼리
--               유일성을 보장하는 컬럼에 설정합니다. 그리고 테이블당 1개만 설정
-- 특정 열을 PK로 지정하면 해당 열에는 자동으로 인덱스가 만들어 진다.

-- PRIMARY KET 제약 조건을 지정한 열 확인 (NULL데이터입력)
--table_pk -  NULL데이터 입력
INSERT INTO table_pk (login_pwd,tel) 
 VALUES ('PWD01','010-1234-5678');
--오류 보고 -
--ORA-01400: NULL을 ("SCOTT"."TABLE_PK"."LOGIN_ID") 안에 삽입할 수 없습니다