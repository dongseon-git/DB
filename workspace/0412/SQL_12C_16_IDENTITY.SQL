CREATE TABLE T_IDEN
(
NO NUMBER GENERATED AS IDENTITY,
NAME VARCHAR2(10)
);
--Table T_IDEN이(가) 생성되었습니다.
--INSERT INTO T_IDEN (NAME) VALUES('BBB');
--1 행 이(가) 삽입되었습니다.
SELECT *FROM T_IDEN;
--  NO NAME      
------------ ----------
--         1 AAA       
--         2 BBB    