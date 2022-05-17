-- 다른 테이블과 관계를 맺는 FOREIGN KEY

-- emp테이블과 dept테이블의 관계 확인
COL owner FOR A10
COL constraint_name FOR A20
COL constraint_type FOR A15
COL table_name FOR A10
COL r_owner FOR A10
COL r_constraint_name FOR A17
SELECT 
    t1.owner,
    t1.constraint_name,
    t1.constraint_type,
    t1.table_name,
    t1.r_owner,
    t1.r_constraint_name
FROM user_constraints t1
WHERE t1.table_name IN ('EMP','DEPT')
;
--OWNER      CONSTRAINT_NAME      CONSTRAINT_TYPE TABLE_NAME R_OWNER    R_CONSTRAINT_NAME
------------ -------------------- --------------- ---------- ---------- -----------------
--SCOTT      PK_DEPT              P               DEPT                                   
--SCOTT      PK_EMP               P               EMP                                    
--SCOTT      FK_DEPTNO            R               EMP        SCOTT      PK_DEPT

select * from emp;
select * from dept;

-- dept테이블에 없는 deptno를 emp테이블에 입력해보기(오류내보기)
INSERT INTO emp (
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
    50
);
--오류 보고 - dept테이블에 deptno  50 부서번호는 없음!
--ORA-02291: 무결성 제약조건(SCOTT.FK_DEPTNO)이 위배되었습니다- 부모 키가 없습니다