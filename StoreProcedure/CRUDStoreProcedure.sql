create procedure spAddNewEmployee
@Name nvarchar (50),
@City nvarchar (50),
@Address nvarchar(50)
as
begin
insert into Employee values(@Name,@City,@Address)
end

create procedure spEmployeeDetails
as
begin
select EmployeeID,Name as[Employee Name],City,Address from Employee
end

execute  spEmployeeDetails

alter procedure spUpdateEmployee
@EmpId int,
@Name nvarchar (50),
@City nvarchar (50),
@Address nvarchar(50)
as
begin
update Employee
set Name=@Name,City=@City, Address=@Address
where EmployeeID=@EmpId
end

create procedure spDeleteEmployee
@EmpId int
as
begin
delete from Employee

where EmployeeID=@EmpId
end

