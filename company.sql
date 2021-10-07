use company;
create table customers(customer_id varchar(20) primary key,first_name varchar(20),
last_name varchar (30), phone varchar(20),email varchar(20), street varchar(10),
city varchar(10), state varchar (20),zip_code varchar(20));
insert into customers(customer_id,first_name,last_name,phone,email,street,city,state,zip_code)
values('1','raka','chawla','456789','rc@yahoo.com','dara','amritsar','punjab','987654');
insert into customers(customer_id,first_name,last_name,phone,email,street,city,state,zip_code)
values('2','naina','suri','897654','nc@yahoo.com','maila','jalandhar','punjab','567443');
insert into customers(customer_id,first_name,last_name,phone,email,street,city,state,zip_code)
values('3','zaved','khan','222444','zk@yahoo.com','maulana','aligarh','up','998877');
insert into customers(customer_id,first_name,last_name,phone,email,street,city,state,zip_code)
values('4','james','paul','767788','jp@yahoo.com','koila','bangalore','karnataka','123445');
select * from customers;
create table stores(store_id varchar(20) primary key,store_name varchar(20),
 phone varchar(20),email varchar(20), street varchar(10),
city varchar(10), state varchar (20),zip_code varchar(20));
insert into stores(store_id,store_name,phone,email,street,city,state,zip_code)
values('101','newstore','45678921','ns@yahoo.com','karol','amritsar','punjab','98765421');
insert into stores(store_id,store_name,phone,email,street,city,state,zip_code)
values('102','batastore','23452345','bs@yahoo.com','lajpat','patna','bihar','99887766');
insert into stores(store_id,store_name,phone,email,street,city,state,zip_code)
values('103','jamesstore','77665544','js@yahoo.com','kalai','amritsar','punjab','12312344');
insert into stores(store_id,store_name,phone,email,street,city,state,zip_code)
values('104','avonstore','76785588','as@yahoo.com','mata','newdelhi','delhi','56785566');
select * from stores;
create table staffs(staff_id varchar(20) primary key,first_name varchar(20),
last_name varchar (30), phone varchar(20),email varchar(20), active varchar(5),
store_id varchar(20),foreign key(store_id) references stores(store_id),manager_id varchar(10));
insert into staffs(staff_id,first_name,last_name,phone,email, active,store_id,manager_id)
values('11','lata','chawla','45678911','lc@yahoo.com','yes','101','1001');
insert into staffs(staff_id,first_name,last_name,phone,email,active,store_id,manager_id)
values('12','jiten','sharma','22678911','js@yahoo.com','yes','102','1002');
insert into staffs(staff_id,first_name,last_name,phone,email,active,store_id,manager_id)
values('13','ravi','chawla','33378911','rc@yahoo.com','yes','103','1003');

insert into staffs(staff_id,first_name,last_name,phone,email,active,store_id,manager_id)
values('14','wavi','chawla','33378922','wc@yahoo.com','yes','104','1004');
select * from staffs;
create table categories(category_id varchar(20) primary key,category_name varchar(20));
insert into categories(category_id,category_name)
values('301','shoes');
insert into categories(category_id,category_name)
values('302','books');
insert into categories(category_id,category_name)
values('303','furniture');
select * from categories;
create table brands(brand_id varchar(20) primary key,brand_name varchar(20));
insert into brands(brand_id,brand_name)
values('401','nex');
insert into brands(brand_id,brand_name)
values('402','dingo');
insert into brands(brand_id,brand_name)
values('403','nasa');
create table products(product_id varchar(20) primary key,product_name varchar(20),
brand_id varchar(20),foreign key(brand_id) references brands(brand_id),
category_id varchar(20),foreign key(category_id) references categories(category_id),model_year varchar(20),list_price varchar(20) );
insert into products(product_id,product_name,brand_id,category_id,model_year,list_price)
values('501','yoyo','401','301','2016','2000');
insert into products(product_id,product_name,brand_id,category_id,model_year,list_price)
values('502','bmm','402','302','2017','3000');
insert into products(product_id,product_name,brand_id,category_id,model_year,list_price)
values('503','jdx','403','303','2018','4000');
select * from products;
create table stocks(store_id varchar(20), foreign key(store_id) references stores(store_id),
product_id varchar(20), foreign key(product_id) references products(product_id),
quantity int);
insert into stocks(store_id,product_id,quantity)
values('101','501',5);
insert into stocks(store_id,product_id,quantity)
values('102','502',6);
insert into stocks(store_id,product_id,quantity)
values('103','503',7);
select * from stocks;
create table orders(order_id varchar(20) primary key,
customer_id varchar(20), foreign key(customer_id) references customers(customer_id),
order_status varchar(20),order_date varchar(20),
required_date varchar(20),shipped_date varchar(20),
store_id varchar(20), foreign key(store_id) references stores(store_id),
staff_id varchar(20),foreign key(staff_id) references staffs(staff_id));
insert into orders(order_id,customer_id,order_status,order_date,required_date,shipped_date,
store_id,staff_id)
values('601','1', 'yes','5june','20june','15june','101','11');
insert into orders(order_id,customer_id,order_status,order_date,required_date,shipped_date,
store_id,staff_id)
values('602','2', 'yes','6june','25june','15june','102','12');
insert into orders(order_id,customer_id,order_status,order_date,required_date,shipped_date,
store_id,staff_id)
values('603','3', 'yes','1june','10june','5june','103','13');
select * from orders;
create table order_items(item_id varchar(20) primary key,order_id varchar(20),foreign key(order_id) references orders(order_id),
product_id varchar(20),foreign key(product_id) references products(product_id),
quantity int, 
list_price varchar(20),
discount int);
insert into order_items(item_id,order_id,product_id,quantity,list_price,discount)
values(801,601,501,2,100,20);
insert into order_items(item_id,order_id,product_id,quantity,list_price,discount)
values(802,602,502,4,200,30);
insert into order_items(item_id,order_id,product_id,quantity,list_price,discount)
values(803,603,503,5,400,40);
select * from order_items;















































































































































