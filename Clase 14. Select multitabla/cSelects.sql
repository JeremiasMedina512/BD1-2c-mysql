-- Ejercicio 1. Listar el nombre y descripcion de todos los empleados. JOIN, ON.
select * from empleado,especialidad;
select Empleado.nombre, Especialidad.descripcion from 
Empleado join Especialidad
on Empleado.cod_esp = Especialidad.cod_esp;
select Empleado.nro, Empleado.nombre, Especialidad.descripcion from 
Empleado join Especialidad
on Empleado.cod_esp = Especialidad.cod_esp
where Empleado.nombre != "Pedro";

-- Ejercicio 2. “Listar el nombre de aquellos empleados que trabajan en el área de código A1”
select Empleado.nombre, Trabaja.cod_area from 
Empleado JOIN Trabaja
ON Empleado.nro = Trabaja.nro_emp
where Trabaja.cod_area = "A1"; -- Solo muestra los que trabajan en el area "A1".
select Empleado.nombre, Trabaja.cod_area from 
Empleado JOIN Trabaja
ON Empleado.nro = Trabaja.nro_emp;

-- Ejercicio 3. “Listar el nombre de todos los empleados junto al nombre de su jefe” 
select Em.nro, EM.nombre as NombreJefe, J.nombre as NombreEmpleado, J.nro from 
Empleado EM JOIN Empleado J
ON EM.nro = J.nro_jefe;
select Em.nro, EM.nombre as NombreJefe, J.nombre as NombreEmpleado, J.nro from 
Empleado EM JOIN Empleado J
ON EM.nro_jefe= J.nro;

-- Ejercicio 4. “Listar el nombre de todos sus empleados. Indicar además el nombre de su jefe (sies que tiene)”
select EM.nombre, J.nombre as NombreJefe -- Respuesta
from Empleado EM 
left join Empleado J
on EM.nro_jefe = J.nro
where EM.nro_jefe is not null;

-- Ejercicio 5. “Listar el nombre de los empleados que trabajan en el área de descripción Area 1 y que cobran más de $5000”
select EM.nombre, EM.sueldo, T.cod_area from -- Respuesta
Empleado EM join Trabaja T
ON EM.nro = T.nro_emp
where cod_area = "A1" 
AND EM.sueldo >= 5000;
select EM.nombre, EM.sueldo, T.cod_area from
Empleado EM join Trabaja T
ON EM.nro = T.nro_emp
where EM.sueldo >= 5000;
SELECT EM.nombre -- PDF Miel
FROM Empleado EM JOIN
Trabaja T ON EM.nro = T.nro_emp JOIN
Area A ON A.cod_area = T.cod_area
WHERE A.descripcion = "Area 1"
AND EM.sueldo > 5000;


select * from empleado;
desc empleado; 
