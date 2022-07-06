use Sreedhar
declare @name varchar(20)
declare @age int

--if

set @name='pramod'
set @age=30
if @name='pramod'
select  @name

--if else statement
set @name='akshay'
set @age=30
if @name = 'akshay'
	select @age
else
 select @name

--if elif else statememnt
set @name='sreedharkg'
set @age=22
if @age=21
	select @name
else if @age=22
	Select @age
else
Select @age
select @name


--while
set @name='hari'
set @age=30
while @name='hari'
begin
	select @age
	break
End
print 'Wrong name';

--case
GO
Select DEPTNO =
	case
	when DEPTNO=10 then 'clerk'
	when loc='dallas' then 'manager'
	when DEPTNO=30 then 'salesman'
	end
 From DEPT




 Select DEPTNO =
	case DEPTNO
	when 10 then 'clerk'
	when 20 then 'manager'
	when 30 then 'salesman'
	else 'trainee'
	end
 From DEPT


Select left(ename,3)
from emp

select len(ename) from emp

select concat(ename,deptno)from emp

select lower(job) from emp

select ltrim('                   left trim of string')

select rtrim('                   right trim of string               ')

select upper('welcome to the world of sonata')

select trim('     trim the string        ')

select reverse (ename) from emp


select replace('sreedhar','dhar','pramod')

select substring(ename,1,4)from emp

select getdate()


SELECT DATENAME(month,'12/01/2001')as month

SELECT DATEPART (millisecond, '2007-05-10  00:00:01.1234567 +05:10');

SELECT day('12/02/2000') as date
select month('12-02-2001')as month
SELECT year('12/02/2000')as year

select datediff(day,'12/02/2000','11/02/2000')

select dateadd(year,12,'12/02/2000')

DECLARE @myval DECIMAL (5, 2);  
SET @myval = 193.57;  
SELECT CAST(CAST(@myval AS VARBINARY(20)) AS DECIMAL(10,1)) as decimal;  
-- Or, using CONVERT  
SELECT CONVERT(DECIMAL(10,5), CONVERT(VARBINARY(20), @myval));


SELECT  CAST(10.6496 AS INT) as trunc1


declare @date date
set @date = '12/02/2000'
select @date









