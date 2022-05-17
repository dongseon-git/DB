-- SYS로 접속

SELECT *
FROM dba_tables;

-- DBA_USER로 사용자정보
SELECT *
FROM dba_users t1
WHERE t1.username = 'SCOTT';