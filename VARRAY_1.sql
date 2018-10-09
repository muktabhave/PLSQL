create or replace procedure varray_1 is

cursor c1 is 
select first_name||' '||last_name as clientname
from clients;

type v1 is varray(10) of varchar2(30); 

var1 v1:= v1();

counter number := 1;

begin

/* Use for loop cursor to extract data into varray */

for i in c1
loop

var1.extend;

var1(counter):= i.clientname;

dbms_output.put_line('Client name is '||'('||counter||') '|| var1(counter));

counter:= counter+1;

end loop;

end;