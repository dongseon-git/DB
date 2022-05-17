--NONE-UNIQUE INDEX : 중복된 데이터가 들어가야만 하는 인덱스
-- 문법)
--    CREATE INDEX 인덱스명
--    ON 테이블 이름(컬럼 ASC|DESC, 컬럼 ASC|DESC); -(defuault) ASC

-- dept2 테이블의 area 컬럼에 NONE UNIQUE INDEX 생성
CREATE INDEX idx_dept2_area
ON dept2 (area);
--Index IDX_DEPT2_AREA이(가) 생성되었습니다.

ALTER SESSION SET STATISTICS_LEVEL = ALL;

SELECT /*+ INDEX_ASC(t1 IDX_DEPT2_AREA) */ *
FROM dept2 t1
WHERE area > '0';

-- sql_id,child_number, 출력하고자하는 포맷,
-- NULL 해당 세션의 마지막 쿼리에 해당하는 sql_id,child_number
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(NULL,NULL,'ALLSTATS LAST -ROWS +PREDICATE'));