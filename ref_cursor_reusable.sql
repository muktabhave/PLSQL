create or replace procedure ref_cursor_reusable is

type c_refc is REF CURSOR; 

v_ref c_refc;

var1 employee%rowtype;

var2 clients%rowtype;

begin

open v_ref for select * from employee;

loop

fetch v_ref into var1;

exit when v_ref%notfound;

dbms_output.put_line('Employee '||var1.employeeid);

end loop;

close v_ref;

open v_ref for select * from clients;

loop

fetch v_ref into var2;

exit when v_ref%notfound;

dbms_output.put_line('Client '|| var2.clientid);

end loop;

close v_ref;

end;