-- Data Dictionary(데이터 딕셔너리)
--오라클의 메모리 구조와 파일에 대한 구조 정보들
--각 오브젝트들이 사용하고 있는 공간들의 정보
--제약조건 정보
--사용자에 대한 정보
--권한이나 프로파일, 롤에 대한 정보
--감사에 대한 정보

-- SCOTT에서 사용 가능한 DICTIONARY 정보 보기
SELECT *
FROM dict; -- 4599건

-- USER_ 접두어를 가진 데이터 사전

SELECT t1.table_name
FROM user_tables t1;

-- ALL_ 접두어를 가진 데이터 사전
SELECT 
    t1.owner,
    t1.table_name,
    t1.tablespace_name,
    t1.num_rows
FROM all_tables t1
WHERE owner = 'SCOTT';

-- DBA_ 접두어를 가진 데이터 사전
SELECT *
FROM dba_tables;