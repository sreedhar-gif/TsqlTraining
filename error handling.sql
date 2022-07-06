insert into emp(empno,deptno) values(7839,10)

begin try 
	insert  into emp(empno) values(1234)
end try

begin catch
print @@error
print error_message()
end catch