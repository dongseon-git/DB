-- 레코드와 컬렉션

-- 컬렉션
-- 자료형이 같은 여러 데이터를 저장하는 복합 자료형
-- TABLE TYPE변수라 하기도 한다.
-- 이 변수는 Record Type과 같이 여러 가지 유형의 데이터 컬럼을 가질수도 있다.

-- 연관 배열(associative array) - 사용빈도가 가장 높음
--  연관배열은 인덱스라고도 불리는 키,값으로 구성되는 컬렉션입니다.
--  중복되지 않은 유일한 키를 통해 값을 저장하고 불러오는 방식.
-- 문법)
--  TYPE 연관배열이름 IS TABLE OF 자료형(NOT NULL)  -NOT NULL옵션은 생략가능
--  INDEX BY 인덱스형;

-- 자료형 
--  연관배열에 열에 사용할 자료형
--  VARCHAR2,DATE,NUMBER같은 단일 자료형,%TYPE,%RECORD같은 참조 자료형도 사용가능
-- 인덱스형
--  키로 사용할 인덱스의 자료형을 지정
--  BINARY_INTEGER, PLS_INTEGER같은 정수, VARCHAR2같은 문자 자료형도 사용 가능

-- INDEX BY 인덱스형;
-- PLS_INTEGER는 -2,147,483,648에서 2,147,483,647까지 범위를 가진 숫자 타입으로,
-- NUMBER 형에 비해 내부적으로 저장 공간을 덜 차지한다.
-- BINARY_INTEGER는 PLS_INTEGER 타입과 동일하다.

-- %ROWTYPE으로 연관 배열 자료형 지정하기

SET SERVEROUTPUT ON;
DECLARE
    -- 연관배열 정의
    TYPE ITAB_DEPT IS TABLE OF DEPT%ROWTYPE
    INDEX BY PLS_INTEGER;
    
    -- 연관배열 선언
    dept_arr ITAB_DEPT;
    idx PLS_INTEGER := 0;
BEGIN
    FOR i IN (SELECT * FROM dept) LOOP
        idx := idx + 1;
        
        dept_arr(idx).deptno := i.deptno;
        dept_arr(idx).dname := i.dname;
        dept_arr(idx).loc := i.loc;
        
        DBMS_OUTPUT.PUT_LINE(dept_arr(idx).deptno || ':' ||
                             dept_arr(idx).dname  || ':' ||
                             dept_arr(idx).loc
                             );
    
    END LOOP;
END;
/
--10:ACCOUNTING:NEW YORK
--20:RESEARCH:DALLAS
--30:SALES:CHICAGO
--40:OPERATIONS:BOSTON
--
--PL/SQL 프로시저가 성공적으로 완료되었습니다.