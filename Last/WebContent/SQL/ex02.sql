-- select 결과를 insert하기
-- 테이블 행을 복제하기 위해서 사용
insert into board(title, contents, writer, view_count)
    select title, contents, writer, view_count from board order by idx desc;
    
select * from board order by idx desc;

-- 테이블 행 개수
select count(*) as total from board where title like '%공지%';

-- 페이징 쿼리
-- 1. oracle 11g 버전시
select * from 
    (select rownum as r, A.* from 
        (select * from board order by idx desc) A)
    where r between 21 and 30;
    
-- 2. oracle 12c 이후 버전시
select * from board
    where title like '%안녕%'
    order by idx desc
    offset 0 rows
    fetch first 10 rows only;

