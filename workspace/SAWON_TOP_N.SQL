SELECT * FROM sawon;

TRUNCATE TABLE sawon; -- 테이블의 데이터를 전부 삭제하고 구조만 남김 
INSERT INTO sawon -- 서브쿼리를 이용하여 데이터 입력
SELECT
    LPAD(ROWNUM,4,0) AS empno,
    'pcwk'|| LPAD(ROWNUM,4,0) AS ename,
    SYSDATE - ROWNUM AS hiredate,
    DECODE( MOD(ROWNUM,2),0,10,20 ) AS deptno
FROM dual
CONNECT BY LEVEL <= 9000
;

COMMIT;

SELECT COUNT(*) FROM sawon;

-- PASING
SELECT
    tt1.rnum,
    tt1.empno,
    tt1.ename,
    TO_CHAR(tt1.hiredate,'YYYY/MM/DD') AS hiredate,
    tt1.deptno
FROM ( SELECT ROWNUM AS rnum, t1.*
       FROM( SELECT *
             FROM sawon
             ORDER BY hiredate DESC
       )t1
       WHERE ROWNUM <= (:PAGE_SIZE * (:PAGE_NUM-1)+:PAGE_SIZE)
)tt1
WHERE rnum >= (:PAGE_SIZE * (:PAGE_NUM-1)+1)
;
-- PAGE_SIZE, PAGE_NUM
--시작번호 1, 11, 21, 31, ...
--(:PAGE_SIZE * (:PAGE_NUM-1)+1)
-- 끝번호 10, 20, 30, 40, ...
--(:PAGE_SIZE * (:PAGE_NUM-1)+:PAGE_SIZE)

-- 총 글수
SELECT COUNT(*)
FROM sawon
--조건
ORDER BY hiredate DESC;

SELECT A.*,B.*
FROM(
    SELECT
        tt1.rnum AS num,
        tt1.empno,
        tt1.ename,
        TO_CHAR(tt1.hiredate,'YYYY/MM/DD') AS hiredate,
        tt1.deptno
    FROM ( SELECT ROWNUM AS rnum, t1.*
           FROM( SELECT *
                 FROM sawon
                 ORDER BY hiredate ASC
           )t1
           WHERE ROWNUM <= (:PAGE_SIZE * (:PAGE_NUM-1)+:PAGE_SIZE)
    )tt1
    WHERE rnum >= (:PAGE_SIZE * (:PAGE_NUM-1)+1)
)A
CROSS JOIN
(   SELECT COUNT(*) AS total_cnt
    FROM sawon
 --조건
)B
;