select *
from t_user

create table t_user
(
 id integer primary key,
 name varchar2(60) not null,
 email varchar2(60) not null,
 password varchar2(60) not null
)
drop table t_user

create sequence user_seq;

insert into t_user values(45,'admin','admin@qq.com','123456')
