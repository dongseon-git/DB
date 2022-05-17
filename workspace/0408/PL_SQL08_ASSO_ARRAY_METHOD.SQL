-- 컬렉션 메서드
--  컬렉션의 사용 편의를 위한 제공
-- EXISTS(n) : 컬렉션에서 n인덱스의 데이터 존재 여부를 true/false로 반환
-- COUNT : 컬렉션에 포함되어 있는 요소 개수를 반환
-- LIMIT : 현재 컬렉션의 최대 크기를 반환. 최대크기가 없으면 NULL반환
-- FIRST : 컬렉션의 첫 번째 인덱스 번호를 반환
-- LAST  : 컬렉션의 마지막 인덱스 번호를 반환.
-- PRIOR(n) : 컬렉션에서 n인덱스 바로 앞 인덱스 값을 반환. 대상 인덱스 값이 없으면 NULL반환
-- NEXT(n) : 컬렉션에서 n인덱스 바로 다음 인덱스 값을 반환. 대상 인덱스 값이 없으면 NULL반환
-- DELETE : 컬렉션에서 저장된 요소를 지우는데 사용. 다음 세 가지 방식으로 사용
/*      DELETE : 컬렉션에 저장되어 있는 모든 요소를 삭제.
        DELETE(n) : n인덱스의 컬렉션 요소를 삭제합니다.
        DELETE(n,m) : n인덱스 부터 m인덱스까지 요소를 삭제합니다. */
-- EXTEND : 컬렉션의 크기를 증가. 연관배열을 제외한 중첩테이블과 VARRAY에서 사용
-- TRIM : 컬렉션의 크기를 감소. 연관배열을 제외한 중첩테이블과 VARRAY에서 사용

SET SERVEROUTPUT ON;
DECLARE
    TYPE ITAB_EX IS TABLE OF VARCHAR(20)
    INDEX BY PLS_INTEGER;
    
    text_arr ITAB_EX;
BEGIN
    text_arr(1) := '1st';
    text_arr(2) := '2st';
    text_arr(3) := '3st';
    text_arr(4) := '4st';
    text_arr(50) := '5st';
    
    DBMS_OUTPUT.PUT_LINE('text_arr.COUNT: '     || text_arr.COUNT);
    DBMS_OUTPUT.PUT_LINE('text_arr.FIRST: '     || text_arr.FIRST);
    DBMS_OUTPUT.PUT_LINE('text_arr.LAST: '      || text_arr.LAST);
    DBMS_OUTPUT.PUT_LINE('text_arr.PRIOR(50): ' || text_arr.PRIOR(50));
    DBMS_OUTPUT.PUT_LINE('text_arr.NEXT(50): '  || text_arr.NEXT(50));
END;
/
--text_arr.COUNT: 5
--text_arr.FIRST: 1
--text_arr.LAST: 50
--text_arr.PRIOR(50): 4
--text_arr.NEXT(50): 
--
--PL/SQL 프로시저가 성공적으로 완료되었습니다.