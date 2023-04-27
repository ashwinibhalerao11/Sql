use Movies;


--delete from Movies;
select * from movies;
select * from celebrity;
select * from BollywoodData;
select * from Roles;

--delete from BollywoodData;
truncate table movies;
truncate table celebrity;
truncate table Bollywooddata;
truncate table roles;

alter table Movies alter column Movie_id int not null;
alter table Movies add constraint PK_Movie_id primary key (Movie_id);

--create table Moviess(Movie_id int not null primary key,Movie_name varchar(20),Release_year int,Box_Office_Collection varchar(20));
exec sp_help Movies;

alter table Celebrity alter column celebrity_id int not null;
alter table Celebrity add constraint PK_celebrity_id primary key(celebrity_id);
exec sp_help Celebrity;

alter table Roles alter column Roll_id int not null;
alter table Roles add constraint PK_Roll_id primary key(Roll_id);
exec sp_help Roles;

sp_help Bollywooddata;
alter table Bollywooddata alter column Bollywood_Data_id  int not null;
alter table bollywooddata add constraint PK_BoolywoodData_id primary key(Bollywood_Data_id);
alter table Bollywooddata add constraint fk_Movie_id foreign key (Movie_id) references Movies (Movie_id);
alter table Bollywooddata add constraint fk_celebritee_id foreign key(celebrity_id)references Celebrity (celebrity_id);
alter table Bollywooddata add constraint fk_Roll_id foreign key(Roll_id)references Roles (Roll_id);


insert into Movies values(1,'Bhola',2023,'150Cr');



