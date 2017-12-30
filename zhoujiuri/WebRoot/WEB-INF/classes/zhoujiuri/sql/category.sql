--------类别表（一个表）
create table category(
	id integer primary key,
	name varchar2(40),
	parentid integer
);
commit;
select * from category;
create sequence cat_seq start with 1;
insert into category values(cat_seq.nextval,'白酒',null);
insert into category values(cat_seq.nextval,'葡萄酒',null);
insert into category values(cat_seq.nextval,'洋酒',null);
insert into category values(cat_seq.nextval,'啤酒',null);
commit

select t1.id id,t1.name name,t1.parentid parentid,t1.amount amount,t2.id cid,t2.name cname,t2.parentid cparentid,t2.amount camount 
			from (category t1 left join category t2 on t1.id = t2.parentid) where t1.parentid is null
			
select t1.id id,t1.name name,t1.parentid parentid,t1.amount amount,t2.id cid,t2.name cname,t2.parentid cparentid,t2.amount camount 
			from (category t1 left join category t2 on t1.id = t2.parentid) where t1.id=#{id}

