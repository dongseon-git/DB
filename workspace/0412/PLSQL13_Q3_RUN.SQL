INSERT INTO DEPT_TRG(
DEPTNO,
DNAME,
LOC
)VALUES(
99,
'TEST_DNAME',
'SEOUL'
);
COMMIT;
SELECT *FROM DEPT_TRG;
SELECT *FROM DEPT_TRG_LOG;

UPDATE DEPT_TRG
SET LOC = 'TEST_LOC'
WHERE DEPTNO = 99;
COMMIT;
DELETE FROM DEPT_TRG WHERE DEPTNO = 99;
COMMIT;

--1 행 이(가) 삽입되었습니다.
--
--커밋 완료.
--
--1 행 이(가) 업데이트되었습니다.
--
--커밋 완료.
--
--1 행 이(가) 삭제되었습니다.
--
--커밋 완료.