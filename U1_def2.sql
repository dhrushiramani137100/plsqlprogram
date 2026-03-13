--print square and cube
set serveroutput on
declare
	n1 number(10):=&n1;
	
	s number(10):=n1*n1;
	c number(10):=n1*n1*n1;
begin
	 dbms_output.put_line('s='||s);
	dbms_output.put_line('c='||c);

end;
/