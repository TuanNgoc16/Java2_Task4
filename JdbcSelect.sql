create database if not exists ebookshop;
use ebookshop;
drop table if exists books;
create table books(
   id int,
   title varchar(50),
   author varchar(50),
   price float,
  qty int,
   primary key(id));
insert into books values(1001,'Java for dummies','Dang Kim Thi',11.11,11);
insert into books values(1002,'More Java for dummies','CodeLean VN',22.22,22);
insert into books values(1003,'More Java for more dummies','Mohammad Ali',33.33,33);
insert into books values(1004,'ACup of Java','Kumar',44.44,44);
insert into books values(1005,'ATeaspoon of Java','Kevin Jones',55.55,55);
select  * from books;

select title,price from books where author = 'CodeLEan VN';
select title,author,price,qty from books where author =  'CodeLean VN' or price>=30 order by price DESC, id ASC;