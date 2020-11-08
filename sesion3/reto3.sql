USE tienda;
SHOW TABLES;
SELECT * FROM venta;
SELECT * FROM empleado;
SELECT * FROM puesto;
SELECT * FROM articulo;

-- Obtener el puesto de un empleado.
CREATE VIEW puesto_empleado127 AS (
	SELECT concat(e.nombre," ",e.apellido_paterno, " ", e.apellido_materno) AS nombre_completo, p.nombre AS puesto FROM empleado AS e JOIN puesto AS p USING(id_puesto)
);
SELECT * FROM puesto_empleado127;

-- Saber qué artículos ha vendido cada empleado.
CREATE VIEW empleado_articulo127 AS(
SELECT v.clave, concat(e.nombre," ",e.apellido_paterno," ",e.apellido_materno) AS nombre_completo, a.nombre AS articulo FROM venta AS v JOIN empleado AS e ON v.id_empleado=e.id_empleado JOIN articulo AS a ON a.id_articulo=v.id_articulo ORDER BY v.clave
);

SELECT * FROM empleado_articulo127;

-- Saber qué puesto ha tenido más ventas
CREATE VIEW puesto_venta127 AS(
SELECT p.nombre, count(*) AS numero_ventas FROM venta AS v JOIN empleado AS e ON v.id_empleado=e.id_empleado JOIN puesto AS p ON p.id_puesto=e.id_puesto GROUP BY p.nombre ORDER BY numero_ventas DESC);

SELECT * FROM puesto_venta127;