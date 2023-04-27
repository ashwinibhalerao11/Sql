
create table Employee(e_id int,e_name varchar(20),salary int, city varchar(20),gender varchar(20),e_deptName varchar(20));
exec sp_help Employee;


select * from Employee;
insert into Employee values(101,'Ashwini',70000,'Pune','female','HR'),(102,'Nikhil',80000,'Mumbai','Male','Sales'),
(103,'Akash',60000,'Pune','Male','Finance'),(104,'Rutuja',60000,'Mumbai','female','sales'),
(105,'Pratik',50000,'Nashik','Male','HR'),(106,'Krushna',70000,'Mumbai','Male','HR');


--find all employee from pune location
select * from employee where city='pune';

--find employee who got salary more than 60000 and he/she is from mumbai location
select * from employee where salary>60000 and city='mumbai';

-- add row 

--to delete the employee who is working in sales department
select * from employee where e_deptName='sales';
delete from employee where e_deptName='sales';

-- find all employee who is working in hr dept
select * from employee where e_deptName='HR';

-- find female employee who are working in sales dept
select * from employee where gender='female' and e_deptName='sales';

-- find all male employee who's salary is less than 60000
select * from employee where gender='male' and salary<60000;


