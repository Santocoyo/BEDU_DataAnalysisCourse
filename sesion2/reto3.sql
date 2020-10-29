USE tienda;
SELECT nombre AS "puestos con mejores salarios", salario FROM puesto ORDER BY salario DESC LIMIT 5;