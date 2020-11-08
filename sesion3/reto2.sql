USE tienda;
SHOW TABLES;
SELECT * FROM empleado;
SELECT * FROM venta;
SELECT * FROM articulo;

-- ¿Cuál es el nombre de los empleados que realizaron cada venta?
SELECT clave, nombre, apellido_paterno, apellido_materno FROM empleado AS e JOIN venta AS v ON e.id_empleado = v.id_empleado ORDER BY clave;

-- ¿Cuál es el nombre de los artículos que se han vendido?
SELECT clave, nombre FROM articulo AS a JOIN venta AS v ON a.id_articulo = v.id_articulo ORDER BY clave;

-- ¿Cuál es el total de cada venta?
SELECT clave, round(sum(precio), 2) AS precio_total FROM venta AS v JOIN articulo AS a ON v.id_articulo = a.id_articulo GROUP BY clave ORDER BY clave;



