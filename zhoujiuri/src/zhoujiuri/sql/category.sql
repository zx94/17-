--------类别表（一个表）
create table category(
	id integer primary key,
	name varchar2(40),
	parentid integer,
	amount integer
);
commit;
select * from category;
create sequence cat_seq start with 1;
insert into category values(cat_seq.nextval,'小说',null,20);
insert into category values(cat_seq.nextval,'外语',null,25);
insert into category values(cat_seq.nextval,'少儿',null,16);
insert into category values(cat_seq.nextval,'计算机',null,30);
insert into category values(cat_seq.nextval,'当代小说',1,10);
insert into category values(cat_seq.nextval,'四大名著',1,5);
insert into category values(cat_seq.nextval,'近现代小说',1,5);
insert into category values(cat_seq.nextval,'英语',2,15);
insert into category values(cat_seq.nextval,'日语',2,5);
insert into category values(cat_seq.nextval,'韩语',2,5);
insert into category values(cat_seq.nextval,'0~2岁',3,8);
insert into category values(cat_seq.nextval,'3~6岁',3,6);
insert into category values(cat_seq.nextval,'7~9岁',3,2);
insert into category values(cat_seq.nextval,'计算机原理',4,10);
insert into category values(cat_seq.nextval,'汇编语言',4,5);
insert into category values(cat_seq.nextval,'51单片机',4,10);
insert into category values(cat_seq.nextval,'Java实战',4,5);
commit

select t1.id id,t1.name name,t1.parentid parentid,t1.amount amount,t2.id cid,t2.name cname,t2.parentid cparentid,t2.amount camount 
			from (category t1 left join category t2 on t1.id = t2.parentid) where t1.parentid is null
			
select t1.id id,t1.name name,t1.parentid parentid,t1.amount amount,t2.id cid,t2.name cname,t2.parentid cparentid,t2.amount camount 
			from (category t1 left join category t2 on t1.id = t2.parentid) where t1.id=#{id}

