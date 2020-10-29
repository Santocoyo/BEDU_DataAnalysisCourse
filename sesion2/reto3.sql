USE tienda;
SHOW TABLES;
SELECT * FROM venta;
SELECT nombre, count(*) FROM puesto GROUP BY nombre;
SELECT nombre, sum(salario) FROM puesto GROUP BY nombre;
SELECT id_venta, count(*) AS ventas FROM venta GROUP BY id_empleado;
SELECT id_venta, count(*) AS ventas FROM venta GROUP BY id_articulo;
