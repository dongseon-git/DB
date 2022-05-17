-- SUB QUERY : 하나의 쿼리 안에 또 다른 하나의 쿼리가 담겨 있는 것
-- SELECT select_list
-- FROM table or view
-- WHERE 조건 연산자 (SELECT select_list
--                  FROM table
--                  WHERE 조건 연산자);
-- 주의사항!!
-- SUB QUERY부분은 WHERE절 연산자 오른쪽에 위치해야 하며 반드시 괄호로 묶여야 한다.
-- 특별한 경우(top-n분석등)를 제외하고는 SUB QUERY절에 ORDER BY절이 올 수 없다.
-- 단일행 SUB QUERY와 다중 행 SUB QUERY에 따라 연산자를 잘 선택해야 합니다.

-- ex)EMP 테이블에서 WARD보다 COMM을 적게 받는 사람의 이름과 COMM을 출력하세요
SELECT
    ename,
    comm
FROM emp
WHERE comm < (SELECT comm
              FROM emp
              WHERE ename = 'WARD'
              )
;
--ENAME            COMM
------------ ----------
--ALLEN             300
--TURNER              0