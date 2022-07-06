create procedure Add2Num(@num1 int, @num2 int)
as
begin
declare @result int
set @result=@num1+@num1
print @result
end

