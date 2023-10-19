create database if not exists PracticaSqlPdfEjercicio1;

create table if not exists almacen( --
	nro int primary key,
    nombre varchar(50),
    responsable varchar(50)
);

create table if not exists articulo( --
	cod_art int primary key,
    descripcion varchar(50),
    precio double
);

create table if not exists material( --
	cod_mat int primary key,
    descripcion varchar(50)
);

create table if not exists proveedor( --
	cod_prov int primary key,
    nombre varchar(50),
    domicilio varchar(30),
    cod_ciu int,
    fecha_alta date,
    
    FOREIGN KEY (cod_ciu) REFERENCES ciudad(cod_ciu)
);

create table if not exists ciudad( --
	cod_ciu int primary key,
    nombre varchar(50)
);

create table if not exists contiene( --
	nro int,
    cod_art int,
    
    PRIMARY KEY (nro,cod_art),
    FOREIGN KEY (nro) REFERENCES almacen(nro),
    FOREIGN KEY (cod_art) REFERENCES Articulo(cod_art) 
);

create table if not exists compuesto_por( --
	cod_art int, 
    cod_mat int,
    
    PRIMARY KEY (cod_art, cod_mat),
    FOREIGN KEY (cod_art) REFERENCES articulo(cod_art),
    FOREIGN KEY (cod_mat) REFERENCES material(cod_mat)
);

create table if not exists provisto_por( --
	cod_mat int,
    cod_prov int,
    
    PRIMARY KEY(cod_mat, cod_prov),
    FOREIGN KEY (cod_mat) REFERENCES material(cod_mat),
    FOREIGN KEY (cod_prov) REFERENCES proveedor(cod_prov)
);

show columns from articulo;
desc articulo;



-- articulo,materia,proveedor,ciudad,contiene,compuesto_por,provisto_por