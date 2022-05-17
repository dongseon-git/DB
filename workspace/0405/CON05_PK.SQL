-- 유일하게 하나만 있는 값 PRIMARY KEY
-- PRIMARY KEY : NOT NULL + UNIQUE의 특징을 가지며 테이블 내에서 데이터들 끼리
--               유일성을 보장하는 컬럼에 설정합니다. 그리고 테이블당 1개만 설정
-- 특정 열을 PK로 지정하면 해당 열에는 자동으로 인덱스가 만들어 진다.

--테이블 생성하면서 다른 방법으로 제약조건 이름 직접 지정하기 : CONSTRAINT
CREATE TABLE table_pk3(
 login_id VARCHAR2(20),
 login_pwd VARCHAR2(20) CONSTRAINT tablepk3_loginpwd_nn NOT NULL,
 tel VARCHAR2(20),
  CONSTRAINT tablepk3_loginid_pk PRIMARY KEY (login_id)
);
--Table TABLE_PK3이(가) 생성되었습니다.