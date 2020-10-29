USE tiendas;
SHOW TABLES;
DESCRIBE puesto;
SELECT avg(salario) AS promedio FROM puesto;
SELECT count(*) AS "numero de pastas" FROM articulo WHERE nombre LIKE "%pasta%";
SELECT min(salario) AS "salaio minimo", max(salario) AS "salario maximo" FROM puesto;
SELECT sum(salario) AS sume_mejores_salarios FROM puesto WHERE id_puesto>((SELECT max(id_puesto) FROM puesto) - 5);
