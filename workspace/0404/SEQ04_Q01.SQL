-- p357 Q1
-- (1) EMP테이블과 같은 구조의 데이터를 저장하는 EMPIDX테이블을 만들어 보세요.
-- (2) 생성한 EMPIDX테이블의 EMPNO 열에 IDX_EMPIDX_EMPNO인덱스를 만들어보세요.
-- (3) 마지막으로 인덱스가 잘 생성 되었는지 적절한 데이터 사전 뷰를 통해 확인해보세요.

-- (1)
CREATE TABLE empidx
AS SELECT * FROM emp;
--Table EMPIDX이(가) 생성되었습니다.
-- 생성확인 SELECT * FROM empidx;

-- (2)
CREATE INDEX idx_empidx_empno
    ON empidx (empno);
--Index IDX_EMPIDX_EMPNO이(가) 생성되었습니다.

-- (3)
SELECT
    t1.index_name,
    t1.table_name,
    t1.uniqueness,
    t1.index_type,
    t1.table_owner
FROM user_indexes t1
WHERE t1.table_name = 'EMPIDX'
;
--INDEX_NAME         TABLE_NAME UNIQUENES INDEX_TYPE   TABLE_OWNER  
------------------------------- --------- ------------ -------------
--IDX_EMPIDX_EMPNO   EMPIDX     NONUNIQUE NORMAL       SCOTT        

-- 인덱스 생성 컬럼 명 조회
--SELECT t1.index_name, t1.table_name, t1.column_name
--FROM USER_IND_COLUMNS T1
--WHERE TABLE_NAME = 'EMPIDX';