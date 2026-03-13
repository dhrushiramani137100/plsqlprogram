--calculate basic salary
set serveroutput on
declare 
	xeid number(10):=&xeid;
	basic number(10);
	da number(10);
	hra number(10);
	medical number(3):=500;
	pf number(10);
	gross number(10);
begin
	select basicsal INTO basic from emp_salary where Eid=xeid;
	da:=basic*0.50;
	hra:=basic*0.15;
	pf:=basic*0.10;

	gross:=(basic+da+hra+medical)-pf;
	update emp_salary set gross_sal=gross where Eid=xeid;
	commit;

end;
/