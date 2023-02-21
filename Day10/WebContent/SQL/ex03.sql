-- update : 행 변경
-- 구문) update 테이블 set 열1=값1, 열2=값2 where 조건
update person
    set name='박선우', height=175.9
    where name is null;
    
commit;
select * from person;


-- delete : 행 삭제
-- delete from 테이블명 where 조건
delete from person where name = '김이준';

-- delete에서 조건을 생략하면 모든 행이 제거되므로 주의
delete from person;
rollback;
