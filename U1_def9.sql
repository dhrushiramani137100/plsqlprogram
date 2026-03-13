--display male employee from HR department
set serveroutput on
declare

	
begin
	For i IN(select empid,empname FROM employee
	where department='HR' AND gender='male')
	LOOP
	dbms_output.put_line('id:'|| i.empid||'|name:'|| i.empname);
end loop;
end;
/