CREATE TABLE DEPT_TRG
AS
SELECT * FROM DEPT;

CREATE TABLE DEPT_TRG_LOG
(
TABLENAME VARCHAR2(10),
DML_TYPE VARCHAR2(10),
DEPTNO NUMBER(2),
USER_NAME VARCHAR2(20),
CHANGE_DATE DATE
);
SELECT * FROM DEPT_TRG;
SELECT * FROM DEPT_TRG_LOG;

SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER trg_dept_log
AFTER
INSERT OR UPDATE OR DELETE ON dept_trg
FOR EACH ROW

BEGIN
    IF INSERTING THEN
        INSERT INTO dept_trg_log
        VALUES ('DEPT_TRG','INSERT',:new.deptno,
         SYS_CONTEXT('USERENV','SESSION_USER'), SYSDATE);
    ELSIF UPDATING THEN
        INSERT INTO dept_trg_log
        VALUES ('DEPT_TRG','UPDATE',:old.deptno,
         SYS_CONTEXT('USERENV','SESSION_USER'), SYSDATE);
    ELSIF DELETING THEN
        INSERT INTO dept_trg_log
        VALUES ('DEPT_TRG','DELETE',:old.deptno,
         SYS_CONTEXT('USERENV','SESSION_USER'), SYSDATE);
    END IF;
END;
/

--    DEPTNO DNAME          LOC          
------------ -------------- -------------
--        10 ACCOUNTING     NEW YORK     
--        20 RESEARCH       DALLAS       
--        30 SALES          CHICAGO      
--        40 OPERATIONS     BOSTON       
--
--선택된 행 없음
--
--Trigger TRG_DEPT_LOG이(가) 컴파일되었습니다.