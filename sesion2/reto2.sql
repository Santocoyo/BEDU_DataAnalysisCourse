USE tiendas;
SHOW TABLES;
DESCRIBE puesto;
SELECT avg(salario) AS promedio FROM puesto;
SELECT count(*) AS "numero de pastas" FROM articulo WHERE nombre LIKE "%pasta%";
SELECT min(salario) AS "salaio minimo", max(salario) AS "salario maximo" FROM puesto;
SELECT sum(salario) FROM puesto WHERE id_puesto>995;