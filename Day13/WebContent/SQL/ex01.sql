-- 시퀀스(sequence)
-- Oracle DB의 자동 증가 열 객체
create sequence account_seq 
    increment by 1
    start with 10000
    minvalue 1001
    maxvalue 9999999999999999999999
    nocache;

drop sequence account_seq;

-- 제약 조건
-- 1. primary key : 기본키. 중복이 막히며 null값을 채울 수 없다
-- 2. unique : 고유. 중복이 막힌다
-- 3. not null : null값을 채울 수 없다
-- 4. default : 기본값. 데이터 입력이 없을때 자동으로 채울 값을 지정

create table account (
    idx         number          default account_seq.nextval constraint account_idx primary key,
    userid      varchar2(20)    constraint account_userid unique not null,
    userpw      varchar2(20)    not null,
    nick        varchar2(50)    constraint account_nick unique not null,
    email       varchar2(50),
    join_date   date            default sysdate
);

drop table account;

select * from account;

insert into 
    account(userid, userpw, nick, email)
    values('root', 'qwe', '관리자', 'root@gmail.com');

delete from account where idx = 1001;

commit;