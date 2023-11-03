

-- 17-2 . Funciones de agregacion
SELECT COUNT(precio) 
FROM articulo 
WHERE descripcion IS NULL;

SELECT COUNT(*) 
FROM articulo;

SELECT COUNT(precio)
FROM articulo;

SELECT AVG(precio) 
FROM articulo;

SELECT AVG(precio)
FROM articulo
WHERE descripcion IS NOT NULL;

SELECT MAX(precio) 
FROM articulo;

SELECT MIN(precio) 
FROM articulo;

SELECT SUM(precio)
FROM articulo;

-- Ejercicio 3.

SELECT COUNT(*), MAX(precio)
FROM articulo;