--CREATE TABLE T_MEMBER
--(
--NO    NUMBER,
--NAME  VARCHAR2(10),
--TEL   NUMBER,
--JUMIN VARCHAR2(13) INVISIBLE
--);
--Table T_MEMBER이(가) 생성되었습니다.
DESC T_MEMBER;
------ -- ------------ 
---- JUMIN컬럼이 보이지 않음!
--NO      NUMBER       
--NAME    VARCHAR2(10) 
--TEL     NUMBER    

--INSERT INTO T_MEMBER VALUES (1,'BBB',1234567890,1234567);
--SQL 오류: ORA-00913: 값의 수가 너무 많습니다
--INSERT INTO T_MEMBER VALUES (1,'BBB',1234567890);
--1 행 이(가) 삽입되었습니다.
SELECT * FROM T_MEMBER;
--1	BBB	1234567890

--속성변경
ALTER TABLE T_MEMBER
MODIFY (JUMIN INVISIBLE);
--Table T_MEMBER이(가) 변경되었습니다.
SELECT * FROM T_MEMBER;
--1	BBB	1234567890	NULL


SELECT TABLE_NAME,
       COLUMN_NAME,
       HIDDEN_COLUMN
FROM USER_TAB_COLS
WHERE TABLE_NAME = 'T_MEMBER'

--TABLE_NAME          COLUMN_NAME         HID
--
--T_MEMBER               NO                NO 
--T_MEMBER              NAME               NO 
--T_MEMBER              TEL                NO 
--T_MEMBER             JUMIN              YES
