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

-- Ejercicio 4. “Indicar el sueldo mínimo de los empleados por cada código de especialidad”
select cod_esp, MIN(sueldo) -- ERROR
from empleado;
select cod_esp, MIN(sueldo)
from empleado 
group by cod_esp;


-- Ejercicio 5. Indicar el sueldo mínimo de los empleados por cada código de especialidad, sólo
-- para aquellas especialidades cuyo mínimo sea mayor a 3000
SELECT cod_esp, MIN(sueldo)
FROM empleado
WHERE MIN(sueldo) > 3000 -- Invalido
GROUP BY cod_esp; -- GROUP BY: por cada cod_esp unico.

SELECT cod_esp, MIN(sueldo)
FROM empleado
GROUP BY cod_esp -- Por cada registro de cod_esp unico. 
HAVING MIN(sueldo) > 3000; -- HAVING MIN reemplaza al WHERE

/*Se agrupan los datos por la columna "cod_esp" y se evalua el sueldo minimo. 
Para todos los registros que contengan el mismo dato en la columna "cod_esp" se evaluan cual 
es el sueldo minimo de entre todos estos registros.
*/

-- Ejercicio 6. “Indicar el sueldo mínimo de los empleados por cada código de especialidad, sólo
-- para aquellas especialidades con más de 5 empleados”
SELECT cod_esp, MIN(sueldo) 
FROM empleado
GROUP BY cod_esp
HAVING COUNT(*) > 5;
/*Mostrar el cod_esp y el sueldo minimo de empleados
agrupado por cada cod_esp, y que al mismo tiempo, ese mismo cod_esp, se encuentre presente en mas de 5 registros
*/

-- Ejercicio 7. “Indicar cantidad de empleados por cada descripción de especialidad”
SELECT COUNT(EM.cod_esp) as EspecialidadEmpleado, ES.descripcion
FROM Empleado EM JOIN Especialidad ES
ON EM.cod_esp = ES.cod_esp
GROUP BY ES.descripcion;

-- Que sucede si dos o más especialidades tienen la misma descripción?

SELECT COUNT(EM.cod_esp) as EspecialidadEmpleado, ES.descripcion
FROM Empleado EM JOIN Especialidad ES
ON EM.cod_esp = ES.cod_esp
GROUP BY ES.descripcion, ES.cod_esp;	

-- Ejercicio 8. “Indicar cantidad de empleados a cargo de cada número de jefe”
SELECT nro_jefe, COUNT(nro) 
FROM Empleado  
WHERE nro_jefe IS NOT NULL
GROUP BY nro_jefe;
/*El "WHERE" va siempre antes del "GROUP BY"*/
/*Seleccionar el nro_jefe y contar la cantidad de nro de empleado
donde nro_jefe no sea null y agrupar por cada nro_jefe*/

-- Ejercicio 9. “Indicar cantidad de empleados a cargo de cada jefe, mostrando su nombre”
SELECT J.nro, J.nombre, COUNT(*)
FROM Empleado EM JOIN Empleado J ON EM.nro_jefe= J.nro
GROUP BY J.nro, J.nombre;
/*Seleccionar el nro_jefe, mostrar su nombre, y la cantidad de trabajadores a su cargo
de empleado*/

-- Ejercicio 10. “Cuántos jefes hay?”



SELECT * FROM empleado;
SELECT * FROM especialidad;