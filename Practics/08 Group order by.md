# GROUP BY, ORDER BY

#### 1. Acceder a phpMyAdmin
1. **Abre phpMyAdmin** en tu navegador (`http://localhost/phpmyadmin`).

#### 2. Crear una Nueva Base de Datos
2. **Haz clic en la pestaña "Bases de datos"** en la parte superior de la pantalla.
3. **Introduce un nombre para tu base de datos** (por ejemplo, `mi_base_de_datos`).
4. **Selecciona el cotejamiento** (por ejemplo, `utf8_general_ci`).
5. **Haz clic en "Crear"**.

#### 3. Crear la Tabla "teachers"
6. **Selecciona la base de datos** que acabas de crear desde el panel de la izquierda.
7. **Haz clic en la pestaña "SQL"** en la parte superior de la pantalla.
8. **Introduce el siguiente código SQL** en el campo de texto para crear la tabla "teachers":

```sql
CREATE TABLE teachers (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);
```

9. **Haz clic en "Continuar"** o "Ejecutar" para crear la tabla.

#### 4. Crear la Tabla "courses"
10. **Haz clic nuevamente en la pestaña "SQL"** y luego **introduce el siguiente código SQL** para crear la tabla "courses":

```sql
CREATE TABLE courses (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    n_reviews INT,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(id)
);
```

11. **Haz clic en "Continuar"** o "Ejecutar" para crear la tabla.

#### 5. Insertar Datos en la Tabla "teachers"
12. **Haz clic nuevamente en la pestaña "SQL"** y luego **introduce el siguiente código SQL** para insertar los datos en la tabla "teachers":

```sql
INSERT INTO teachers (id, name) VALUES
(1, 'Israel'),
(8, 'Profesor 8'),
(16, 'Profesor 16');
```

13. **Haz clic en "Continuar"** o "Ejecutar" para insertar los datos.

#### 6. Insertar Datos en la Tabla "courses"
14. **Haz clic nuevamente en la pestaña "SQL"** y luego **introduce el siguiente código SQL** para insertar los datos en la tabla "courses":

```sql
INSERT INTO courses (id, name, n_reviews, teacher_id) VALUES
(100, 'Fundamentos de Bases de Datos', 1400, 1),
(200, 'Curso de MySQL y MariaDB', 400, NULL),
(260, 'Curso de Data Science', 320, 8),
(350, 'Curso de Firebase', 150, 1),
(749, 'Curso de Python', 2300, 8),
(750, 'Curso de React.js', 1500, 16);
```

15. **Haz clic en "Continuar"** o "Ejecutar" para insertar los datos.


## Playground: Agrupamiento y Ordenamiento de Datos

Para resolver este desafío debes contar la cantidad de reviews de todos los cursos de un mismo profesor y ordenarlos de forma descendente.

- Vas a recibir 2 tablas: courses (con los campos id, name, n_reviews y teacher_id) y teacher (con los campos id y name).
- Un mismo profesor puede estar asignado a múltiples cursos.
- Por cada profesor con cursos asociados debes sumar la cantidad total de reviews de todos sus cursos.
- Debes imprimir el nombre del profesor en una columna teacher y la suma total de sus reviews en una columna total_reviews.
- Finalmente debes ordenar la agrupación de profesores y su cantidad total de reviews usando su propiedad total_reviews de forma descendente.
- No debes contar profesores sin cursos asociados ni cursos sin al menos 1 review.

Tabla courses:

|id	|name	|n_reviews	|teacher_id|
|---|-------|-----------|----------|
|1	|Curso de SQL	|100	|1|
|...	|...	|...	|...|

Tabla teachers:

|id	|name|
|--|-----|
|1	|Israel|
|...	|...|

Resultado esperado:

|teacher	|total_reviews|
|-----------|-------------|
|Israel	|100|
|...	|...|


<details>
  <summary>GROUP BY, ORDER BY</summary>

### Consulta SQL para Sumar Reviews de Todos los Cursos de un Mismo Profesor y Ordenarlos de Forma Descendente

#### 7. Ejecutar la Consulta SQL
16. **Haz clic nuevamente en la pestaña "SQL"** y luego **introduce el siguiente código SQL** para realizar la consulta requerida:

```sql
SELECT 
    t.name AS teacher, 
    SUM(c.n_reviews) AS total_reviews
FROM 
    courses c
JOIN 
    teachers t ON c.teacher_id = t.id
WHERE 
    c.n_reviews > 0
GROUP BY 
    t.name
ORDER BY 
    total_reviews DESC;
```

  </details>


