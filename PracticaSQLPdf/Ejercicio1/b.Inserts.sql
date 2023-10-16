-- Inserts 
desc articulo;
-- Ejercicio 1.
insert into articulo(cod_art, precio) values (1,50),(2,150),(3,500),(4,1000),(5,2000);
select * from articulo;

-- Ejercicio 2. 
insert into proveedor(cod_prov) values (1),(2),(3);

-- Ejercicio 3.
insert into material(cod_mat,descripcion) values (1,"Plastico"),(2,"Goma"), (3,"Vidrio");

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