-- Ejercicio 17. Indicar la cantidad de proveedores que comienzan con la letra F.
select count(*) as "Cantidad de proveedores"
from proveedor
where nombre like "F%";

-- Ejercicio 13. 
select avg(precio) 
from proveedor
where 