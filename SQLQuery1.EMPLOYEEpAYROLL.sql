
UC1
create database payroll_service;
use payroll_service



UC2
create Table Employee_Payroll
(
id int identity (1,1)primary key,
name varchar(150) NOT NULL,
salary float NOT NULL,
start datetime NOT NULL,
);
 select * from Employee_Payroll




 UC3
  insert into Employee_Payroll(name, salary, start) VALUES
  ('Sayali' , 500000.00, '2020-11-25'),
  ('Shubham' , 900000.00, '2021-09-10'),
  ('Terissa' , 800000.00, '2019-10-09');
 

 

 UC4
  select * from Employee_Payroll
  
  


  UC5
  select salary from Employee_Payroll
  where name = 'Sayali'

 
  
   

UC6
  Alter table Employee_Payroll add gender char(1);
  UPDATE Employee_Payroll SET gender = 'F' WHERE name='Sayali' ;
  UPDATE Employee_Payroll SET gender = 'M' WHERE name='Shubham' ;
  UPDATE Employee_Payroll SET gender = 'F' WHERE name='Terissa' ;
  
  select * from Employee_Payroll

 


 UC7
  SELECT SUM(salary) as MaleSalarySum From Employee_Payroll where gender = 'M' GROUP BY gender;
  SELECT SUM(salary) as FemaleSalarySum From Employee_Payroll where gender = 'F' GROUP BY gender;
  
  SELECT AVG(salary) as MaleSalarySum From Employee_Payroll where gender = 'M' GROUP BY gender;
  SELECT AVG(salary) as FemaleSalarySum From Employee_Payroll where gender = 'F' GROUP BY gender;

  SELECT MIN(salary) as MaleSalarySum From Employee_Payroll where gender = 'M' GROUP BY gender;
  SELECT MIN(salary) as FemaleSalarySum From Employee_Payroll where gender = 'F' GROUP BY gender;
  
  SELECT MAX(salary) as MaleSalarySum From Employee_Payroll where gender = 'M' GROUP BY gender;
  SELECT MAX(salary) as FemaleSalarySum From Employee_Payroll where gender = 'F' GROUP BY gender;

  SELECT COUNT(salary) as MaleCOUNT From Employee_Payroll where gender = 'M' GROUP BY gender;
  SELECT COUNT(salary) as FemaleCOUNT From Employee_Payroll where gender = 'F' GROUP BY gender;

  select * from Employee_Payroll
  
 


 UC8
  Alter table Employee_Payroll add 
  PhoneNo int,
  OfficeAddress varchar(50) not null default 'Nagpur',
  Department varchar(50) Not null default 'Administrative';

  
  UPDATE Employee_Payroll SET officeAddress = 'Mumbai' WHERE name='Shubham';

 

 UC9

 Alter table Employee_Payroll add 
  BasicPay money,
  Deductions money,
  TaxablePay money,
  IncomeTax money,
  NetPay money;

 select * from Employee_Payroll
 

 UC10
  select * from Employee_Payroll
   UPDATE Employee_Payroll SET Department = 'Sales' WHERE name='Terissa';
   UPDATE Employee_Payroll SET Department = 'Marketing' WHERE name= 'Terssia';

   UC11
  use payroll_service
  create Table EmployeDe
  (
  id int identity (1,1) primary key,
  DepartmentName varchar (50) not null,
  )
  select * from EmployeDe
   

   Alter table EmployeDe add Dept_id int foreign key references EmployeeDe(id);



   UC12
   INSERT into  EmployeDe values ('Manager')
   INSERT into EmployeDe values ('HR')


