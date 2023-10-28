-- 1. Encuentra una lista de todos los pedidos realizados por clientes junto con los detalles
-- de los productos incluidos en cada pedido.
SELECT c.nombre , p.pedido_id, pr.nombre
FROM detalles_pedido as dp JOIN pedido as p ON dp.pedido_id = p.pedido_id --
JOIN producto as pr ON dp.producto_id = pr.producto_id --
JOIN cliente as c ON c.cliente_id = p.pedido_id; --

-- 2. Listar todos los productos junto con los clientes que los han comprado:
SELECT pr.nombre as nombre_producto, c.nombre as nombre_cliente
FROM Cliente as c JOIN pedido as p ON c.cliente_id = p.cliente_id -- / --
JOIN detalles_pedido as dp ON dp.pedido_id = p.pedido_id -- / --
JOIN Producto as pr ON dp.producto_id = pr.producto_id; --  --
SELECT * from producto, cliente, detalles_pedido;

-- 3. Encontrar clientes que no han realizado pedidos (usando LEFT JOIN)**:
SELECT c.nombre AS nombre_cliente
FROM cliente AS c
LEFT JOIN pedido AS p ON c.cliente_id = p.cliente_id
WHERE p.pedido_id IS NULL;

-- 5. Encontrar productos que nunca se han vendido (usando LEFT JOIN)**:
SELECT pr.nombre FROM Producto as pr
LEFT JOIN detalles_pedido as dp ON dp.producto_id = pr.producto_id
WHERE dp.pedido_id IS NULL;


