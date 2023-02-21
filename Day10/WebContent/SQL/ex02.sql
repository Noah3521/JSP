-- insert : 행 추가
-- 구문1) insert into 테이블명 values(값1, 값2 ...);
insert into person values('김이준', 150.3, '07/03/15');

rollback;
commit;
-- 테이블 행 변화의 흐름 단위를 트랜잭션이라고 한다
-- 트랜잭션을 적용하는 것을 commit
-- 이전 트랜잭션까지 되돌리는 것을 rollback


-- 구문2) insert into 테이블명(열1, 열2 ...) values(값1, 값2 ...);
insert into person(name, height) values('이지아', 161.1);

insert into
    person(height, birth)
    values(190, '02/09/11');
    
select * from person;
