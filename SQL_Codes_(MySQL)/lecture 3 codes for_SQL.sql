create database dress_data;
use dress_data;

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

LOAD DATA INFILE  'D:\AttributeDataSet.csv'
into table dress
FIELDS TERMINATED by ','
ENCLOSED by '"'
lines terminated by '\n'
IGNORE 1 ROWS;


select * from dress ;

create table if not exists test (
test_id int auto_increment,
test_name varchar(30),
test_mailid varchar(30),
teast_adress varchar(30),
primary key (test_id))

select * from test;

insert into test values (1,'sudhanshu','sudhanshu@ineuron.ai','bengalore'),
(2,'krish','krish@gmail.com', 'bengalore'),
(3,'hitesh' ,'hitesh@ineuron.ai','bengalore'),
(4,'shubahm' , 'shudham@gmail.com', 'jaipur')


select * from test;

create table if not exists test2 (
test_id int not null auto_increment,
test_name varchar(30),
test_mailid varchar(30),
teast_adress varchar(30),
primary key (test_id))

insert into test2 (test_name , test_mailid , teast_adress) values ('sudhanshu','sudhanshu@ineuron.ai','bengalore'),
('krish','krish@gmail.com', 'bengalore'),
('hitesh' ,'hitesh@ineuron.ai','bengalore'),
('shubahm' , 'shudham@gmail.com', 'jaipur')

select * from test2

create table if not exists test3 ( 
test_id int ,
test_name varchar(30) , 
test_mailid varchar(30),
teast_adress varchar(30),
test_salary int check(test_salary > 10000))

alter table test3 add check (test_id > 0)

insert into test3 values (1,'sudhanshu','sudhanshu@ineuron.ai','benglaore' , 50000),
(2,'krish','krish@gmail.com', 'bengalore' , 30000),
(3,'hitesh' ,'hitesh@ineuron.ai','bengalore' , 111000),
(4,'shubahm' , 'shudham@gmail.com', 'jaipur',20000)

select * from test3

create table if not exists test4 ( 
test_id int ,
test_name varchar(30) , 
test_mailid varchar(30),
teast_adress varchar(30) check (teast_adress = 'bengalore'),
test_salary int check(test_salary > 10000))


insert into test4 values (1,'sudhanshu','sudhanshu@ineuron.ai','bengalore' , 50000);

select * from test4

create table if not exists test11 ( 
test_id int not null auto_increment,
test_name varchar(30) , 
test_mailid varchar(30),
teast_adress varchar(30) check (teast_adress = 'bengalore'),
test_salary int check (test_salary > 10000),
primary key (test_id)
);

select * from test11

insert into test11 (test_name , test_mailid , teast_adress, test_salary) values ('sudhanshu','sudhanshu@ineuron.ai','bengalore' , 50000);


create table if not exists test6 ( 
test_id int not null default 0 ,
test_name varchar(30) , 
test_mailid varchar(30),
teast_adress varchar(30) check (teast_adress = 'bengalore'),
test_salary int check (test_salary > 10000))

insert into test6 (test_name , test_mailid , teast_adress, test_salary) values ('sudhanshu','sudhanshu@ineuron.ai','bengalore',70000);


select * from test6


create table if not exists test7 ( 
test_id int not null default 0 ,
test_name varchar(30) , 
test_mailid varchar(30) unique ,
teast_adress varchar(30) check (teast_adress = 'bengalore'),
test_salary int check (test_salary > 10000))

insert into test7 (test_name , test_mailid , teast_adress, test_salary) values ('sudhanshu','sudhanshu@ineuron.ai','bengalore',90000);

select * from test7


create table if not exists test8( 
test_id int NOT NULL auto_increment  ,
test_name varchar(30)  NOT NULL default 'unknown' , 
test_mailid varchar(30) unique NOT NULL,
teast_adress varchar(30) check (teast_adress= 'bengalore') NOT NULL,
test_salary int check(test_salary > 10000) NOT NULL,
primary key (test_id))

select * from test8

insert into test8 ( test_id , test_name , test_mailid , teast_adress,test_salary) values (103 , 'sudhanshu','sudhanshu3@ineuron.ai','bengalore' , 50000)

insert into test8 ( test_name , test_mailid , teast_adress,test_salary) values ('sudhanshu','sudhanshu90@ineuron.ai','bengalore' , 50000)














