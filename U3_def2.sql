-- student name from a user if it is exist display his/her result from RESULT table otherwise display appropriate message using exception handling data found exception
set serveroutput on
declare
	 
	 xname  CHAR(10):='&xname';
	 xrollno NUMBER(5);
	 xper  NUMBER(5);
begin
	select ROLLNO,PER INTO xrollno,xper from result where
	 name=xname;
	dbms_output.put_line('Student Name:'||xname);
	dbms_output.put_line('Student Rollno:'||xrollno);
	dbms_output.put_line('Student Per:'||xper);
		EXCEPTION
		WHEN NO_DATA_FOUND THEN
		dbms_output.put_line('Id inputted by you is not available in result table');
end;
/