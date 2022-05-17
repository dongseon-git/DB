-- 변수 이름 정하기
-- 1. 같은 불록 안에서는 고유해야 한다.(중복될 수 없다.)
-- 2. 대/소문자를 구별하지 않는다.
-- 3. 테이블 이름 붙이는 규칙과 동일

-- 변수의 자료형
--  저장할 데이터에 따라 스칼라,복합,참조,LOB(Lage OBject)로 구분된다.

-- 스칼라형(scalar type)
--  오라클에서 기본으로 정의해 놓은 자료형 (숫자, 문자, 날짜 등)(내부구성요소가 없는 단일 값)

-- 참조형(reference type)
--  특정 테이블의 열의 자료형, 하나의 행 구조를 참조하는 자료형 
--  변수이름 테이블.열이름%TYPE;
--  변수이름 테이블.%ROWTYPE;

SET SERVEROUTPUT ON;
DECLARE
    V_DEPTNO DEPT.deptno%TYPE := 50;
BEGIN
    -- 변수 대/소문자 구분 없음
    DBMS_OUTPUT.PUT_LINE('V_DEPTNO: ' || v_deptno);
END;
/
--V_DEPTNO: 50
--PL/SQL 프로시저가 성공적으로 완료되었습니다.