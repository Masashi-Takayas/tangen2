create table customer(
customer_id int primary key
,staff_id int
,address varchar(40)
);	

create table sale(
sale_id int primary key,
customer_id int
);

create table sale_detail(
sale_id int,
sale_detail_id int,
products_id int,
buy_count int,
primary key (sale_id,sale_detail_id)
);

create table products(
products_id int primary key,
products_name varchar(45),
price int,
zei_id int
);

create table zei(
zei_id int primary key,
zei_name varchar(45),
zei_persent decimal
);

