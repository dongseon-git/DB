-- 레코드와 컬렉션

-- 레코드(RECORD)
-- 자료형이 각기 다른 데이터를 하나의 변수에 저장하는데 사용
-- 문법)
--  TYPE 레코드이름1 IS RECORD(
--      변수이름 자료형 NOTNULL := (또는 DEFAULT) 값 또는 표현식
--  );
--  TYPE 레코드이름2 IS RECORD(
--      변수이름 자료형 NOTNULL := (또는 DEFAULT) 값 또는 표현식
--      dinfo 레코드이름1
--  );
--  변수명 레코드이름2

-- 레코드를 포함한 레코드
-- 레코드 선언시 또 다른 레코드를 지정할 수도 있다.
-- REC_DEPT, REC_EMP
-- REC_EMP에 REC_DEPT포함
-- 키워드  dinfo REC_DEPT ( dinfo = 변수명 , REC_DEPT = 레코드명)

SELECT t1.empno, t1.ename, t2.deptno, t2.dname, t2.loc
FROM emp t1, dept t2
WHERE t1.deptno = t2.deptno
AND t1.empno = 7788
;
select * from emp;


SET SERVEROUTPUT ON;
DECLARE
    -- dept record 정의
    TYPE REC_DEPT IS RECORD(
        deptno dept.deptno%TYPE,
        dname dept.dname%TYPE,
        loc dept.loc%TYPE
    );
    -- emp record정의
    TYPE REC_EMP IS RECORD (
        empno EMP.empno%TYPE,
        ename EMP.ename%TYPE,
        --REC_EMP 안에 REC_DEPT RECORD포함
        dinfo REC_DEPT
    );
    -- emp record선언
    emp_rec REC_EMP;
    
BEGIN
    SELECT t1.empno, t1.ename, t2.deptno, t2.dname, t2.loc 
      INTO emp_rec.empno, emp_rec.ename, 
           emp_rec.dinfo.deptno, emp_rec.dinfo.dname, emp_rec.dinfo.loc
    FROM emp t1, dept t2
    WHERE t1.deptno = t2.deptno
    AND t1.empno = 7788;
    
    -- 조회데이터 출력
    DBMS_OUTPUT.PUT_LINE('empno: '  || emp_rec.empno);
    DBMS_OUTPUT.PUT_LINE('ename: '  || emp_rec.ename);
    DBMS_OUTPUT.PUT_LINE('deptno: ' || emp_rec.dinfo.deptno);
    DBMS_OUTPUT.PUT_LINE('dname: '  || emp_rec.dinfo.dname);
    DBMS_OUTPUT.PUT_LINE('loc: '    || emp_rec.dinfo.loc);
END;
/
--empno: 7788
--ename: SCOTT
--deptno: 20
--dname: RESEARCH
--loc: DALLAS
--
--PL/SQL 프로시저가 성공적으로 완료되었습니다.
