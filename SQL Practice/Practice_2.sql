use  dress_data;

create table if not exists dress(
`Dress_ID` varchar(30),	
`Style`	varchar(30),	
`Price`	varchar(30),	
`Rating`	varchar(30),	
`Size`	varchar(30),	
`Season`	varchar(30),	
`NeckLine`	varchar(30),	
`SleeveLength` varchar(30),		
`waiseline`	varchar(30),	
`Material`	varchar(30),	
`FabricType`	varchar(30),	
`Decoration`	varchar(30),	
`Pattern Type` varchar(30),		
`Recommendation` varchar(30))	

select * from dress;

select * from dress;

LOAD DATA INFILE 
'D:\AttributeDataSet.CSV'
into table dress
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
lines terminated by '\n'
IGNORE 1 ROWS;

select * from dress;

create table if not exists test ( 
test_id int auto_increment,
test_name varchar(30) , 
test_mailid varchar(30),
teast_adress varchar(30),
primary key (test_id))

select * from test;

select * from test;

insert into test values (1,'sudhanshu','sudhanshu@ineuron.ai','benglaore'),
(2,'krish','krish@gmail.com', 'bengalore'),
(3,'hitesh' ,'hitesh@ineuron.ai','bengalore'),
(4,'shubahm' , 'shudham@gmail.com', 'jaipur');

select * from test;

create table if not exists test2 ( 
test_id int not null auto_increment,
test_name varchar(30) , 
test_mailid varchar(30),
teast_adress varchar(30),
primary key (test_id));

insert into test2 (test_name , test_mailid , teast_adress) values ('sudhanshu','sudhanshu@ineuron.ai','benglaore'),
('krish','krish@gmail.com', 'bengalore'),
('hitesh' ,'hitesh@ineuron.ai','bengalore'),
('shubahm' , 'shudham@gmail.com', 'jaipur');


select * from test2;

create table if not exists test3 ( 
test_id int ,
test_name varchar(30) , 
test_mailid varchar(30),
teast_adress varchar(30),
test_salary int check(test_salary > 10000));

insert into test3 values (1,'sudhanshu','sudhanshu@ineuron.ai','benglaore', 50000),
(2,'krish','krish@gmail.com', 'bengalore', 30000),
(3,'hitesh' ,'hitesh@ineuron.ai','bengalore', 111000),
(4,'shubahm' , 'shudham@gmail.com', 'jaipur',20000);

select * from test3;

create table if not exists test4 ( 
test_id int ,
test_name varchar(30) , 
test_mailid varchar(30),
teast_adress varchar(30) check (teast_adress= 'bengalore'),
test_salary int check(test_salary > 10000));

select * from test4;


insert into test4 values (1,'sudhanshu','sudhanshu@ineuron.ai','benglaore', 50000),
(2,'krish','krish@gmail.com', 'bengalore', 30000),
(3,'hitesh' ,'hitesh@ineuron.ai','bengalore', 111000),
(4,'shubahm' , 'shudham@gmail.com', 'bengalore',20000);


create database sales;

use sales;

select database();

create table sales1;
drop table sales1;

select * from sales1;

CREATE TABLE sales1 (
	order_id VARCHAR(15) NOT NULL, 
	order_date VARCHAR(15) NOT NULL, 
	ship_date VARCHAR(15) NOT NULL, 
	ship_mode VARCHAR(14) NOT NULL, 
	customer_name VARCHAR(22) NOT NULL, 
	segment VARCHAR(11) NOT NULL, 
	state VARCHAR(36) NOT NULL, 
	country VARCHAR(32) NOT NULL, 
	market VARCHAR(6) NOT NULL, 
	region VARCHAR(14) NOT NULL, 
	product_id VARCHAR(16) NOT NULL, 
	category VARCHAR(15) NOT NULL, 
	sub_category VARCHAR(11) NOT NULL, 
	product_name VARCHAR(127) NOT NULL, 
	sales DECIMAL(38, 0) NOT NULL, 
	quantity DECIMAL(38, 0) NOT NULL, 
	discount DECIMAL(38, 3) NOT NULL, 
	profit DECIMAL(38, 8) NOT NULL, 
	shipping_cost DECIMAL(38, 2) NOT NULL, 
	order_priority VARCHAR(8) NOT NULL, 
	`year` DECIMAL(38, 0) NOT NULL
);



