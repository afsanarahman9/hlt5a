create database hotel;
use hotel;
create table manager(
name varchar(100),shift varchar(100),
salary double, Mid int primary key);
insert into manager(name,shift,salary,Mid)
values('eva','day',3000,101);
insert into manager(name,shift,salary,Mid)
values('james','day',4000,102);
insert into manager(name,shift,salary,Mid)
values('sam','night',6000,103);
insert into manager(name,shift,salary,Mid)
values('mike','day',5000,104);
insert into manager(name,shift,salary,Mid)
values('zara','day',8000,105);
insert into manager(name,shift,salary,Mid)
values('farhan','night',3000,106);
insert into manager(name,shift,salary,Mid)
values('rolly','day',5500,107);
insert into manager(name,shift,salary,Mid)
values('ram','day',9000,108);
insert into manager(name,shift,salary,Mid)
values('sara','night',7000,109);
insert into manager(name,shift,salary,Mid)
values('tara','night',6000,110);
select * from manager;
create table item(
itemid varchar(20) primary key,
dish varchar(30),
price double,
category varchar(20));
insert into item(itemid,dish,price,category)
values(1,'biryani',500,'nonveg');
insert into item(itemid,dish,price,category)
values(2,'dosa',300,'veg');
insert into item(itemid,dish,price,category)
values(4,'kheer',400,'veg');
insert into item(itemid,dish,price,category)
values(5,'rdosa',300,'veg');
insert into item(itemid,dish,price,category)
values(6,'chicken',900,'nonveg');
insert into item(itemid,dish,price,category)
values(7,'idli',300,'veg');
insert into item(itemid,dish,price,category)
values(8,'mdosa',200,'veg');
insert into item(itemid,dish,price,category)
values(9,'paneercurry',500,'veg');
insert into item(itemid,dish,price,category)
values(10,'fishcurry',800,'nonveg');

select * from item;

insert into item(itemid,dish,price,category)
values(3,'nachos',200,'veg');
create table corder(
orderid int primary key ,
cname varchar(20),
phone varchar(30),
address varchar(40),
itemid varchar(20),
foreign key(itemid) references item(itemid),
qty int,
total double,
date varchar(30));
insert into corder(orderid,cname,phone,address,itemid,qty,total,date)
values(201,'mala','12345','abel street',1,6,2000,'6june');
insert into corder(orderid,cname,phone,address,itemid,qty,total,date)
values(202,'jala','12245','at street',2,5,1000,'7june');
insert into corder(orderid,cname,phone,address,itemid,qty,total,date)
values(203,'kola','12355','naka street',3,4,2000,'8june');
insert into corder(orderid,cname,phone,address,itemid,qty,total,date)
values(204,'george','22345','abe street',4,1,1000,'9june');
insert into corder(orderid,cname,phone,address,itemid,qty,total,date)
values(205,'holu','12555','moor street',5,3,2000,'10june');
insert into corder(orderid,cname,phone,address,itemid,qty,total,date)
values(206,'maya','11345','ap street',6,1,1000,'11june');
insert into corder(orderid,cname,phone,address,itemid,qty,total,date)
values(207,'bala','12445','aj street',7,4,4000,'12june');
insert into corder(orderid,cname,phone,address,itemid,qty,total,date)
values(208,'mana','44445','l street',8,5,4000,'13june');
insert into corder(orderid,cname,phone,address,itemid,qty,total,date)
values(209,'kasa','15555','nm street',9,6,8000,'14june');
insert into corder(orderid,cname,phone,address,itemid,qty,total,date)
values(210,'dala','88885','aa street',10,6,9000,'15june');
select * from corder;
select avg(salary) from manager;
select count(qty) from corder;
select sum(qty) from corder;
select count(dish) from item;
select dish from item where category='veg';
select dish from item where category='nonveg';