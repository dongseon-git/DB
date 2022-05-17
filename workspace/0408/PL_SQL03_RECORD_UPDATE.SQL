-- 레코드와 컬렉션

-- 레코드(RECORD)
-- 자료형이 각기 다른 데이터를 하나의 변수에 저장하는데 사용
-- 문법)
--  TYPE 레코드이름 IS RECORD(
--      변수이름 자료형 NOTNULL := (또는 DEFAULT) 값 또는 표현식
-- );

-- 레코드를 사용한 UPDATE
SET SERVEROUTPUT ON;
DECLARE
    -- RECORD 정의
    TYPE REC_DEPT IS RECORD(
        deptno NUMBER(2) NOT NULL := 99,
        dname DEPT_RECORD.dname%TYPE,
        loc DEPT_RECORD.loc%TYPE
    );
    
    --RECORD 선언
    dept_rec REC_DEPT;    
BEGIN
    dept_rec.deptno := 50;
    dept_rec.dname := 'WEB DEV';
    dept_rec.loc := 'Hongdae';
    
    -- SET ROW : ROW로 전체 데이터 할당!
    UPDATE DEPT_RECORD
    SET ROW = dept_rec
    WHERE deptno = 70;
    
    COMMIT;
END;
/
--PL/SQL 프로시저가 성공적으로 완료되었습니다.

SELECT * FROM DEPT_RECORD;
--    DEPTNO DNAME          LOC          
------------ -------------- -------------
--        10 ACCOUNTING     NEW YORK     
--        20 RESEARCH       DALLAS       
--        30 SALES          CHICAGO      
--        40 OPERATIONS     BOSTON       
--        50 WEB DEV        Hongdae