use sreedhar
create function checksalary(@sal int)
returns int 
as 
begin
declare @empnumber int
set @empnumber=
(select empno from emp 
	 where @sal=sal)
return @empnumber
end

select dbo.checksalary(5000)


alter function salarygreater(@sal int)
returns table
as 
	return
		select *
			 from emp 
		where sal>@sal

select * from dbo.salarygreater(2000)

