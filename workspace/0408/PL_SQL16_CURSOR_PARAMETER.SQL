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

-- 커서에 사용할 파라미터 입력받아 사용 ( &변수이름 )
-- 문법)
--  DECLARE
--      커서에 입력할 변수
--      CURSOR 커서이름 (파라미터이름, 자료형, ...) IS SQL문; (WHERE절에 param이름 받음)
--  BEGIN
--      커서에 입력할 변수 := &출력창 변수이름
--      FOR 루프인덱스이름 IN 커서이름(커서에 입력할 변수) LOOP (자동 OPEN, FETCH, CLOSE)
--          결과 행별로 반복수행할 작업; (DBMS_OUTPUT.PUT_LINE(루프인덱스이름.컬럼명);
--      END LOOP;
--  END;
--  /

SET SERVEROUTPUT ON;
DECLARE
    -- 부서번호 저장용 변수
    V_DEPTNO DEPT.deptno%TYPE;
    
    --명시적 커서 선언
    CURSOR c1 (p_deptno DEPT.deptno%TYPE) IS
      SELECT deptno, dname, loc
      FROM dept
      WHERE deptno = p_deptno;
BEGIN
    V_DEPTNO := &input_deptno;
    
    -- 커서 FOR LOOP (자동 OPEN,FETCH,CLOSE)
    FOR c1_fl_idx IN c1(V_DEPTNO) LOOP
    
    DBMS_OUTPUT.PUT_LINE('deptno: '  || c1_fl_idx.deptno ||
                         ', dname: ' || c1_fl_idx.dname ||
                         ', loc: '   || c1_fl_idx.loc
                        );
    END LOOP;
END;
/
--input_deptno : 10
--deptno: 10, dname: ACCOUNTING, loc: NEW YORK
--
--PL/SQL 프로시저가 성공적으로 완료되었습니다.