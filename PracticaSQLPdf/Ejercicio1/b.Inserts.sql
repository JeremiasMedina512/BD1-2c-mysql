-- Inserts 
desc articulo;
-- Ejercicio 1.
insert into articulo(cod_art, precio) values (1,50),(2,150),(3,500),(4,1000),(5,2000);
select * from articulo;

-- Ejercicio 2. 
insert into proveedor(cod_prov) values (1),(2),(3);

/*-- Ejercicio 3.
insert into material(cod_mat,descripcion) values 
	(1,"Plastico"),
	(2,"Goma"), 
	(3,"Vidrio");

-- Ejercicio 4. 
insert into proveedor(cod_prov, nombre, domicilio, fecha_alta) values
	(23,"Jeremias","Suipacha","2000-04-12"),
    (30,"Franco","Bebedero","2000-06-24"),
    (48,"Valentin","Suipacha","2001-02-13"),
    (57,"Rodolfo","Suipacha","2001-01-01");
insert into proveedor(cod_prov, nombre, domicilio, fecha_alta) values
	(25,"Raul","Suipacha","2003-01-01");
select * from proveedor;

-- Ejercicio 5. -- Zarate, Capital Federal, 
insert into ciudad(cod_ciu,nombre) values 
(1,"Capital Federal"),
(2,"Zarate");
insert into proveedor(cod_prov, nombre, cod_ciu) values 
	(11,"Lucas",1),
    (54,"Manuel",1),
    (76,"Jose", 2);

-- Ejercicio 6. -- La Plata.
insert into ciudad(cod_ciu, nombre) values 
	(3,"La Plata");
insert into proveedor(cod_prov, nombre, cod_ciu) values (125, "Ken", 3),(265,"Ryu",3);
select * from proveedor;
*/

/*-- Ejercicio 7. 
insert into almacen(nro,nombre, responsable) values	
	(1,"Lo de tito","Tito"),
    (2,"Arbys","Arby"),
    (3,"Lo de julio", "Julio");
insert into articulo(cod_art, descripcion, precio) values
	(14,"Escoba", 1000.0),
    (12,"Tupper",2000.0),
    (13,"Esponja",500.0);
insert into articulo(cod_art, descripcion) values 
	(15,"A");
select * from articulo;
-- where cod_art not in (1,2,3,4,5);
select * from almacen;
insert into contiene(nro, cod_art) values (2,12),(2,15);
select * from contiene;
-- Insertar contenido en la tabla contiene

-- Ejercicio 8 
insert into ciudad(cod_ciu, nombre) values (4,"Rosario");
insert into proveedor(cod_prov, cod_ciu) values (4,4),(5,4),(6,4); 
insert into provisto_por(cod_mat, cod_prov) values(1,6),(2,6),(3,11),(1,76);

-- Ejercicio 9 
insert into proveedor(cod_prov, nombre) values (33, "Martin Gomez");
insert into provisto_por(cod_mat, cod_prov) values (1,33),(2,33),(3,33);
*/

-- Ejercicio 11.
insert into proveedor(cod_prov,nombre) values 
(79, "ABCedario"),(80,"abc");

-- Ejercicio 13. 
INSERT INTO contiene(nro, cod_art) VALUES (1,14);
SELECT * FROM CONTIENE;
SELECT * FROM ALMACEN;
SELECT * FROM ARTICULO;

select * from material;
select * from proveedor;
select * from ciudad;
select * from provisto_por;
select * from articulo;
