--------产品表
create table product(
	id integer primary key,
	name varchar2(128),
	imagepath varchar2(128),
	author varchar2(128),
	publish varchar2(128),
	publishtime date,
	price number(7,2),
	dangdangprice number(7,2),
	sale number(10),
	putaway date,
	status varchar2(100),
	editorrecommendstatus varchar2(100),
	cid references category(id)	
);
commit;
create sequence pro_seq start with 1;

commit;
select * from product
----------------���
insert into product values
(pro_seq.nextval,'水晶剑','b1.jpg','剑南春','四川',to_date('1988-09-11','yyyy-mm-dd'),498.0,388.0,52,to_date('2017-01-11','yyyy-MM-dd'),'上架','yes',1);
insert into product values
(pro_seq.nextval,'飞天','b2.jpg','茅台','贵州茅台镇',to_date('1988-09-11','yyyy-mm-dd'),1599.0,1299.0,53,to_date('2017-03-21','yyyy-MM-dd'),'上架','yes',1);
insert into product values
(pro_seq.nextval,'遥之蓝','b3.jpg','洋河蓝色经典','江苏宿迁',to_date('1988-09-11','yyyy-mm-dd'),588.0,559.0,40.8,to_date('2017-02-21','yyyy-MM-dd'),'上架','yes',1);
insert into product values
(pro_seq.nextval,'清溪谷M6','b4.jpg','泸州老窖','中国大陆',to_date('1988-09-11','yyyy-mm-dd'),368.0,218.0,52,to_date('2017-05-26','yyyy-MM-dd'),'上架','yes',1);
insert into product values
(pro_seq.nextval,'汾牌老酒20','b5.jpg','汾酒','中国大陆',to_date('1988-09-11','yyyy-mm-dd'),169.0,119.0,52,to_date('2017-04-21','yyyy-MM-dd'),'上架','yes',1);
insert into product values
(pro_seq.nextval,'心悠然天汲特酿','b6.jpg','小糊涂仙','贵州',to_date('1988-09-11','yyyy-mm-dd'),1288.0,888.0,53,to_date('2017-05-11','yyyy-MM-dd'),'上架','yes',1);
commit
insert into product values
(pro_seq.nextval,'2016年拉菲珍宝','p1.jpg','小拉菲','波雅克',to_date('1988-09-11','yyyy-mm-dd'),1498.0,1390.0,15,to_date('2017-07-11','yyyy-MM-dd'),'上架','yes',2);
insert into product values
(pro_seq.nextval,'2016年木桐酒庄副牌','p2.jpg','小木桐','波雅克',to_date('1988-09-11','yyyy-mm-dd'),1498.0,1250.0,15,to_date('2017-06-11','yyyy-MM-dd'),'上架','yes',2);
insert into product values
(pro_seq.nextval,'2016年靓茨伯庄园红葡萄酒','p3.jpg','法国1855五级庄','波雅克',to_date('1988-09-11','yyyy-mm-dd'),998.0,885.0,15,to_date('2017-05-15','yyyy-MM-dd'),'上架','yes',2);
insert into product values
(pro_seq.nextval,'2016年克莱蒙教皇堡红葡萄酒 ','p4.jpg','黑教皇','波雅克',to_date('1988-09-11','yyyy-mm-dd'),998.0,728.0,15,to_date('2017-01-31','yyyy-MM-dd'),'上架','yes',2);
insert into product values
(pro_seq.nextval,'2016年乐夫波菲庄园红葡萄酒 ','p5.jpg','法国1855五级庄','波雅克',to_date('1988-09-11','yyyy-mm-dd'),888.0,608.0,15,to_date('2017-08-11','yyyy-MM-dd'),'上架','yes',2);
insert into product values
(pro_seq.nextval,'2016年鲁臣世家庄园红葡萄酒 ','p6.jpg','法国1855二级庄','玛歌',to_date('1988-09-11','yyyy-mm-dd'),618.0,555.0,15,to_date('2017-11-11','yyyy-MM-dd'),'上架','yes',2);
insert into product values
(pro_seq.nextval,'奔富Penfolds BIN9 ','p7.jpg','奔富','澳大利亚',to_date('1988-09-11','yyyy-mm-dd'),228.0,208.0,15,to_date('2017-12-11','yyyy-MM-dd'),'上架','yes',2);
commit
insert into product values
(pro_seq.nextval,'12年苏格兰威士忌','y1.jpg','芝华士','英国',to_date('1988-09-11','yyyy-mm-dd'),238.0,229.0,15,to_date('2017-11-11','yyyy-MM-dd'),'上架','yes',3);
insert into product values
(pro_seq.nextval,'尊尼获加威士忌 ','y2.jpg','尊尼获加','英国',to_date('1988-09-11','yyyy-mm-dd'),238.0,199.0,15,to_date('2017-12-11','yyyy-MM-dd'),'上架','yes',3);
insert into product values
(pro_seq.nextval,'杰克丹尼威士忌','y3.jpg','杰克丹尼','美国',to_date('1988-09-11','yyyy-mm-dd'),138.0,130.0,15,to_date('2017-01-12','yyyy-MM-dd'),'上架','yes',3);
insert into product values
(pro_seq.nextval,'苏格兰威士忌','y4.jpg','芝华士','英国',to_date('1988-09-11','yyyy-mm-dd'),338.0,259.0,15,to_date('2017-06-16','yyyy-MM-dd'),'上架','yes',3);
insert into product values
(pro_seq.nextval,'创始纪念版苏格兰威士忌','y5.jpg','芝华士','英国',to_date('1988-09-11','yyyy-mm-dd'),519.0,409.0,15,to_date('2017-07-17','yyyy-MM-dd'),'上架','yes',3);
insert into product values
(pro_seq.nextval,'干邑白兰地','y6.jpg','马爹利','英国',to_date('1988-09-11','yyyy-mm-dd'),288.0,240.0,15,to_date('2017-08-18','yyyy-MM-dd'),'上架','yes',3);
insert into product values
(pro_seq.nextval,'带盒唐培里侬香槟王Dom Perignon Vintage','y7.jpg','唐培里侬','法国',to_date('1988-09-11','yyyy-mm-dd'),1200.0,1120.0,45,to_date('2017-12-18','yyyy-MM-dd'),'上架','yes',3);
commit
insert into product values
(pro_seq.nextval,'百威啤酒500ml*18听','a1.jpg','百威','中国大陆',to_date('1988-09-11','yyyy-mm-dd'),128.0,99.0,9.7,to_date('2017-03-13','yyyy-MM-dd'),'上架','yes',4);
insert into product values
(pro_seq.nextval,'奥古特12度500ml*12听','a2.jpg','青岛','山东省 青岛市',to_date('1988-09-11','yyyy-mm-dd'),138.0,105.0,4.7,to_date('2017-04-13','yyyy-MM-dd'),'上架','yes',4);
insert into product values
(pro_seq.nextval,' 爱士堡小麦啤酒 500ml*24听','a3.jpg','爱士堡','德国',to_date('1988-09-11','yyyy-mm-dd'),118.0,108.0,5.3,to_date('2017-05-16','yyyy-MM-dd'),'上架','yes',4);
insert into product values
(pro_seq.nextval,'原浆白啤 500ml*12听','a4.jpg','燕京','北京',to_date('1988-09-11','yyyy-mm-dd'),135.0,119.0,4.1,to_date('2017-04-13','yyyy-MM-dd'),'上架','yes',4);
insert into product values
(pro_seq.nextval,'教士啤酒听装 500ml*24听','a5.jpg','教士','德国',to_date('1988-09-11','yyyy-mm-dd'),453.6,135.0,5,to_date('2017-08-15','yyyy-MM-dd'),'上架','yes',4);
insert into product values
(pro_seq.nextval,'脸谱 500ml*12听','a6.jpg','雪花','中国河北/四川/浙江/辽宁',to_date('1988-09-11','yyyy-mm-dd'),180.0,175.0,15,to_date('2017-01-18','yyyy-MM-dd'),'上架','yes',4);
insert into product values
(pro_seq.nextval,'百威啤酒银标大师798ml','a7.jpg','百威','中国大陆',to_date('1988-09-11','yyyy-mm-dd'),189.0,179.0,15,to_date('2017-12-30','yyyy-MM-dd'),'上架','yes',4);
commit



