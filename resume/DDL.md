## DDL: Data Definition Language (Lenguaje de Definición de Datos)

Imagina que estás construyendo una ciudad desde cero. Lo primero que necesitas es un plano detallado que defina dónde estarán los edificios, las calles, los parques, etc. En el mundo de las bases de datos, eso es exactamente lo que hace el DDL.

### Principales comandos DDL:
- **CREATE:** Este comando crea nuevas bases de datos, tablas, índices, vistas y otros objetos dentro de la base de datos. Por ejemplo, `CREATE TABLE empleados (id INT, nombre VARCHAR(50));` crea una nueva tabla llamada "empleados".
- **ALTER:** Modifica la estructura de una base de datos existente, como agregar o eliminar columnas. Ejemplo: `ALTER TABLE empleados ADD COLUMN salario DECIMAL(10, 2);`.
- **DROP:** Elimina objetos de la base de datos como tablas, vistas o índices. Ejemplo: `DROP TABLE empleados;`.
- **TRUNCATE:** Elimina todos los registros de una tabla, pero conserva su estructura. Ejemplo: `TRUNCATE TABLE empleados;`.


