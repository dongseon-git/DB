-- Scalar Sub Query테스트
-- 2건 이상의 데이터 반환을 요청하는 경우 - 에러
SELECT
    t3.no,
    t3.name,
    (SELECT dname FROM t4 WHERE t3.deptno = t4.deptno) AS dname
FROM t3
;
--ORA-01427: 단일 행 하위 질의에 2개 이상의 행이 리턴되었습니다.
--01427. 00000 -  "single-row subquery returns more than one row"

-- t4에 있는 deptno 100 , dname 'DDD' 를 deptno 100 -> 400 으로 변경(업데이트)
UPDATE t4
SET deptno = 400
WHERE dname = 'DDD'
;
commit;