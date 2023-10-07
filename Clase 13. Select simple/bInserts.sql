insert into empleado(nro,nombre,cod_esp,nro_jefe,sueldo,f_ingreso) values
(1001,"Pedro",2,1000,5000,"2008-05-01"),
(1002,"Daniel",2,1000,2000,"2009-10-01");

insert into empleado(nro,nombre,cod_esp,sueldo,f_ingreso) values(1000,"Juan",1,10000,"2000-01-01");

insert into especialidad(cod_esp, descripcion) values (1, "Gerente"), (2,"Operario");

desc especialidad;
desc empleado;

select * from especialidad;
select * from empleado;

select * from empleado, especialidad;
