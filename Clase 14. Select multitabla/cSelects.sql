-- Ejercicio 1. X
select * from empleado;

-- Ejercicio 2. X AS 
select nro, nombre from empleado;
select nombre, nro as numero from empleado;
select nro as numero, nombre from empleado;
-- Se puede usar el "as" para renombrar temporalmente el nombre de una columna

-- Ejercicio 3. 
select * from empleado;
select nombre as Nombre, cod_esp as codigo_especialidad, nro as numero from empleado;

-- Ejercicio 4. ORDER BY
select * from empleado
order by sueldo desc;
select nombre from empleado 
order by sueldo;

-- Ejercicio 5. DESC. Ordena de forma descendente. En caso de empate entre sueldos, se define el orden por la fecha
select nombre, sueldo, f_ingreso from empleado
order by sueldo, f_ingreso  desc;

-- Ejercicio 6. WHERE 
select nro, nombre, sueldo from empleado 
where sueldo > 3000;
select nro, nombre, sueldo from empleado 
where sueldo != 5000;

-- Ejercicio 7. 
select nro, nombre, sueldo from empleado 
where sueldo < 8000 and nombre = "Pedro";

-- Ejercicio 8.  AND, BETWEEN
select nombre, f_ingreso from empleado
where f_ingreso > "2007-12-31" and f_ingreso < "2009-01-01";
select nombre, f_ingreso from empleado
where f_ingreso > "2007-12-31" and f_ingreso < "2010-01-01";
select nombre, f_ingreso from empleado
where f_ingreso between 20071231 and 20090101;
select nombre, f_ingreso from empleado
where f_ingreso between "20071231" and "20090101";
select nombre, f_ingreso from empleado
where f_ingreso between "2007-12-31" and "2010-01-01";

-- Ejercicio 9. IS, NOT
select nombre from empleado 
where nro_jefe is null;
select nombre from empleado
where nro_jefe is not null;
select nombre from empleado -- MAL
where nro_jefe = null;

-- Ejercicio 10. LIKE
select nombre as Nombre, sueldo as Sueldo from empleado 
where nombre LIKE "d%"; -- Empieza con d. ("%d: termina con d")
select nombre as Nombre, sueldo as Sueldo from empleado 
where nombre LIKE "%ua%"; -- Que contenga ua.
select nombre as Nombre, sueldo as Sueldo from empleado 
where nombre LIKE "%Pedro%"; -- Que contenga pedro
select nombre as Nombre, sueldo as Sueldo from empleado 
where nombre LIKE "D_n%"; -- 
select nombre as Nombre, sueldo as Sueldo from empleado 
where nombre LIKE "D__i%";
select nombre as Nombre, sueldo as Sueldo from empleado 
where nombre LIKE "%_n";
select nombre as Nombre, sueldo as Sueldo from empleado 
where nombre LIKE "%J__n"; -- Se tiene en cuenta la cantidad de guion bajos.

-- Ejercicio 11. OR 
select nombre, nro from empleado 
where nro = 1000
or nro = 1001
or nro = 1002;
select nombre, nro from empleado 
where nro = 1000
or nro = 1001;

-- Ejercicio 11. IN
select nombre, nro from empleado 
where nro in (1000,1001,1002);
select nombre, nro from empleado 
where nro not in (3,2,1);
select nombre as Nombre, nro as Numero from empleado 
where nro not in(1000);

-- Ejercicio 12. 
select nombre as Nombre, nro from empleado 
where nro_jefe is null;
select nro_jefe, nombre from empleado 
where nro_jefe is null;
select distinct nro_jefe as numeroDeJefe from empleado
where nro_jefe is not null;




select * from empleado;
desc empleado; 
