-- MERGE : 여러 테이블의 데이터를 합치는 병합을 의미한다.
-- 문법)
--  MERGE INTO TABLE1  - table1에 데이터를 UPDATE,DELETE,INSERT
--  USING TABLE2
--  ON (병합조건) - table1과 table2의 병합조건
--  WHEN MATCHED THEN
--      UPDATE SET 업데이트 내용
--      DELETE WHERE 조건
--  WHEN NOT MATCHED THEN
--      INSERT VALUES(데이터)

-- sawon table에 있으면 update 없으면 insert
--INSERT INTO sawon (
--    empno,
--    ename,
--    hiredate,
--    deptno
--) VALUES (
--    :v0,
--    :v1,
--    sysdate,
--    :v3
--);

--select * from sawon;
--     EMPNO ENAME      HIREDATE     DEPTNO
------------ ---------- -------- ----------
--      1111 홍u2       22/03/29         20

MERGE INTO sawon ta
USING ( SELECT  -- param으로 받아 하나의 테이블 tb 완성
            :empno  AS empno,
            :ename  AS ename,
            SYSDATE AS hiredate,
            :deptno AS deptno
        FROM dual
) tb 
ON ( ta.empno = tb.empno )
WHEN MATCHED THEN
    UPDATE SET ta.ename    = tb.ename,
               ta.hiredate = tb.hiredate,
               ta.deptno   = tb.deptno
WHEN NOT MATCHED THEN
    INSERT (ta.empno,ta.ename,ta.hiredate,ta.deptno) 
    VALUES (tb.empno,tb.ename,tb.hiredate,tb.deptno);

select * from sawon;
--     EMPNO ENAME      HIREDATE     DEPTNO
------------ ---------- -------- ----------
--      2222 pcwk       22/03/30         10
--      3333 홍         22/03/30         20
--      1111 hong       22/03/30         30