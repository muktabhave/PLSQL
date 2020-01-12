create or replace procedure test_record as

type t1 is record
(a varchar2(20),
b varchar2(20)
);

x t1;

begin

select FIRST_NAME,LAST_NAME into x from clients
where city like 'Missi%';

dbms_output.put_line('Name of client is ' || x.a||' '||x.b );

end;
