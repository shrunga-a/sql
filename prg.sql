DELIMITER //
create procedure prg(IN Vid varchar(15),IN Vname char(25),
IN Age int(3),
IN Houseno varchar(10),
IN City varchar(15),
IN State varchar(25),
IN Pincode int(6),
IN Cont_id varchar(20),
IN Cand_id varchar(20))
begin
declare msg varchar(20);
if Age>=18 then
insert into Voter(vid,vname,age,address,cons_id,cond_id)
values(vid,vname,age,cons_id,cond_id);
set msg="row inserted";
else
set msg="voter not eligible";
end if;
select msg;
end//

DELIMITER ;
