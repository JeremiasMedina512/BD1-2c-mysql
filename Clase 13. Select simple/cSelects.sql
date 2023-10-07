select * from empleado,especialidad;
/*Ejercicio 1: Listar el nombre y descripcion de especilidad de todos los empleados*/

select Empleado.nombre, Especialidad.descripcion 
from empleado,especialidad
where Empleado.cod_esp = Especialidad.cod_esp;

-- Otra forma de escribir lo mismo

select EM.nombre, ES.descripcion
from Empleado EM, Especialidad ES
where EM.cod_esp = ES.cod_esp;