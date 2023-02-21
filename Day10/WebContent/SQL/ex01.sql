-- DataBase : 데이터를 저장 및 관리하는 소프트웨어
-- DBMS : DB를 관리하기 위한 시스템 소프트웨어
-- DBMS 종류 : oracle DB, MySQL, MS-SQL

-- SQL : Sturcted Query Language
-- DB를 조작하기 위한 프로그램 언어
-- Query(질의)언어 라고 되어있지만, 조작도 가능

-- select : 조회
-- 구문) select 열1,열2 ... from 테이블명;
select * from person;
select name from person;
select name,birth from person;
select birth,name from person;

-- 조건절 where
select * from person where name = '홍길동';
select * from person where height < 170;
select * from person where birth > '90/01/01';
select * from person where name != '김진호';

-- null 판별은 is라는 연산자로 가능
select * from person where height is null;
select * from person where height is not null;

-- and, or, not
select * from person where height >= 170 and birth < '01/01/01';

-- SQL구문은 보조 구문이 붙을수록 길어진다
-- 이땐, 줄을 나눠서 작성해도 된다
select * from person
    where height <= 170 
    and birth >= '01/01/01';

-- 정렬 order by
-- asc : 오름차순. 기본값
-- desc : 내림차순
select * from person order by height;
select * from person order by height desc;
select * from person order by name asc;
select * from person order by birth desc;

-- 조건을 먼저 작성 후 정렬한다
select * from person 
    where birth < '01/01/01' 
    order by height desc;



