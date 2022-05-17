-- p444 Q1
-- 숫자 1부터 10까지의 숫자 중 오른쪽과 같이 홀수만 출력하는 PL/SQL프로그램을 작성해보세요.
SET SERVEROUTPUT ON;
DECLARE

BEGIN
    FOR i IN 1 .. 10 LOOP
    --  i를 2로 나눈 나머지 값이 0이면 CONTINUE(넘김)
        CONTINUE WHEN MOD(i,2) = 0;
        DBMS_OUTPUT.PUT_LINE('현재 i의 값: ' || i);
    END LOOP;
END;
/
--현재 i의 값: 1
--현재 i의 값: 3
--현재 i의 값: 5
--현재 i의 값: 7
--현재 i의 값: 9
--
--PL/SQL 프로시저가 성공적으로 완료되었습니다.