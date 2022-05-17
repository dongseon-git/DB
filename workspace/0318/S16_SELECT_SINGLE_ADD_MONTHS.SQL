-- ADD_MONTHS()함수 : ADD_MONTHS(날짜,1)주어진 날짜에 개월을 더함
-- ADD_MONTHS([날짜데이터],[더할 개월 수(정수)]) 더할 개월 수가 음수일경우 뺀다.
-- 입사 42년 미만인 사원 데이터 출력
SELECT
    empno,
    ename,
    hiredate,
    SYSDATE,
    ADD_MONTHS(hiredate,12*10*4+2) AS "ADD_42TEAR"
FROM emp
WHERE ADD_MONTHS(hiredate,12*10*4+2) > SYSDATE
;
--EMPNO ENAME      HIREDATE     SYSDATE     ADD_42TEAR         
-----------------------------------------------------------
--7876  ADAMS      1987-02-21   2022-03-18  2027-04-21
--7788  SCOTT      1987-04-19   2022-03-18  2027-06-19
--7934  MILLER     1982-01-23   2022-03-18  2022-03-23