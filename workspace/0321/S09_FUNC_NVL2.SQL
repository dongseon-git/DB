-- NULL처리 함수
--NVL2함수 : 열 또는 데이터를 입력하여 해당 데이터가 NULL이 아닐때와 NULL일때 출력데이터
--COL1값이 NULL이 아니면 COL2
--COL1값이 NILL이면 COL3
SELECT
    empno,
    ename,
    comm,
    sal,
    NVL2(comm,'0','x') AS "NVL2",
    NVL2(comm,sal*12+comm,sal*12) AS "ANUAL_SAL"
FROM emp
;