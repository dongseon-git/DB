-- LTRIM([원본문자열 컬럼],[삭제할 문자 집합])
-- RTRIM([원본문자열 컬럼],[삭제할 문자 집합])
SELECT
    '[' || TRIM (' __Oracle__ ') || ']'      AS "TRIM",
    '[' || LTRIM(' __Oracle__ ') || ']'      AS "LTRIM",
    '[' || LTRIM('<__Oracle__>','<_') || ']' AS "LTRIM",
    '[' || RTRIM(' __Oracle__ ') || ']'      AS "RTRIM",
    '[' || RTRIM('<__Oracle__>','_>') || ']' AS "RTRIM"
FROM dual
; 
--TRIM         LTRIM         LTRIM       RTRIM         RTRIM      
-------------- ------------- ----------- ------------- -----------
--[__Oracle__] [__Oracle__ ] [Oracle__>] [ __Oracle__] [<__Oracle]