select * from sales1;

SET SESSION sql_mode = '';

load data infile 
'D:/sales_data_final.csv'
into table sales1 
fields terminated by ','
enclosed by '"'
lines terminated by'\n'
ignore 1 rows;

select * from sales.sales1;



drop table sales;

select str_to_date(order_date,'%m/%d/%y') from sales1;

select str_to_date(order_date,'%m/%d/%y') from sales1;

alter table sales1
add column order_date_new date after order_date;

select * from sales1;

update sales1 
set order_date_new = str_to_date(order_date,'%m/%d/%Y');

update sales1
set order_date_new = str_to_date(order_date,'%m/%d/%Y');

select * from  sales1;

alter table sales1
add column ship_date_new date after ship_date;

select * from sales1;

update sales1 
set ship_date_new = str_to_date(ship_date, '%m/%d/%Y');

select * from sales1;

select * from sales1 where ship_date_new  = '2011-01-05';
select * from sales1 where ship_date_new > '2011-01-05';
select * from sales1 where ship_date_new < '2011-01-5';

select * from sales1 where ship_date_new between '2011-01-05' and '2011-08-30';

select now();
select curdate();
select curtime();

select * from sales1 where ship_date_new < date_sub(now() , interval 1 week );

select date_sub(now(), interval 1 week);

select date_sub(now()  ,interval 30 year);

select year(now());

select dayname(now());

select dayname('2022-07-20 21:10:30');

alter table sales1
add column flag date after order_id;
select * from sales1;

update sales1
set flag = now();
select * from sales1;

ALTER TABLE sales1
modify column year datetime;

alter table sales1
add column ship_date_new date after ship_date;

ALTER TABLE sales1
DROP COLUMN year_new;
select * from sales1;


alter table sales1
add column Year_new  int after order_date_new;
select * from sales1;

alter table sales1 
add column Month_new int after Year_new;
select * from sales1;

alter table sales1
add column Day_new int after Month_new;
select * from sales1;

update sales1 set Year_new= year(order_date_new);
select * from sales1;

update sales1 set Month_new = Month(order_date_new);
select * from sales1;

update sales1 set Day_new = day(order_date_new);
select * from sales1;

select Year_new, avg(sales) from sales1  group by  Year_new;

select Year_new, sum(sales) from sales1 group by Year_new;

select Year_new, min(sales) from sales1 group by Year_new;
select Year_new , max(sales) from sales1 group by Year_new;

select Year_new, sum(quantity) from sales1 group by Year_new;

select (discount+shipping_cost) as CIC from sales1;

select * from sales1;

select (discount*sales + shipping_cost) as CTC from sales1;

select order_id, discount , if (discount >0, 'yes', 'no') as discount_flag from sales1;

alter table sales1
add column discount_flag varchar(20) after discount;

select * from sales1;

update sales1  set discount_flag = if (discount >0, 'yes', 'no');
select * from sales1;

select discount_flag, count(*) from sales1 group by discount_flag;




select count(*) from sales1 where discount >0;


SET SESSION sql_mode = '';

select * from sales.sales2;

load data infile 
'D:/sales_data_final.csv'
into table sales1 
fields terminated by ','
enclosed by '"'
lines terminated by'\n'
ignore 1 rows;


select * from sales.sales1;


DELIMITER $$
create function add_to_col3(a INT)
returns INT 
DETERMINISTIC
BEGIN 
	DECLARE b int ;
	set b = a + 10 ;
	return b ;
end $$


