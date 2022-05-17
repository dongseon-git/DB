-- 다른 테이블과 관계를 맺는 FOREIGN KEY

-- dept테이블에 없는 deptno를 emp테이블에 입력해보기(오류내보기)

--dept_fk테이블에 데이터가 없음!
INSERT INTO emp_fk (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
) VALUES (
    9999,
    'hong',
    'CLERK',
    '7788',
    '2017/04/03',
    1200,
    NULL,
    10
);
--오류 보고 -
--ORA-02291: 무결성 제약조건(SCOTT.EMPFK_DEPTNO_FK)이 위배되었습니다- 부모 키가 없습니다

--dept_fk 테이블에 부서번호10 데이터 삽입 (위 emp테이블 데이터 삽입 환경 만들어주기)
INSERT INTO dept_fk (
    deptno,
    dname,
    loc
) VALUES (
    10,
    'TEST_DNAME',
    'TEST_LOG'
);
--1 행 이(가) 삽입되었습니다.

-- 아래의 dept_fk테이블에 부서번호 10 데이터 삽입 후 emp 데이터 삽입
INSERT INTO emp_fk (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
) VALUES (
    9999,
    'hong',
    'CLERK',
    '7788',
    '2017/04/03',
    1200,
    NULL,
    10
);
--1 행 이(가) 삽입되었습니다.

--삽입된 데이터 확인
SELECT * FROM emp_fk;
-- EMPNO ENAME  JOB     MGR HIREDATE   SAL  COMM  DEPTNO
-------- ------ ----------- -------- ----- ----- -------
--  9999 hong   CLERK  7788 17/04/03  1200            10