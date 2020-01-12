create or replace procedure nest_tab_with_bulk_collect_2 is

type nest_tab is table of employee%rowtype;

ntab nest_tab;

begin

/* Bulk collect reduces the switches from PL/SQL to SQL engine and PL/SQL to SQL engine from one per row to one for all the rows.
Thus gives performance benefit */

select * bulk collect into ntab from employee;

for i in 1.. ntab.count

loop

dbms_output.put_line( ntab(i).employeeid||' '||ntab(i).first_name);

end loop;

end;
