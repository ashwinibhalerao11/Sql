
use Book;


--create author table
create table Author(Author_id int primary key,Author_name varchar(20),Ph_no varchar(30),Email varchar(30),Address varchar(20),City varchar(20));
exec sp_help author;

--create book table
create table Book(Book_id int not null primary key,Book_name varchar(20),Price int,Author_id int,constraint fk_id foreign key(Author_id)references Author(Author_id) );
exec sp_help Book;


--create Award Master Table
create table AwardMaster(AwardType_id int not null primary key,Award_name varchar(20),Award_price varchar(20));
exec sp_help AwardMaster;

-- create table Award
create table Awards(Award_id int not null primary key,AwardType_id int,Author_id int,book_id int,year varchar(10),
constraint tk_TypeId foreign key(AwardType_id)references AwardMaster(AwardType_id)
,constraint fk_aid foreign key(Author_id)references Author(Author_id)
,constraint fk_bId foreign key(book_id)references Book (Book_id));

exec sp_help Awards;

--insert values in table
alter table author drop column Address;
insert into Author values(1,'Jkrolling','9899785643','jkrolling@gmail.com','Mumbai');
insert into author values(2,'Lewis Carroll','8765983452','lewis23@gmail.com','Banglore');
insert into author values(3,'Rabindranath Tagore','7635462366','rbtagore@gmail.com','Pune');
insert into author values(4,'John','8796574865','john34@gmail.com','Pune');

select * from author;
-----------***********-------------

insert into book values(101,'Harry Potter',1000,1);
insert into book values(102,'sherlockHome',650,4);
insert into book values(103,'Inspiring Thoughts',700,3);

select * from book;
------------*************--------------

insert into AwardMaster values(10,'nobel',500000),(15,'Oscar',1000000),(20,'Padmashree',80000);
select * from AwardMaster;


insert into Awards values(123,10,2,101,2022),(134,15,3,102,2019),(125,20,1,102,2020),(176,20,4,103,2017);

select * from Awards;

--find author name for book harrypotter
select a.author_name,b.book_name from book b,author a where a.author_id=b.author_id and b.book_name='harry potter';

--find all books whos author is jkrowling
select a.author_name,b.book_name from book b join author a on a.author_id=b.author_id where a.author_name='jkrolling';

--find all books whos author is John
select a.author_name,b.book_name from book b join author a on a.author_id=b.author_id where a.author_name='john';

--find city name in which max author are leaving
select top(1)city,count(*) from author group by city order by count(*) desc;