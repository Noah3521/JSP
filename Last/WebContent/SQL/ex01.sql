create sequence board_seq 
    start with 10001
    increment by 1
    minvalue 10001
    maxvalue 999999999999999999
    nocache;

drop table board;

create table board (
    idx         number          default board_seq.nextval constraint board_pk_idx primary key,
    title       varchar2(200)   not null,
    contents    clob            not null,
    writer      varchar2(50),
    view_count  number          default 0,
    write_date  date            default sysdate
);

-- 외래키 : 다른 테이블의 pk, unique 열을 참조하는 키
-- 왜래키로 지정된 열은 참조하는 열에 없는 데이터는 삽입 불가
-- FK : Board(writer) -> Account(nick)
-- 즉, Account(nick)에 없는 데이터는 Board(writer)에 삽입 불가능
insert into 
    board(title, contents, writer)
    values('안녕하세요', '잘 부탁드립니다', '유저1');
    
update board set writer='아뱅' where idx = 10001;
commit;

select * from board order by idx desc;