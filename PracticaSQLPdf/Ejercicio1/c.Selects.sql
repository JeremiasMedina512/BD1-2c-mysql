-- Querys
-- Ejercicio 1. X
select cod_art, precio from articulo
where precio >=100 and precio <=1000;

-- Ejercicio 2. X
select * from proveedor;

-- Ejercicio 3. X
select cod_mat, descripcion as Descripcion from material
where cod_mat in(1,3,6,9,18);

-- Ejercicio 4. X
select cod_prov, nombre, domicilio from proveedor
where domicilio like "%Suipacha%" 
and  fecha_alta between "2000-12-31" and "2002-01-01";
select * from proveedor;

-- Ejercicio 5. X
select Proveedor.nombre, Ciudad.nombre from 
Proveedor JOIN Ciudad 
ON Proveedor.cod_ciu = Ciudad.cod_ciu;
select * from proveedor;

-- Ejercicio 6. 
select PR.nombre from
Proveedor PR join ciudad
ON PR.cod_ciu = ciudad.cod_ciu
where ciudad.nombre = "La Plata";


