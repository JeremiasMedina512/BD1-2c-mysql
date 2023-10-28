/*GOOGLE: mysql workbench error code 1452 mysql workbench*/
/*https://stackoverflow.com/questions/21659691/error-1452-cannot-add-or-update-a-child-row-a-foreign-key-constraint-fails*/
/*Ejecutar para usar update*/
SET FOREIGN_KEY_CHECKS=0;

-- “Al empleado de número 5 deberá modificarse su especialidad a la de código 3”
UPDATE empleado
SET cod_esp = 3
WHERE nro= 5;

-- “Incrementar $1000 el sueldo de todos los empleados”
/* https://stackoverflow.com/questions/11448068/mysql-error-code-1175-during-update-in-mysql-workbench */
SET SQL_SAFE_UPDATES = 0;
UPDATE empleado 
SET sueldo = sueldo+1000
WHERE nro IS NOT NULL;

DELETE FROM empleado
WHERE nombre like "a%"; 
-- Se elimina si empieza con con "A".

select * from area;
select * from empleado;
select * from especialidad;
select * from trabaja;




