select * from employee;

--1.find out all the employee whos name end with a
select * from Employee where e_name like '%a';

--2.find out all the employee who are living in city with length 4
select * from Employee where city like'____';

--3.find out the no of employee from each department
select e_deptName, count(*) from employee where e_deptName is not null group by e_deptName;

--4.find out number of employee from each city
select city, count(*) from employee where city is not null group by city;

--5.find out the city name in which more than 2 employees are working
select city,count(*) from employee where city is not null group by city having count(*)>2;

--6.find out the dept where only one employee is working
select e_deptName,count(*)from employee where e_deptName is not null group by e_deptName having count(*)=1;

--7.find out employee name contain char 'i'
select * from employee where e_name like '%i%';