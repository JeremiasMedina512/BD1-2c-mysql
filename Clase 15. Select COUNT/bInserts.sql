insert into empleado(nro,nombre,cod_esp,nro_jefe,sueldo,f_ingreso) values
(1001,"Pedro",2,1000,5000,"2008-05-01"),
(1002,"Daniel",2,1000,2000,"2009-10-01");

insert into empleado(nro,nombre,cod_esp,sueldo,f_ingreso) values(1000,"Juan",1,10000,"2000-01-01");

insert into especialidad(cod_esp, descripcion) values (1, "Gerente"), (2,"Operario");

insert into area(cod_area, descripcion) values ("A1", "Area 1"),("A2", "Area 2");

insert into trabaja(nro_emp, cod_area) values (1000,"A1"),(1000, "A2"), (1001, "A1"), (1001,"A2");
