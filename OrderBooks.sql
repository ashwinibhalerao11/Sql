create database AuthorsBook;

use AuthorsBook;

create table Authors(Auth_id int not null primary key, Auth_name varchar(20),City varchar(20),Country varchar(20));

create table Category(Category_id int not null primary key,Description varchar(20));

create table Books(book_id int not null primary key,Title varchar(20),auth_id int,Category_id int,
 year int, price int,publisher varchar(20),Rating varchar(20),
 constraint fk_auth_id foreign key(auth_id)references Authors(auth_id),
 constraint fk_category_id foreign key (category_id) references Category(category_id));

create table Order_Details(Order_no int not null primary key,book_id int,Qty int,
 constraint fk_book_id foreign key(book_id) references books(book_id));


sp_help Authors;
sp_help Category;
sp_help Books;
sp_help Order_Details;


select * from Authors;
select * from Category;
select * from Books;
select * from Order_Details;

 alter table books drop constraint fk_auth_id;
 alter table books drop constraint fk_authr_id;
 alter table Books add constraint fk_authrs_id foreign key(auth_id) references authors(auth_id) on delete cascade on update cascade;     
 
 sp_help books;

 alter table Order_details drop constraint fk_book_id ;

 alter table Order_Details add constraint fk_bk_id foreign key (book_id) references books(book_id) on delete cascade on update cascade ;


 sp_help Order_Details;

 -- insert values 
 insert into authors values(1,'JK Rowling','Britsol','England'),(2,'Rabindranath Tagore','Mumbai','India'),
 (3,'Mary balogh','tornato','canada');


 insert into Category values(101,'drama'),(102,'horror'),(103,'Romance');

 insert into books values (111,'Brave new world',1,102,2016,400,'A.s.Publisher','3star'),(122,'gitanjali',2,101,200,1967,'W.b. Publisher','4star'),
 (133,'Drishyam',3,103,1998,600,'Sharma publications','2star');


 --1. Find the country wise author name
 select Country,count(*) from Authors group by Country;

 --2. Find the country in which more than two authors are living
 select Country, count(*) from Authors group by Country having count(*)>2;

 --3. Find the total price of romance book







