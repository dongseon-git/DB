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

-- 커서에 파라미터 사용하기
-- 문법)
--  DECLARE
--      CURSOR 커서이름 (파라미터이름, 자료형, ...) IS SQL문; (WHERE절에 param이름 받음)
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

-- dept테이블의 부서번호를 10 또는 20번일 때 다른 수행을 하고 싶다면

SET SERVEROUTPUT ON;
DECLARE
    --커서에 입력할 변수
    V_DEPT_ROW DEPT%ROWTYPE;
    
    -- 명시적 커서 선언
    CURSOR c1 (p_deptno DEPT.deptno%TYPE) IS
      SELECT deptno, dname, loc
      FROM dept
      WHERE deptno = p_deptno;
BEGIN
    --10번 부서용 커서
    OPEN c1(10);
        LOOP 
            FETCH c1 INTO V_DEPT_ROW;
            EXIT WHEN c1%NOTFOUND; /*더이상 데이터가 없으면 LOOP종료 */
            
            DBMS_OUTPUT.PUT_LINE('10번 부서 - deptno: ' || V_DEPT_ROW.deptno || 
                                           ', dname: ' || V_DEPT_ROW.dname || 
                                           ', loc: '   || V_DEPT_ROW.loc
                                );
        END LOOP;
    CLOSE c1;
    
    --20번 부서용 커서
    OPEN c1(20);
        LOOP 
            FETCH c1 INTO V_DEPT_ROW;
            EXIT WHEN c1%NOTFOUND; /*더이상 데이터가 없으면 LOOP종료 */
            
            DBMS_OUTPUT.PUT_LINE('20번 부서 - deptno: ' || V_DEPT_ROW.deptno || 
                                           ', dname: ' || V_DEPT_ROW.dname || 
                                           ', loc: '   || V_DEPT_ROW.loc
                                );
        END LOOP;
    CLOSE c1;
END;
/
--10번 부서 - deptno : 10, dname : ACCOUNTING, loc : NEW YORK
--20번 부서 - deptno: 20, dname: RESEARCH, loc: DALLAS
--
--PL/SQL 프로시저가 성공적으로 완료되었습니다.