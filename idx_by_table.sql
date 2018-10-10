create or replace procedure idx_by_table is

type idx_table is table of employee%rowtype index by pls_integer;

v_idx_table idx_table;

counter number:=1;

begin

select * bulk collect into v_idx_table from employee;

for i in 1.. v_idx_table.count

loop

dbms_output.put_line(v_idx_table(i).employeeid ||'  '|| v_idx_table(i).first_name);

end loop;

end;