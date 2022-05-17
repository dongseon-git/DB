-- parent 테이블과 자식테이블 참조데이터 삭제 처리
--열 데이터 삭제 - 변경 및 삭제시 ON DELETE CASCADE 옵션 추가
--문법) CONSTRAINT [제약조건이름] REFERENCES 참조테이블(참조컬럼) ON DELETE CASCADE;

-- STEP. 1 삭제,변경 처리 할 테이블 생성

-- C_TEST1, C_TEST2 테이블생성
CREATE TABLE c_test1(
    no NUMBER,
    name VARCHAR2(10),
    deptno NUMBER
);
--Table C_TEST1이(가) 생성되었습니다.
CREATE TABLE c_test2(
    no NUMBER,
    name VARCHAR2(10)
);
--Table C_TEST2이(가) 생성되었습니다.

-- STEP. 2 두 개의 테이블에 제약 조건을 설정, 데이터 입력

-- C_TEST1테이블에 참조키 없이 CTEST1_DEPTNO_FK 생성
-- PK 또는 UNIQUE가 없으면 FK를 생성할 수 없다.
ALTER TABLE c_test1
ADD CONSTRAINT ctest1_deptno_fk FOREIGN KEY (deptno)
REFERENCES c_test2(no)
;
--오류 보고 -
--ORA-02270: 이 열목록에 대해 일치하는 고유 또는 기본 키가 없습니다.

-- c_tese2 테이블에 UNIQUE 생성
ALTER TABLE c_test2
ADD CONSTRAINT ctest2_no_uk UNIQUE(no);
--Table C_TEST2이(가) 변경되었습니다.

--삭제 : 제약조건 설정 시 ON DELETE CASCADE옵션 미비, 삭제 후 제약조건 재설정
ALTER TABLE c_test1
DROP CONSTRAINT CTEST1_DEPTNO_FK;

--두 개의 테이블에 제약 조건을 설정, 데이터 입력
ALTER TABLE c_test1
ADD CONSTRAINT ctest1_deptno_fk FOREIGN KEY (deptno)
REFERENCES c_test2(no) ON DELETE CASCADE
;
--Table C_TEST1이(가) 변경되었습니다.

-- c_test2테이블에 데이터 삽입
INSERT INTO c_test2 VALUES (10,'AAA');
INSERT INTO c_test2 VALUES (20,'BBB');
INSERT INTO c_test2 VALUES (30,'CCC');
--1 행 이(가) 삽입되었습니다.

-- 삽입된 데이터 확인
SELECT * FROM c_test2;
--        NO NAME      
------------ ----------
--        10 AAA       
--        20 BBB       
--        30 CCC

INSERT INTO c_test1 VALUES (1,'apple',10);
INSERT INTO c_test1 VALUES (2,'banana',20);
INSERT INTO c_test1 VALUES (3,'cherry',30);
--1 행 이(가) 삽입되었습니다.

-- 삽입된 데이터 확인
SELECT * FROM c_test1;
--        NO NAME           DEPTNO
------------ ---------- ----------
--         1 apple              10
--         2 banana             20
--         3 cherry             30

--확정하기
COMMIT;
--커밋 완료.

-- 부모테이블에 없는 참조데이터를 삽입
INSERT INTO c_test1 VALUES (4,'peach',40);
--오류 보고 -
--ORA-02291: 무결성 제약조건(SCOTT.CTEST1_DEPTNO_FK)이 위배되었습니다- 부모 키가 없습니다

-- ON DELETE CASCADE 테스트
DELETE FROM c_test2 WHERE NO = 10;
--1 행 이(가) 삭제되었습니다.

-- 삭제 후 데이터 확인
SELECT * FROM c_test1;
--        NO NAME           DEPTNO
------------ ---------- ----------
--         2 banana             20
--         3 cherry             30

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
WHERE t1.table_name IN ('C_TEST1','C_TEST2')
;
--OWNER      CONSTRAINT_NAME      CONSTRAINT_TYPE TABLE_NAME R_OWNER    R_CONSTRAINT_NAME
------------ -------------------- --------------- ---------- ---------- -----------------
--SCOTT      CTEST1_DEPTNO_FK     R               C_TEST1    SCOTT      CTEST2_NO_UK     
--SCOTT      CTEST2_NO_UK         U               C_TEST2    