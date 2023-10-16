use 11selectsimple;

create table if not exists area(
	cod_area varchar(10) primary key,
    descripcion varchar(30)
);

create table if not exists especialidad(
	cod_esp int primary key,
    descripcion varchar(50)
);

create table if not exists empleado(
	nro int primary key,
    nombre varchar(30),
    cod_esp int, 
    nro_jefe int, 
    sueldo 	decimal, 
    f_ingreso date,
    
    foreign key (cod_esp)  references especialidad(cod_esp),
    foreign key (nro_jefe) references empleado(nro)
    
);

create table if not exists trabaja(
	nro_emp int,
    cod_area varchar(20),
    
    foreign key (nro_emp) references empleado(nro),
    foreign key (cod_area) references area(cod_area)
);

