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
select Proveedor.nombre, Ciudad.nombre as Ciudad from  -- Miel
Proveedor LEFT join Ciudad 
ON Proveedor.cod_ciu = Ciudad.cod_ciu;
select * from proveedor;

-- Ejercicio 6. X
select PR.nombre from
Proveedor PR join ciudad
ON PR.cod_ciu = ciudad.cod_ciu
where ciudad.nombre = "La Plata";

-- Ejercicio 7. 
select CON.nro as numeroAlmacen, AR.descripcion, AR.precio, AR.cod_art from 
Contiene CON JOIN Articulo AR
ON CON.cod_art = AR.cod_art
where AR.descripcion = "A";
desc contiene;
select * from contiene;

-- Ejercicio 8
select MAT.cod_mat as codigoMaterial, MAT.descripcion as Descripcion 
from Provisto_por PP JOIN Material MAT ON PP.cod_mat = MAT.cod_mat
JOIN Proveedor P ON PP.cod_prov = P.cod_prov JOIN Ciudad C ON
P.cod_ciu = C.cod_ciu 
where P.cod_ciu = "Rosario";

SELECT DISTINCT m.cod_mat, m.descripcion
FROM material m JOIN provisto_por pp ON m.cod_mat = pp.cod_Mat
JOIN proveedor p ON pp.cod_prov = p.cod_prov
JOIN ciudad c ON p.cod_ciu = c.cod_ciu
WHERE c.nombre = 'Rosario';

-- Ejercicio 9 
insert into proveedor(cod_prov, nombre) values (33, "Martin Gomez");
insert into provisto_por(cod_mat, cod_prov) values (33,33);

-- Ejercicio 11
DELETE FROM proveedor
WHERE nombre LIKE "%ABC%";

-- Ejercicio 12.
SELECT COUNT(*) AS "Cantidad de proveedores con F"
FROM proveedor
WHERE nombre like "f%";

-- Ejercicio 13.
SELECT AVG(Articulo.precio) FROM articulo;
SELECT * FROM ARTICULO;
SELECT * FROM ALMACEN;
SELECT * FROM CONTIENE;


select * from material;
select * from proveedor;
select * from provisto_por;
select * from almacen;
select * from articulo;

