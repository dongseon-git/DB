-- 객체 권한 부여
--  객체 권한 부여 역시 GRANT문 사용
--    문법)
--     GRANT[권한/ALL PRIVILEGES]
--     ON [스키마.객체이름]
--     TO [사용자이름/롤(Role)이름/PUBLIC]
--     [WITH GRANT OPTION]

--TEMP
--GRANT SELECT
--GRANT INSERT
CREATE TABLE TEMP (
    COL1 VARCHAR2(20),
    COL2 VARCHAR2(20)
);
--Table TEMP이(가) 생성되었습니다.

-- TEMP SELECT권한을 ORCLSTUDY 부여
GRANT SELECT ON TEMP TO ORCLSTUDY;
--Grant을(를) 성공했습니다.

--TEMP INSERT권한을 ORCLSTUDY 부여
GRANT INSERT ON TEMP TO ORCLSTUDY;
--Grant을(를) 성공했습니다.

-- SELECT,INSERT권한을 한번에 권한 부여
GRANT SELECT, INSERT ON TEMP TO ORCLSTUDY;


SELECT * FROM temp;
--COL1                 COL2                
---------------------- --------------------
--TEST                 FROM ORCLSTUDY  