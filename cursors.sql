--cursors

declare empcursor cursor for select empno,ename,sal from emp order by sal desc
declare @ename varchar(100),@empno int,@sal int
open empcursor
print @@fetch_status
fetch next from empcursor into @empno,@ename,@sal
print @@fetch_status
while @@FETCH_STATUS=0
begin
print @@fetch_status
print @ename + ' is earning' +cast(@sal as varchar)
fetch next from empcursor into @empno,@ename,@sal
end
close empcursor
print @@fetch_status
deallocate empcursor
go

