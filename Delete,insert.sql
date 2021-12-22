
use payroll_service
alter procedure AddPayRoleServices
(
 @name varchar (150),
 @salary float,
 @start Date,
 @gender char(1),
 @PhoneNo bigint,
 @OfficeAddress varchar (50),
 @Department varchar (50),
 @Basic_Pay float,
 @Deductions float,
 @TaxablePay float,
 @IncomeTax float,
 @NetPay float,
 @dept_id int
)
as 
begin TRY 
  Insert into Employee_Payroll values( @name, @salary, @start, @gender, @PhoneNo, @Department, @OfficeAddress,@Deductions, @Basic_Pay, @TaxablePay, @IncomeTax ,@NetPay , @dept_id)
End TRY
BEGIN CATCH
SELECT
ERROR_NUMBER() AS ERRORNumber,
ERROR_STATE() AS ERRORState,
ERROR_PROCEDURE() AS ERRORProcedure,
ERROR_LINE() AS ERRORLine,
ERROR_MESSAGE() AS ERRORMessage;
END CATCH





alter procedure DeletePayRoleService
(
 @id int
)
as 
begin TRY 
delete from Employee_Payroll where id = @id
End TRY
BEGIN CATCH
SELECT
ERROR_NUMBER() AS ERRORNumber,
ERROR_STATE() AS ERRORState,
ERROR_PROCEDURE() AS ERRORProcedure,
ERROR_LINE() AS ERRORLine,
ERROR_MESSAGE() AS ERRORMessage;
END CATCH

select * from Employee_Payroll

exec DeletePayRoleService 1


alter procedure GetPayRoleService
(
@id int
)
as 
begin TRY 
select * from Employee_Payroll
End TRY
BEGIN CATCH
SELECT
ERROR_NUMBER() AS ERRORNumber,
ERROR_STATE() AS ERRORState,
ERROR_PROCEDURE() AS ERRORProcedure,
ERROR_LINE() AS ERRORLine,
ERROR_MESSAGE() AS ERRORMessage;
END CATCH

exec GetPayRoleService 1

 create procedure UpdatePayRoleServices
(
@name varchar (150),
 @salary float
)
as 
begin TRY 
Update Employee_payroll set Name = @Name,@Salary=@Salary where id = '@id'
 End TRY
BEGIN CATCH
SELECT
ERROR_NUMBER() AS ERRORNumber,
ERROR_STATE() AS ERRORState,
ERROR_PROCEDURE() AS ERRORProcedure,
ERROR_LINE() AS ERRORLine,
ERROR_MESSAGE() AS ERRORMessage;
END CATCH