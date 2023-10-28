select * from empleado;

-- Ejercicio 1.  Contar la cantidad de empleados
select count(*) from empleado;
select count(*) from area;
select * from empleado;

-- Ejercicio 2. Mostrar el mayor sueldo de un empleado.
select max(sueldo) from empleado;
select * from empleado;

-- Ejercicio 3. 
select count(*) from empleado
where sueldo > 3000; 
select sueldo from empleado;

-- Ejercicio 4. 
select cod_esp, MIN(sueldo) -- ERROR
from empleado;
select cod_esp, MIN(sueldo)
from empleado 
group by cod_esp;

-- Ejercicio 5.Indicar el sueldo mínimo de los empleados por cada código de especialidad, sólo
-- para aquellas especialidades cuyo mínimo sea mayor a 3000
select cod_esp, MIN(sueldo)
from empleado
group by cod_esp
having MIN(sueldo)>3000;

-- Ejercicio 6.  Indicar el sueldo mínimo de los empleados por cada código de especialidad, sólo
-- para aquellas especialidades con más de 5 empleados
select cod_esp, min(sueldo)
from empleado
group by cod_esp
having count(*) > 5;

-- Ejercicio 7. Indicar cantidad de empleados por cada descripción de especialidad
select es.cod_esp, es.descripcion, count(*)
from Empleado EM JOIN Especialidad ES
on em.cod_esp = es.cod_esp
group by es.cod_esp, es.descripcion;

-- Ejercicio 8. “Indicar cantidad de empleados a cargo de cada número de jefe
SELECT nro_jefe, COUNT(*)
FROM Empleado
WHERE nro_jefe IS NOT NULL
GROUP BY nro_jefe;

-- Ejercicio 9. Indicar cantidad de empleados a cargo de cada jefe, mostrando su nombre
Select j.nombre, count(*)
from empleado em join empleado j 
on em.nro_jefe = j.nro
group by j.nro, j.nombre;

-- Ejercicio 10. 
select count( disstinct nro_jefe)
from empleado;




desc empleado;