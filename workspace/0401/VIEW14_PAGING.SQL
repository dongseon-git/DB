-- 테이블 생성
BEGIN 
    FOR i IN 1..9000 LOOP
        INSERT INTO sawon VALUES (i,
            DBMS_RANDOM.STRING('A',9),
            SYSDATE - i,
            DECODE( MOD (i,2),0,10,20)
        );
    END LOOP;
    COMMIT;
END;
/
--PL/SQL 프로시저가 성공적으로 완료되었습니다.

-- 테이블 확인
SELECT COUNT(*) FROM sawon;
SELECT * FROM sawon;

-- PAGING 해보기
-- TOP-N
SELECT
    A.rnum AS num,
    A.empno,
    A.ename,
    TO_CHAR(A.hiredate,'YYYY/MM/DD') AS hiredate,
    A.deptno
FROM (SELECT ROWNUM AS rnum, t1.*
      FROM (SELECT *
            FROM sawon
            --검색조건
            ORDER BY HIREDATE DESC
      )t1
      WHERE ROWNUM <= 10 -- 출력할 행의 수
)A
WHERE rnum >= 1 -- 페이지 수
--WHERE rnum BETWEEN (:PAGE_SIZE * (:PAGE_NUM-1)+1) AND :PAGE_SIZE * (:PAGE_NUM-1)+:PAGE_SIZE
;
--      RNUM      EMPNO ENAME      HIREDATE     DEPTNO
------------ ---------- ---------- -------- ----------
--         1          1 CLeuycUqv  22/03/31         20
--         2          2 VrggbbhhU  22/03/30         10
--         3          3 lktfTMGjg  22/03/29         20
--         4          4 wbsFuuNMv  22/03/28         10
--         5          5 MKCcKdebx  22/03/27         20
--         6          6 uqqDGqeBw  22/03/26         10
--         7          7 pIuKqZVak  22/03/25         20
--         8          8 qjDbsmeJs  22/03/24         10
--         9          9 yQLqZKDJq  22/03/23         20
--        10         10 XacovCpYC  22/03/22         10

-- TOP-N
SELECT
    A.rnum AS num,
    A.empno,
    A.ename,
    TO_CHAR(A.hiredate,'YYYY/MM/DD') AS hiredate,
    A.deptno
FROM (SELECT ROWNUM AS rnum, t1.*
      FROM (SELECT *
            FROM sawon
            --검색조건
            ORDER BY HIREDATE DESC
      )t1
      WHERE ROWNUM <= :PAGE_SIZE * (:PAGE_NUM-1)+:PAGE_SIZE
)A
WHERE rnum >= :PAGE_SIZE * (:PAGE_NUM-1)+1
;
