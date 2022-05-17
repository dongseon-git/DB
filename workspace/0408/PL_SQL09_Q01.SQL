-- p457 Q1
-- 다음과 같은 결과가 나오도록 PL/SQL문을 작성해 보세요.
-- (1)EMP테이블과 같은 열 구조를 가지는 빈 테이블 EMP_RECORD를 생성하는 SQL문을 작성
-- (2)EMP_RECORD 테이블에 레코드를 사용하여 새로운 사원 정보를 다음과 같이 삽입

-- (1)
SELECT * FROM emp;
--     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO

-- EMP_RECORD 빈테이블 생성
CREATE TABLE emp_record
AS
SELECT * FROM emp
WHERE 1 = 2;
--Table EMP_RECORD이(가) 생성되었습니다.

SELECT * FROM emp_record;


-- (2)
SET SERVEROUTPUT ON;
DECLARE
    -- 레코드 생성
    TYPE REC_EMP IS RECORD (
        empno    EMP_RECORD.EMPNO%TYPE,
        ename    EMP_RECORD.ENAME%TYPE,
        job      EMP_RECORD.JOB%TYPE,
        mgr      EMP_RECORD.mgr%TYPE,
        hiredate EMP_RECORD.HIREDATE%TYPE,
        sal      EMP_RECORD.SAL%TYPE,
        comm     EMP_RECORD.COMM%TYPE,
        deptno   EMP_RECORD.DEPTNO%TYPE
    );
    -- 레코드 선언
    emp_rec REC_EMP;
BEGIN
    emp_rec.empno := '1111';
    emp_rec.ename := 'TEST_USER';
    emp_rec.job := 'TEST_JOB';
    emp_rec.mgr := NULL;
    emp_rec.hiredate := TO_DATE('18/03/01','YYYY/MM/DD');
    emp_rec.sal := 3000;
    emp_rec.comm := NULL;
    emp_rec.deptno := 40;
    
    INSERT INTO EMP_RECORD
    VALUES emp_rec;
    
    COMMIT;
END;
/
--PL/SQL 프로시저가 성공적으로 완료되었습니다.

SELECT * FROM EMP_RECORD;
-- EMPNO ENAME      JOB         MGR HIREDATE    SAL   COMM  DEPTNO
-------- ---------- --------- ----- -------- ------ ------ -------
--  1111 TEST_USER  TEST_JOB        18/03/01   3000             40