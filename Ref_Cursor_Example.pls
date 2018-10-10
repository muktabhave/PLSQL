create or replace procedure ref_cursor_1 is

type c_refc is ref cursor return employee%rowtype; 

v_ref c_refc;

var v_ref%rowtype;

begin

open v_ref for select * from employee;

loop

fetch v_ref into var;

dbms_output.put_line(var.employeeid);

exit when v_ref%notfound;

end loop;

end;