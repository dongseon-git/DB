SET SERVEROUTPUT ON;
DECLARE
    v_wrong DATE;
BEGIN
    SELECT ENAME INTO v_wrong
    FROM emp
    WHERE empno = 7369;
    
    DBMS_OUTPUT.PUT_LINE('예외가 발생하면 다음 문장은 실행되지 않습니다');
EXCEPTION
    WHEN VALUE_ERROR THEN
        DBMS_OUTPUT.PUT_LINE('예외처리 : 수치 또는 값 오류 발생');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('예외처리 : 사전 정의 외 오류 발생');
        DBMS_OUTPUT.PUT_LINE('SQLCODE : ' || TO_CHAR( SQLCODE));
        DBMS_OUTPUT.PUT_LINE('SQLCODE : ' || SQLERRM);
END;
/