create or replace procedure forloop_cursor is

cursor c1 is select employeeid, first_name from employee;

begin

for i in c1

loop

dbms_output.put_line(i.employeeid|| i.first_name);

end loop;

end;