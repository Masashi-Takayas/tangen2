create table customer(
customer_id int primary key
,staff_name int
);

create table sale(
sale_id int primary key,
number int,
customer_id int,
constraint fk_customer
foreign key(customer_id)
references customer(customer_id)
);

create table sale_detail(
sale_id int,
sale_detail_id int,
products_id int,
buy_count int,
primary key (sale_id,sale_detail_id),
constraint fk_products
foreign key(products_id)
references products(products_id)
);

create table products(
products_id int primary key,
products_name varchar(45),
price int,
zei_id int,
constraint fk_zei
foreign key(zei_id)
references zei(zei_id)
);

create table zei(
zei_id int primary key,
zei_name varchar(45),
zei_persent decimal
);
