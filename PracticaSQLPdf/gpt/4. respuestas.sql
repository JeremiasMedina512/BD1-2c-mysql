/*
Por supuesto, a continuación te proporcionaré las soluciones para cada uno de los puntos de los ejercicios de 
consultas SQL:

1. **Listar todos los pedidos realizados por un cliente específico (por nombre de cliente)**:

   ```sql
   SELECT p.pedido_id, c.nombre AS nombre_cliente, pr.nombre AS nombre_producto
   FROM pedidos AS p
   JOIN clientes AS c ON p.cliente_id = c.cliente_id
   JOIN detalles_pedidos AS dp ON p.pedido_id = dp.pedido_id
   JOIN productos AS pr ON dp.producto_id = pr.producto_id
   WHERE c.nombre = 'Nombre del Cliente';
   ```

2. **Encontrar el cliente que ha gastado más en compras y el total gastado**:

   ```sql
   SELECT c.nombre AS nombre_cliente, SUM(pr.precio * dp.cantidad) AS total_gastado
   FROM clientes AS c
   JOIN pedidos AS p ON c.cliente_id = p.cliente_id
   JOIN detalles_pedidos AS dp ON p.pedido_id = dp.pedido_id
   JOIN productos AS pr ON dp.producto_id = pr.producto_id
   GROUP BY c.cliente_id
   ORDER BY total_gastado DESC
   LIMIT 1;
   ```

3. **Listar los productos en orden alfabético junto con su precio**:

   ```sql
   SELECT nombre AS nombre_producto, precio
   FROM productos
   ORDER BY nombre;
   ```

4. **Calcular el total de ventas para cada producto y mostrar el nombre del producto y la cantidad vendida**:

   ```sql
   SELECT pr.nombre AS nombre_producto, SUM(dp.cantidad) AS cantidad_vendida
   FROM detalles_pedidos AS dp
   JOIN productos AS pr ON dp.producto_id = pr.producto_id
   GROUP BY pr.producto_id;
   ```

5. **Encontrar los detalles de los productos comprados en un pedido específico (por número de pedido)**:

   ```sql
   SELECT p.pedido_id, pr.nombre AS nombre_producto, dp.cantidad
   FROM pedidos AS p
   JOIN detalles_pedidos AS dp ON p.pedido_id = dp.pedido_id
   JOIN productos AS pr ON dp.producto_id = pr.producto_id
   WHERE p.pedido_id = NúmeroDelPedido;
   ```

6. **Listar los clientes que han realizado pedidos en una fecha específica y mostrar el nombre del cliente y 
la fecha del pedido**:

   ```sql
   SELECT c.nombre AS nombre_cliente, p.fecha_pedido
   FROM clientes AS c
   JOIN pedidos AS p ON c.cliente_id = p.cliente_id
   WHERE p.fecha_pedido = 'FechaEspecífica';
   ```

7. **Calcular el promedio de gasto por cliente y mostrar el nombre del cliente y el promedio**:

   ```sql
   SELECT c.nombre AS nombre_cliente, AVG(pr.precio * dp.cantidad) AS promedio_gasto
   FROM clientes AS c
   JOIN pedidos AS p ON c.cliente_id = p.cliente_id
   JOIN detalles_pedidos AS dp ON p.pedido_id = dp.pedido_id
   JOIN productos AS pr ON dp.producto_id = pr.producto_id
   GROUP BY c.cliente_id;
   ```

8. **Encontrar los productos que han sido comprados al menos una vez y los clientes que los compraron**:

   ```sql
   SELECT pr.nombre AS nombre_producto, c.nombre AS nombre_cliente
   FROM productos AS pr
   JOIN detalles_pedidos AS dp ON pr.producto_id = dp.producto_id
   JOIN pedidos AS p ON dp.pedido_id = p.pedido_id
   JOIN clientes AS c ON p.cliente_id = c.cliente_id;
   ```

9. **Listar los clientes que han realizado pedidos por un monto total superior a un valor específico y mostrar 
el nombre del cliente y el monto total**:

   ```sql
   SELECT c.nombre AS nombre_cliente, SUM(pr.precio * dp.cantidad) AS monto_total
   FROM clientes AS c
   JOIN pedidos AS p ON c.cliente_id = p.cliente_id
   JOIN detalles_pedidos AS dp ON p.pedido_id = dp.pedido_id
   JOIN productos AS pr ON dp.producto_id = pr.producto_id
   GROUP BY c.cliente_id
   HAVING monto_total > ValorEspecífico;
   ```

10. **Calcular el precio total de un pedido específico (por número de pedido) y mostrar el número de pedido y 
el precio total**:

    ```sql
    SELECT p.pedido_id, SUM(pr.precio * dp.cantidad) AS precio_total
    FROM pedidos AS p
    JOIN detalles_pedidos AS dp ON p.pedido_id = dp.pedido_id
    JOIN productos AS pr ON dp.producto_id = pr.producto_id
    WHERE p.pedido_id = NúmeroDelPedido;
    ```

Reemplaza "NúmeroDelPedido", "Nombre del Cliente", "FechaEspecífica" y "ValorEspecífico" con los valores específicos
 que desees para cada consulta. Estas son las soluciones a los ejercicios planteados.
*/