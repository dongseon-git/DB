--프로시저를 생성할 때 발생하는 오류를 확인하는 방법
CREATE OR REPLACE PROCEDURE PRO_ERR
IS
  ERR_NO NUMBER;
BEGIN
ERR_NO = 100; --: 제거(오류)
DBMS_OUTPUT.PUT_LINE('ERR_NO: ' ||ERR_NO);
END;
/
