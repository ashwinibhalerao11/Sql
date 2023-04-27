
use Hospital;

--1)write a queries to create all tables with primary key 

create table Doctor(Did int not null primary key, DName varchar(20),Address varchar(30),Qualification varchar(20),No_of_Patient_Handled int);

create table Patient_Master(PCode int not null primary key,PName varchar(25),PAddress varchar(30),Age int,Gender varchar(10),BloodGroup varchar(5));

create table Admitted_Patient(PCode int not null Primary key, EntryDate Date,Discharge date,WardNo int,Disease varchar(30),Did int);

create table Bill(PCode int primary key,BillAmount int);

--2)write a query to describe above tables;

exec sp_help Doctor;

exec sp_help Patient_Master;

exec sp_help Admitted_Patient;

exec sp_help Bill;

--3)write a query to drop primary key from patientMaster

alter table Patient_Master drop constraint PK__Patient___860C544C57345A5C; 

--4)Suppose Discharge _date is not present into AdmittedPatient write query to add Discharge_date column into the AdmittedPatient

alter table Admitted_Patient add Discharged date;

--5)write a query to add primary key to patientMaster
alter table Patient_Master add constraint dpk Primary key(PCode);

--6)	write a query to insert 5 records into the Doctor table

insert into Doctor values(101,'Dr A. B. Jadhav','Manchar','MBBS',82),(102,'Dr R. D. Gujrathi','Manchar','MBBS MD',156),(103,'Dr S. M. Patil','Narayangaon','MD',99),(1014,'Dr N. B. Nighot','Khed','MBBS',178),(105,'Dr B. V. Thorat','Kalamb','BAMS',256);

--7)	write a query find the no. of doctors as per qualification

select Qualification, count(*) from Doctor group by Qualification;

--8)	find the doctors whose qualification is MD or MBBS

select * from Doctor where Qualification = 'MBBS' or Qualification = 'MD';

--9)find patients whose age is between 21to 27  with bloodgroup A+

insert into Patient_Master values(201,'Devdatta Pawar','At Post Beed',25,'Male','AB+'),(202,'Pradip Raymal','At Post Wardha',24,'Male','A+'),(203,'Priyanka Kardile','At Post Beed',26,'Female','A+'),(204,'Madhuri Mali','At Post Bhusawal',29,'Female','B+'),(205,'Vaibhav Patil','At Post AhemadNager',22,'Male','O+'),(206,'Ashwini Bhalerao','At Post Pune',25,'Female','B+');

select * from Patient_Master where  Age>21 and Age<27 and BloodGroup='A+';

--10)find the doctors whose address is mumbai and noofpatient_handle are 10

select * from Doctor where Address='Manchar' and No_of_Patient_Handled=82;

--11)find the count of pateint as per the blood group

select BloodGroup, count(*) from Patient_Master group by BloodGroup;

--12)find the maximum bill amount

insert into Bill values(201,25000),(202,29000),(203,35000),(204,47000),(205,16000),(206,9000);

select max(BillAmount) from Bill; 

--13)find the doctors who has noofpatient_handle are more than 10;

select * from Doctor where No_of_Patient_Handled>10;

--14)find the number of patients who live in pune;

select * from Patient_Master where PAddress='At Post Pune';

--15)find the patients whose bloodgroup is AB+ and gender is the female

select * from Patient_Master where BloodGroup='AB+' and Gender='Female'; --0 record we've male candidate

--16)find the no of patient in pune whose count is greater than 3;

select count * from Patient_Master where PAddress='pune' group by PAddress having count*>3;

--17)delete the patient whose wardno is 4 and 6 and Disease is dengoue 

insert into Admitted_Patient values(201,'2022-06-03','2022-06-10',1,'Maleriya',101),(202,'2022-06-04','2022-06-12',1,'Typhoid',101),(203,'2022-06-04','2022-06-13',3,'Maleriya',103),(204,'2022-06-12','2022-06-18',4,'Dengoue',102),(205,'2022-06-12','2022-06-20',4,'Covid',104),(206,'2022-06-12','2022-06-16',6,'Dengoue',101);

select * from Admitted_Patient;

delete from Admitted_Patient where WardNo=4 and WardNo=6 and Disease='Dengoue';