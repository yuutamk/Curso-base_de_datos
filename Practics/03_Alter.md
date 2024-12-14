Crear tabla en tu base de datos:

```sql
-- Crear la tabla "asignaturas"

CREATE TABLE asignaturas (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Llave primaria
    titulo VARCHAR(255) NOT NULL,      -- Título de la asignatura
    hora_de_salida DATETIME            -- Hora de salida inicial
);
```

En este desafío debes crear una tabla y alterar otra ya existente.

* ALTER

La tabla asignaturas tiene las columnas **id** (llave primaria), **titulo** y **hora_de_salida**. Debes eliminar la columna **hora_de_salida** y añadir una nueva llamada **hora_de_entrega** de tipo fecha y hora y sin permitir valores nulos.

Antes:

|id	|titulo	|hora_de_salida|
|---|-------|--------------|
|...|...	|...|


Después:

|id	|titulo	|hora_de_entrega|
|---|-------|---------------|
|...|...	|...|


* CREATE

Crea una tabla estudiantes con las columnas **id** (llave primaria de tipo entero), **nombre** (de tipo VARCHAR con máximo 255 carácteres) y **asignatura_id** (llave foranea de tipo entero que haga referencia a la columna id de la **tabla asignaturas**).


|id	|nombre	|asignatura_id|
|---|-------|--------------|
|...|...	|...|

<details>


```sql
-- ALTER: Modificar la tabla "asignaturas"

-- Eliminar la columna "hora_de_salida"
ALTER TABLE asignaturas
DROP COLUMN hora_de_salida;

-- Añadir la nueva columna "hora_de_entrega" de tipo DATETIME y sin permitir valores nulos
ALTER TABLE asignaturas
ADD COLUMN hora_de_entrega DATETIME NOT NULL;

-- CREATE: Crear la tabla "estudiantes"

CREATE TABLE estudiantes (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Llave primaria
    nombre VARCHAR(255) NOT NULL,      -- Columna "nombre" con máximo 255 caracteres
    asignatura_id INT,                 -- Columna "asignatura_id"
    FOREIGN KEY (asignatura_id)        -- Llave foránea que referencia a "id" en la tabla "asignaturas"
        REFERENCES asignaturas(id)
        ON DELETE CASCADE              -- Elimina los estudiantes asociados si se borra la asignatura
        ON UPDATE CASCADE              -- Actualiza la referencia si el id de asignaturas cambia
);

```
</details>

