

Insertar un registro en la tabla 'people'

```sql

INSERT INTO people (
        last_name,
        first_name,
        address,
        city
    )
VALUES (
        'Hernández',
        'Laura',
        'Calle 21',
        'Monterrey'
    );
```
 Actualizar el apellido y la ciudad de un registro específico
```sql

UPDATE people
SET last_name = 'Chávez', city = 'Mérida'
WHERE person_id = 1;

```
Actualizar el primer nombre donde la ciudad sea 'Mérida'
```sql
UPDATE people
SET first_name = 'Juan'
WHERE city = 'Mérida';

```
-- Actualizar todos los primeros nombres en la tabla 'people'
```sql


UPDATE people
SET first_name = 'Juan';
```
 Eliminar un registro específico por ID
```sql

DELETE FROM people
WHERE person_id = 1;
```
Eliminar todos los registros de la tabla 'people'
```sql
DELETE FROM people;
```
Seleccionar nombres y apellidos de todos los registros
```sql
SELECT first_name, last_name
FROM people;
```

Estos comandos te permitirán practicar insertar datos, actualizarlos, eliminarlos y consultarlos en la tabla 'people' que has creado en tu base de datos 'test_db'. Asegúrate de ejecutar cada comando en el orden adecuado según tus necesidades.