--program to calculate result 
set serveroutput on
declare
	xrlno number(3):=&xrlno;
	xm1 number(3);
	xm2 number(3);
	xm3 number(3);
	xm4 number(3);
	xm5 number(3);
	t  number(3);
	p number(3);
begin
	select m1,m2,m3,m4,m5 INTO xm1,xm2,xm3,xm4,xm5 from marks where rollno=xrlno;
	if(xm1<40) OR (xm2<40) OR (xm3<40) OR  (xm4<40) OR  (xm5<40)
	 then
	update marks set
	total=0,per=0,result='Fail',grade='F' where rollno=xrlno;
	end if;
	t:=xm1+xm2+xm3+xm4+xm5;
	p:=t/5;
	if p>=40 and p<50
	then
	update marks set
	total=t,per=p,result='pass',grade='D' where rollno=xrlno;

	elsif p>=50 and p<60
	then
	update marks set
	total=t,per=p,result='pass',grade='C' where rollno=xrlno;

	elsif p>=60 and p<70
	then
	update marks set
	total=t,per=p,result='pass',grade='B' where rollno=xrlno;

	elsif p>=70 and p<100
	then
	update marks set
	total=t,per=p,result='pass',grade='A' where rollno=xrlno;
	else
	
	update marks set
	total=0,per=0,result='Fail',grade='F' where rollno=xrlno;
	end if;


end;
/