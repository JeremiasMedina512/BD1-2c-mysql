create table if not exists cliente(
	cliente_id int primary key,
    nombre varchar(20)
);

create table if not exists pedido(
	pedido_id int primary key,
    cliente_id int,
    
    foreign key (cliente_id) references cliente(cliente_id)
);

create table if not exists producto(
	producto_id int primary key,
    nombre varchar(20),
    precio int
);

create table if not exists detalles_pedido(
	detalle_id int primary key,
    cantidad int,
    
    pedido_id int,
    producto_id int,
    
    foreign key (pedido_id) references pedido(pedido_id),
    foreign key (producto_id) references producto(producto_id)
);

select * from cliente, pedido, producto, detalles_pedido;
desc cliente;
desc pedido;
desc producto;
desc detalles_pedido;

INSERT INTO cliente (cliente_id, nombre) VALUES
(1, 'Juan Pérez'),
(2, 'María López'),
(3, 'Carlos Sánchez'),
(4, 'Ana Martínez'),
(5, 'Roberto Gómez');

INSERT INTO pedido (pedido_id, cliente_id) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 3),
(5, 4),
(6, 1),
(7, 2);

INSERT INTO producto (producto_id, nombre, precio) VALUES
(101, 'Producto A', 10.00),
(102, 'Producto B', 15.00),
(103, 'Producto C', 20.00),
(104, 'Producto D', 25.00),
(105, 'Producto E', 30.00);

INSERT INTO detalles_pedido (detalle_id, pedido_id, producto_id, cantidad) VALUES
(1, 1, 101, 2),
(2, 1, 103, 1),
(3, 2, 102, 3),
(4, 3, 101, 1),
(5, 3, 105, 2),
(6, 4, 104, 1),
(7, 4, 102, 2),
(8, 5, 105, 4),
(9, 6, 101, 3),
(10, 7, 103, 2);
