-- Scalar Sub Query테스트
-- 2개 이상의 컬럼을 조회할 경우 - 에러

SELECT
    t3.no,
    t3.name,
    (SELECT dname,deptno
     FROM t4 
     WHERE t3.deptno = t4.deptno) AS dname
FROM t3
;
--ORA-00913: 값의 수가 너무 많습니다
--00913. 00000 -  "too many values"

-- 스칼라 서브 쿼리는 일반적으로 데이터의 종류나 양이 적은 코드 성격의 테이블에서
-- 적은 수의 데이터를 가져와야 할 경우 JOIN대신 사용하면 성능이 좋지만, 그런 상황이 
-- 아닌 경우 JOIN보다 성능이 떨어 진다.