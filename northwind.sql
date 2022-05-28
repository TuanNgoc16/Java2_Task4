create database if not exists northwind;
use northwind;
drop table if exists north;
create table north(
   id int,
   title varchar(50),
   author varchar(50),
   price float,

   primary key(id));
insert into north values(1001,'Pham Thi A','Banh mi',90.1);
insert into north values(1002,'Nguyen Van B ','Banh ran',60.2);
insert into north values(1003,'Pham Van C','Mi tom',50.3);
insert into north values(1004,'Pham Thi D','Bun rieu',70.4);
insert into north values(1005,'Le Van E','Banh da',50.5);
select  * from north;

SELECT * FROM `north` ;

SELECT * FROM `north` ;

SELECT id,title,author,price FROM north WHERE title = ' Nguyen Thi A';

SELECT * from  north WHERE author;

SELECT author from north WHERE price > 10 AND price <60;

SELECT * from north WHERE id = '1001';