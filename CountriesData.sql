create database Countries;

use Countries;
 create table Country(country_id int not null primary key,Country_name varchar(20));
 select * from country;
 sp_help city;

 create table States(State_id int not null primary key,State_name varchar(20),Country_id int,
 constraint fk_Country_id foreign key (Country_id) references Country (Country_id));
 sp_help States;


 create table City(City_id int not null primary key,city_name varchar(20),State_id int,
 constraint fk_State_id foreign key (State_id)references States(state_id));
 sp_help City;

 select * from Country;
 select * from States;
 select * from City;


 insert into Country values(1,'India'),(2,'Australia'),(3,'France'),(4,'Canada'),(5,'Germany');
 insert into States values(101,'Maharashtra',1),(102,'Queens Land',2),(103,'Victoria',2),(104,'New Maxio',4),(105,'Grand Est',3),(106,'Hamburg',5);
 insert into City values (111,'Pune',101),(222,'Mackay',102),(333,'Geelong',103),(444,'Santa Fe',104),(555,'Colmar',105),(666,'Wismar',106);

 -- Find the Country name for state Victoria
 select c.country_name from Country c join states s on c.country_id=s.Country_id where state_name='Victoria';

 -- find all states from Australia country
 select s.state_name from States s join Country c on s.country_id=c.country_id where c.Country_name='Australia';

 --find the city names from Maharashtra and Hamburg
 select 


