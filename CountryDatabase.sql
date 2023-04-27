use Country;

create table Country(countryId int,countryName varchar(20),primary key(countryId));

create table Formate(formatId int, formatName varchar(20));

create table Batsman(playerId int,age int,countryId int);
