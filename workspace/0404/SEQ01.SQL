-- 시퀀스(Sequence)	
-- 연속된 번호의 생성이 필요한 경우를 위해 사용
-- 연속된 번호 자동 생성기
--  문법)
--   CREATE SEQUENCE 시퀀스 이름
--   [INCREMENT BY n] -- 시퀀스 번호의 증가 값으로 기본값은 1
--   [START WITH n] -- 시퀀스 시작번호 기본값은 1
--   [MAXVALUE n | NOMAXVALUE] -- 생성 가능한 시퀀스 최대값(nomaxvalue 10의27승)
--   [MINVALUE n | NOMINVALUE] -- 시퀀스에서 생성할 번호의 최소값. 
--                                (nominvalue 오름차순이면 1, 내림차순이면 10의-26승)
--   [CYCLE | NOCYCLE] -- 시퀀스 번호를 순환 사용할 것인지 지정
--   [CACHE n | NOCACHE] -- 시퀀스 생성 속도를 개선하기 위해 캐싱 여부 지정

-- 시퀀스 생성
CREATE TABLE dept_sequence
AS 
SELECT * 
FROM dept 
WHERE 1 = 2;
--Table DEPT_SEQUENCE이(가) 생성되었습니다.

DESC dept_sequence;
--이름     널? 유형           
-------- -- ------------ 
--DEPTNO    NUMBER(2)    
--DNAME     VARCHAR2(14) 
--LOC       VARCHAR2(13)

-- 시퀀스 생성
CREATE SEQUENCE seq_dept_sequence
INCREMENT BY 10
START WITH 10
MAXVALUE 90
MINVALUE 0
NOCYCLE
CACHE 2;
--Sequence SEQ_DEPT_SEQUENCE이(가) 생성되었습니다.

-- 시퀀스 확인
SELECT *
FROM user_sequences
;

-- dept_sequence테이블에 DEPTNO에 시퀀스를 이용해서 입력
-- seq_dept_sequence.NEXTVAL : 번호 꺼내오기
INSERT INTO dept_sequence VALUES (seq_dept_sequence.NEXTVAL,'DATABASE','SEOUL');
--1 행 이(가) 삽입되었습니다.

-- 행 삽입 후 확인
SELECT * FROM dept_sequence;

-- 현재 시퀀스 번호
SELECT seq_dept_sequence.CURRVAL FROM dual;

-- 입력 반복 수행
INSERT INTO dept_sequence VALUES (seq_dept_sequence.NEXTVAL,'DATABASE','SEOUL');
SELECT * FROM dept_sequence;

-- MAXVALUE 를 초과시 오류 확인
--오류 보고 
--ORA-08004: 시퀀스 SEQ_DEPT_SEQUENCE.NEXTVAL exceeds MAXVALUE은 사례로 될 수 없습니다