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

-- 여러 행이 조회되는 경우 사용하는 LOOP문
--문법)
--  DECLARE
--      CURSOR 커서이름 IS SQL문; --명시적인 커서 선언(Declaration)
--  BEGIN
--      OPEN 커서이름;            --커서 열기(Open)
--        LOOP
--          FETCH 커서이름 INTO 변수;  --커서로 부터 읽어온 데이터를 사용(Fetch)
--          EXIT WHEN 커서이름%NOTFOUND; 더이상 데이터가 없으면: LOOP종료
--          추출데이터 DBMS_OUTPUT.PUT_LINE();
--        END LOOP;
--      CLOSE 커서이름;           --커서 닫기(Close)
--  END;
--  /

SET SERVEROUTPUT ON;
DECLARE
    -- 커서 데이터를 저장할 ROWTYPE변수 선언
    V_DEPT_ROW DEPT%ROWTYPE;
    
    -- 커서 선언
    CURSOR c1 IS
        SELECT deptno, dname, loc
        FROM dept;
BEGIN
    -- 커서열기
    OPEN c1;
    LOOP
        --커서로부터 데이터 추출
        FETCH c1 INTO V_DEPT_ROW;
        
        --더이상 데이터가 없으면: LOOP종료
        EXIT WHEN c1%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('deptno: '  || V_DEPT_ROW.deptno ||
                             ', dname: ' || V_DEPT_ROW.dname  ||
                             ', loc: '   || V_DEPT_ROW.loc 
                             );
    END LOOP;
    -- 커서닫기
    CLOSE c1;
END;
/
--deptno: 10, dname: ACCOUNTING, loc: NEW YORK
--deptno: 20, dname: RESEARCH, loc: DALLAS
--deptno: 30, dname: SALES, loc: CHICAGO
--deptno: 40, dname: OPERATIONS, loc: BOSTON
--
--PL/SQL 프로시저가 성공적으로 완료되었습니다.