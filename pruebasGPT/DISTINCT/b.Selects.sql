insert into clientes(ciudad,nombre) values
("New York","Peter"),("Londres","Tom Scott"),("Lima","Kishtar"),("New York","Matt Murdock");
insert into clientes(ciudad,nombre) values
("New York","Peter");
insert into clientes(ciudad,nombre) values
("Paris","Assane"),("Madrid","Federer"),("Madrid","Guillermo"),("Paris","Guillermo");

select * from clientes;
select ciudad from clientes; -- Muestra ciudades repetidas
select distinct ciudad from clientes; -- No muestra ciudades repetidas.

SELECT DISTINCT nombre FROM clientes  
WHERE ciudad = "New York";
/**/
/*Muestra todos los nombres sin repetir de clientes
como si fuera un conjunto. */
SELECT DISTINCT nombre FROM clientes;