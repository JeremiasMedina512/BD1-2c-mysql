-- 3. **Listar los productos en orden alfabético junto con su precio**.
SELECT Producto.nombre from Producto
order by  Producto.nombre;
SELECT Producto.nombre from Producto
order by  Producto.nombre desc;

-- 5. **Encontrar los detalles de los productos comprados en un pedido específico (por número de pedido)**.
SELECT * from detalles_pedido as dp
JOIN p as pedido ON dp.pedido_dp = dp.detalle_id
JOIN Producto as pr ON pr.producto_id = dp.detalle_id
WHERE p.pedido_id = 1;
