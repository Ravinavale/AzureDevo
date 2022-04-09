-- added from solution.. --
-- created by ravi
CREATE PROCEDURE dbo.Usp_saveEmployee
@employee varchar(50)
AS
begin
	insert into  Employee
	select @employee
end
