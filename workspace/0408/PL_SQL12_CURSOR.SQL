-- 18. 커서와 예외처리

-- 커서 (cursor)
-- SELECT문 또는 DML 같은 SQL문을 실행했을 때 해당 SQL문을 처리하는 정보를 저장한 메모리공간
-- (명시적 커서, 묵시적 커서)

-- 명시적인 커서
--  사용자가 직접 커서를 선언하고 사용하는 커서를 뜻한다.
-- 다음과 같은 단계를 거쳐 사용
-- 1단계  명시적인 커서 선언(Declaration)
--  : 커서 이름을 개발자가 지정하여 사용할 커서를 SQL문과 함께 선언
-- 2단계  커서 열기(Open)
--  : 커서를 선언할 때 작성한 SQL문 실행 (이때 실행한 SQL문에 영향을 받는 행 : active set)
-- 3단계  커서에서 읽어온 데이터 사용(Fetch)
--  : 실행된 SQL문의 결과 행 정보 하나씩 일겅와 변수에 저장, LOOP문을 함께 사용
-- 4단계  커서 닫기(Close)
--  : 사용이 끝난 커서를 종료한다.

-- 하나의 행만 조회하는 경우 VS SELECT INTO 
--문법)
--  DECLARE
--      CURSOR 커서이름 IS SQL문; --명시적인 커서 선언(Declaration)
--  BEGIN
--      OPEN 커서이름;            --커서 열기(Open)
--      FETCH 커서이름 INTO 변수;  --커서로 부터 읽어온 데이터를 사용(Fetch)
--      CLOSE 커서이름;           --커서 닫기(Close)
--  END;
--  /

SET SERVEROUTPUT ON;
DECLARE
    V_DEPT DEPT%ROWTYPE;
    -- 명시적인 커서 선언
  --CURSOR 커서이름 IS SQL문; --커서 선언(Declaration)
    CURSOR c1 IS 
        SELECT deptno, dname, loc 
        FROM dept 
        WHERE deptno = 40;
BEGIN
  --OPEN 커서이름;            --커서 열기(Open)
    OPEN c1;
    
  --FETCH 커서이름 INTO 변수;  --커서로 부터 읽어온 데이터를 사용(Fetch)
   FETCH c1 INTO V_DEPT;
   
   DBMS_OUTPUT.PUT_LINE('deptno: ' || V_DEPT.deptno);
   DBMS_OUTPUT.PUT_LINE('dname: '  || V_DEPT.dname);
   DBMS_OUTPUT.PUT_LINE('loc: '    || V_DEPT.loc);
   
  --CLOSE 커서이름;           --커서 닫기(Close)   
    CLOSE c1;
END;
/