-- TO_CHAR Quiz 01
--EMP테이블을 조회하여 comm값을 가지고 있는 사람들의 empno,ename,hiredate,총연봉,
--15%인상 후 연봉을 출력하세요. 단 총연봉은 (sal*12)+comm으로 계산하고 sal로 출력하고
--15%인상한 값은 총연봉의 15%인상 값입니다.
--(HIREDATE컬럼의 날짜 형식과 sal컬럼, 15%up 컬럼의 $표시와 기호 나오게하세요)
SELECT 
    empno,
    ename,
    TO_CHAR(hiredate,'YYYY-MM-DD') AS "HIREDATE",
    TO_CHAR(sal*12+comm,'$999,999') AS "SAL",
    TO_CHAR((sal*12+comm)*1.15,'$999,999') AS "15%UP SAL"
FROM emp
WHERE comm IS NOT NULL
;
--     EMPNO ENAME      HIREDATE   SAL       15%UP SAL
------------ ---------- ---------- --------- ---------
--      7499 ALLEN      1981-02-20   $19,500   $22,425
--      7521 WARD       1981-02-22   $15,500   $17,825
--      7654 MARTIN     1981-09-28   $16,400   $18,860
--      7844 TURNER     1981-09-08   $18,000   $20,700