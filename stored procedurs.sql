use sreedhar
create procedure GetEmpDetails
AS
begin 
select ename,job,sal
from emp
end;

execute GetEmpDetails
execute emplist1
--
create procedure GETSPECIFICDETAILS @EMPNO INT
As 
begin
SELECT * FROM EMP
	WHERE @EMPNO=EMPNO
END


EXEC GETSPECIFICDETAILS @EMPNO = 7369
--
CREATE PROCEDURE GETDETAILS @EMPNO INT,@ENAME VARCHAR(20)

AS
BEGIN
SELECT * FROM EMP
	WHERE @EMPNO=EMPNO AND @ENAME=ENAME
END

exec GETDETAILS 7369,'smith'
exec GETDETAILS 7499,'allen'

Create procedure Addnewdept @deptno int ,@dname varchar(20),@loc varchar(20)

As 
begin

insert into dept([deptno],[dname],[loc]) values(@deptno,@dname,@loc)

end

exec Addnewdept 51,'sales','new york'
exec Addnewdept 57,'superapp','delhi'
exec Addnewdept 54,'enterprise','mumbai'
exec Addnewdept 53,'marketing','chennai'

select * from dept

Create procedure Deletedept @deptno int

as 
begin
delete from dept where deptno=@deptno
end

exec Deletedept 57

select * from dept


create procedure updatedeptname @deptno int,@dname varchar(20)
as
begin
	update dept set dname=@dname where deptno=@deptno

end

exec updatedeptname 54, 'hr'
select * from dept

exec updatedeptname 54, 'sales'


create procedure countofemployees @deptno int 
as
begin 
select count(*) from emp
where deptno=@deptno

end

exec countofemployees 10
exec countofemployees 20

create procedure countofemployeeswithjob @job varchar(20) 
as
begin 
select count(*) from emp
where @job=job

end

exec countofemployeeswithjob 'president'
exec countofemployeeswithjob 'salesman'


create procedure employeemaximumsalary @deptno int

as
begin
select * from emp where sal=(select max(sal) from emp where @deptno=deptno)
end

exec employeemaximumsalary 20
exec employeemaximumsalary 10

create procedure employeeanddeptdetails 
as
begin

select * from dept
join emp 
on dept.deptno=emp.deptno

end 

exec employeeanddeptdetails
