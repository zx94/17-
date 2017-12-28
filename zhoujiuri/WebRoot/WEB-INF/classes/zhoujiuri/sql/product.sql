--------商品表（30个字段）
create table product(
	id integer primary key,
	name varchar2(128),
	imagepath varchar2(128),
	author varchar2(128),
	publish varchar2(128),
	publishtime date,
	price number(7,2),
	dangdangprice number(7,2),
	edition integer,
	printtime date,
	printnumber integer,
	isbn varchar2(128),
	words number(10),
	page number(10),
	openbook varchar2(128),
	paper varchar2(128),
	wrapper varchar2(128),
	editorrecommend varchar2(2000),
	contentintroduct varchar2(2000),
	authorintroduct varchar2(2000),
	menu varchar2(2000),
	mediacomment varchar2(2000),
	bookdigest varchar2(2000),
	cutomerscore number(5,2),
	stock number(10),
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
----------------添加
insert into product values(pro_seq.nextval,'放风筝的人','1.jpg','豆豆','理想国',to_date('1988-09-11','yyyy-mm-dd'),22.0,20.0,99,to_date('1988-01-11','yyyy-MM-dd'),99,'1209-245-23',200000,260,'16开','胶版纸','精装','这是一本值得推荐的好书！','讲了童年的记忆','作者是一个散文家','目录总共分为5章','媒体评论说是看完之后想起了童年','书摘插图位置',99,999,1000000,to_date('1988-11-11','yyyy-MM-dd'),'上架','yes',5);
insert into product values(pro_seq.nextval,'我承认我不曾历经沧桑','1.jpg','蒋方舟','理想国',to_date('1988-09-11','yyyy-mm-dd'),22.0,20.0,99,to_date('1988-01-11','yyyy-MM-dd'),99,'1209-245-23',200000,260,'16开','胶版纸','精装','这是一本值得推荐的好书！','讲了童年的记忆','作者是一个散文家','目录总共分为5章','媒体评论说是看完之后想起了童年','书摘插图位置',99,999,1000000,to_date('1988-11-11','yyyy-MM-dd'),'上架','yes',6);
insert into product values(pro_seq.nextval,'我与世界只差一个你','1.jpg','张皓宸','理想国',to_date('1988-09-11','yyyy-mm-dd'),22.0,20.0,99,to_date('1988-01-11','yyyy-MM-dd'),99,'1209-245-23',200000,260,'16开','胶版纸','精装','这是一本值得推荐的好书！','讲了童年的记忆','作者是一个散文家','目录总共分为5章','媒体评论说是看完之后想起了童年','书摘插图位置',99,999,1000000,to_date('1988-11-11','yyyy-MM-dd'),'上架','yes',7);
insert into product values(pro_seq.nextval,'摆渡人','1.jpg','豆豆','理想国',to_date('1988-09-11','yyyy-mm-dd'),22.0,20.0,99,to_date('1988-01-11','yyyy-MM-dd'),99,'1209-245-23',200000,260,'16开','胶版纸','精装','这是一本值得推荐的好书！','讲了童年的记忆','作者是一个散文家','目录总共分为5章','媒体评论说是看完之后想起了童年','书摘插图位置',99,999,1000000,to_date('1988-11-11','yyyy-MM-dd'),'上架','yes',7);
insert into product values(pro_seq.nextval,'岛上书店','1.jpg','豆豆','理想国',to_date('1988-09-11','yyyy-mm-dd'),22.0,20.0,99,to_date('1988-01-11','yyyy-MM-dd'),99,'1209-245-23',200000,260,'16开','胶版纸','精装','这是一本值得推荐的好书！','讲了童年的记忆','作者是一个散文家','目录总共分为5章','媒体评论说是看完之后想起了童年','书摘插图位置',99,999,1000000,to_date('1988-11-11','yyyy-MM-dd'),'上架','yes',5);
insert into product values(pro_seq.nextval,'背包十年','1.jpg','豆豆','理想国',to_date('1988-09-11','yyyy-mm-dd'),22.0,20.0,99,to_date('1988-01-11','yyyy-MM-dd'),99,'1209-245-23',200000,260,'16开','胶版纸','精装','这是一本值得推荐的好书！','讲了童年的记忆','作者是一个散文家','目录总共分为5章','媒体评论说是看完之后想起了童年','书摘插图位置',99,999,1000000,to_date('1988-11-11','yyyy-MM-dd'),'上架','yes',6);
insert into product values(pro_seq.nextval,'乖，摸摸头','1.jpg','大冰','理想国',to_date('1988-09-11','yyyy-mm-dd'),22.0,20.0,99,to_date('1988-01-11','yyyy-MM-dd'),99,'1209-245-23',200000,260,'16开','胶版纸','精装','这是一本值得推荐的好书！','讲了童年的记忆','作者是一个散文家','目录总共分为5章','媒体评论说是看完之后想起了童年','书摘插图位置',99,999,1000000,to_date('1988-11-11','yyyy-MM-dd'),'上架','yes',6);
insert into product values(pro_seq.nextval,'日常韩语','1.jpg','豆豆','理想国',to_date('1988-09-11','yyyy-mm-dd'),22.0,20.0,99,to_date('1988-01-11','yyyy-MM-dd'),99,'1209-245-23',200000,260,'16开','胶版纸','精装','这是一本值得推荐的好书！','讲了童年的记忆','作者是一个散文家','目录总共分为5章','媒体评论说是看完之后想起了童年','书摘插图位置',99,999,1000000,to_date('1988-11-11','yyyy-MM-dd'),'上架','yes',10);
insert into product values(pro_seq.nextval,'职场日语','1.jpg','豆豆','理想国',to_date('1988-09-11','yyyy-mm-dd'),22.0,20.0,99,to_date('1988-01-11','yyyy-MM-dd'),99,'1209-245-23',200000,260,'16开','胶版纸','精装','这是一本值得推荐的好书！','讲了童年的记忆','作者是一个散文家','目录总共分为5章','媒体评论说是看完之后想起了童年','书摘插图位置',99,999,1000000,to_date('1988-11-11','yyyy-MM-dd'),'上架','yes',9);
insert into product values(pro_seq.nextval,'新概念1','1.jpg','豆豆','理想国',to_date('1988-09-11','yyyy-mm-dd'),22.0,20.0,99,to_date('1988-01-11','yyyy-MM-dd'),99,'1209-245-23',200000,260,'16开','胶版纸','精装','这是一本值得推荐的好书！','讲了童年的记忆','作者是一个散文家','目录总共分为5章','媒体评论说是看完之后想起了童年','书摘插图位置',99,999,1000000,to_date('1988-11-11','yyyy-MM-dd'),'上架','yes',8);
insert into product values(pro_seq.nextval,'新概念4','1.jpg','豆豆','理想国',to_date('1988-09-11','yyyy-mm-dd'),22.0,20.0,99,to_date('1988-01-11','yyyy-MM-dd'),99,'1209-245-23',200000,260,'16开','胶版纸','精装','这是一本值得推荐的好书！','讲了童年的记忆','作者是一个散文家','目录总共分为5章','媒体评论说是看完之后想起了童年','书摘插图位置',99,999,1000000,to_date('1988-11-11','yyyy-MM-dd'),'上架','yes',8);
insert into product values(pro_seq.nextval,'计算机原理','1.jpg','豆豆','理想国',to_date('1988-09-11','yyyy-mm-dd'),22.0,20.0,99,to_date('1988-01-11','yyyy-MM-dd'),99,'1209-245-23',200000,260,'16开','胶版纸','精装','这是一本值得推荐的好书！','讲了童年的记忆','作者是一个散文家','目录总共分为5章','媒体评论说是看完之后想起了童年','书摘插图位置',99,999,1000000,to_date('1988-11-11','yyyy-MM-dd'),'上架','yes',14);
insert into product values(pro_seq.nextval,'汇编','1.jpg','豆豆','理想国',to_date('1988-09-11','yyyy-mm-dd'),22.0,20.0,99,to_date('1988-01-11','yyyy-MM-dd'),99,'1209-245-23',200000,260,'16开','胶版纸','精装','这是一本值得推荐的好书！','讲了童年的记忆','作者是一个散文家','目录总共分为5章','媒体评论说是看完之后想起了童年','书摘插图位置',99,999,1000000,to_date('1988-11-11','yyyy-MM-dd'),'上架','yes',15);




