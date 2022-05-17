-- 테이블에 데이터 추가하는 INSERT문
--empno       9999
--ename       '홍길동'
--job         'president'
--mgr         null
--hiredate    '2001/01/01'
--sal         5000
--comm        1000
--deptno      10

INSERT INTO emp_temp(
    empno
    ,ename
    ,job
    ,mgr
    ,hiredate
    ,sal
    ,comm
    ,deptno
)VALUES(
    9999
    ,'홍길동'
    ,'PRESIDENT'
    ,NULL
    ,'2001/01/01'
    ,5000
    ,1000
    ,10
);
-- 삽입된 행 확인
SELECT * FROM emp_temp;

-- 날짜 데이터 입력 및 데이터크기 초과 오류내기!!!
INSERT INTO emp_temp(
    empno
    ,ename
    ,job
    ,mgr
    ,hiredate
    ,sal
    ,comm
    ,deptno
)VALUES(
    2111
    ,'홍길동02'
    ,'PRESIDENT'
    ,NULL
    ,'01/01/2001'
    ,5000
    ,1000
    ,10
);
--오류 보고 -45행 byte초과 한글 1글자 3byte 숫자 1byte
--ORA-12899: "SCOTT"."EMP_TEMP"."ENAME" 열에 대한 값이 너무 큼(실제: 11, 최대값: 10)
--오류 보고 -48행 데이터 타입이 맞지않음
--ORA-01830: 날짜 형식의 지정에 불필요한 데이터가 포함되어 있습니다

-- 날짜데이터 구분자 '/' , '-' 관계없다는것 증명
INSERT INTO emp_temp(
    empno
    ,ename
    ,job
    ,mgr
    ,hiredate
    ,sal
    ,comm
    ,deptno
)VALUES(
    1111
    ,'홍03'
    ,'PRESIDENT'
    ,NULL
    ,'2001-01-01'
    ,5000
    ,1000
    ,10
);
-- 삽입된 행 확인
SELECT * FROM emp_temp;

-- 날짜 형식을 TO_DATE로 변경하면 입력가능
INSERT INTO emp_temp(
    empno
    ,ename
    ,job
    ,mgr
    ,hiredate
    ,sal
    ,comm
    ,deptno
)VALUES(
    2112
    ,'홍05'
    ,'PRESIDENT'
    ,NULL
    ,TO_DATE('01/01/2001','DD/MM/YYYY')
    ,5000
    ,1000
    ,10
);
--삽입된 행 확인
SELECT * FROM emp_temp;

--SSYSDATE이용 입력 - 시스템(local) 날짜로 입력
INSERT INTO emp_temp(
    empno
    ,ename
    ,job
    ,mgr
    ,hiredate
    ,sal
    ,comm
    ,deptno
)VALUES(
    2113
    ,'홍06'
    ,'PRESIDENT'
    ,NULL
    ,SYSDATE
    ,5000
    ,1000
    ,10
);
--삽입된 행 확인
SELECT * FROM emp_temp;

-- EMPNO ENAME      JOB          MGR HIREDATE      SAL       COMM     DEPTNO
-- ----- --------- ---------  ------ -------- -------- ---------- ----------
--  9999 홍길동     PRESIDENT         01/01/01     5000       1000         10
--  1111 홍03       PRESIDENT         01/01/01     5000       1000         10
--  2112 홍05       PRESIDENT         01/01/01     5000       1000         10
--  2113 홍06       PRESIDENT         22/03/29     5000       1000         10