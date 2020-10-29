USE tienda; -- Utilizando la base de datos de tienda 

SELECT nombre FROM empleado WHERE id_puesto = 4; -- Nombre de los empleados con el puesto 4;
SELECT nombre FROM puesto WHERE salario > 10000; -- puestos con salario mayor a $10,000
SELECT nombre FROM articulo WHERE precio > 1000 AND iva > 100; -- Artículos con precio mayor a $1,000 e iva mayor a 100
SELECT id_venta FROM venta WHERE id_articulo IN (135, 963) AND id_empleado IN(835, 369); -- ventas que incluyen artículos 135 o 963 hechas por empleados 835 o 369

