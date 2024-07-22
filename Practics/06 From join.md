
#### 1. Acceder a phpMyAdmin
1. **Abre phpMyAdmin** en tu navegador (`http://localhost/phpmyadmin`).

#### 2. Crear una Nueva Base de Datos
2. **Haz clic en la pestaña "Bases de datos"** en la parte superior de la pantalla.
3. **Introduce un nombre para tu base de datos** (por ejemplo, `mi_base_de_datos`).
4. **Selecciona el cotejamiento** (por ejemplo, `utf8_general_ci`).
5. **Haz clic en "Crear"**.

#### 3. Crear la Tabla "courses"
6. **Selecciona la base de datos** que acabas de crear desde el panel de la izquierda.
7. **Haz clic en la pestaña "SQL"** en la parte superior de la pantalla.
8. **Introduce el siguiente código SQL** en el campo de texto para crear la tabla "courses":

```sql
CREATE TABLE courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(id)
);
```

9. **Haz clic en "Continuar"** o "Ejecutar" para crear la tabla.

#### 4. Crear la Tabla "teachers"
10. **Haz clic nuevamente en la pestaña "SQL"** y luego **introduce el siguiente código SQL** para crear la tabla "teachers":

```sql
CREATE TABLE teachers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    course_id INT,
    FOREIGN KEY (course_id) REFERENCES courses(id)
);
```

11. **Haz clic en "Continuar"** o "Ejecutar" para crear la tabla.

#### 5. Insertar Datos en la Tabla "courses"
12. **Haz clic nuevamente en la pestaña "SQL"** y luego **introduce el siguiente código SQL** para insertar los datos en la tabla "courses":

```sql
INSERT INTO courses (name) VALUES
('Fundamentos de Bases de Datos'),
('Curso de MySQL y MariaDB'),
('Curso de Data Science'),
('Curso de Firebase'),
('Curso de Python'),
('Curso de React.js');
```

13. **Haz clic en "Continuar"** o "Ejecutar" para insertar los datos.

#### 6. Insertar Datos en la Tabla "teachers"
14. **Haz clic nuevamente en la pestaña "SQL"** y luego **introduce el siguiente código SQL** para insertar los datos en la tabla "teachers":

```sql
INSERT INTO teachers (name) VALUES
('Israel'),
('Carlos'),
('Silvia'),
('Leomaris'),
('Nico'),
('Juan');
```

15. **Haz clic en "Continuar"** o "Ejecutar" para insertar los datos.

## Playground: FROM y LEFT JOIN en SQL

Para resolver este desafío debes escribir una consulta a la base de datos para encontrar a todos los cursos con profe asociado.

Información de las tablas:

- Las y los profes se encuentran en la tabla teachers.
- Los cursos se encuentran en la tabla courses.
- Cada curso y profe tiene su llave primaria en la columna id.
- Cada profe puede tener la llave foránea de su curso asociado en la columna course_id.
- Cada curso puede tener la llave foránea de su profe asociado en la columna teacher_id.

Propiedades a imprimir en la consulta:

- id (con el id del curso)
- name (con el nombre del curso)
- teacher_id (con el id del profe)
- teacher_name (con el nombre del profe).

        💡 Anteriormente aprendiste a usar la instrucción AS para renombrar columnas en tus queries. Para renombrar columnas en consultas entre varias tablas puedes usar nombre_de_tabla.nombre_de_propidad (e.j. SELECT courses.id AS id FROM ...).

Validaciones para el query:

- Selecciona únicamente los cursos que tengan profe asociado en la columna teacher_id.
- No tengas en cuenta si el profesor tiene curso asociado, únicamente si el curso tiene profesor asociado.

<details>
  <summary>FROM JOIN</summary>

### Consulta SQL para Encontrar Todos los Cursos con Profe Asociado

1. **Para encontrar todos los cursos con profesor asociado, usa la siguiente consulta SQL:**


```sql
SELECT
  courses.id AS id,
  courses.name AS name,
  courses.teacher_id AS teacher_id,
  teachers.name AS teacher_name
FROM courses
LEFT JOIN teachers ON courses.teacher_id = teachers.id
WHERE courses.teacher_id IS NOT NULL;
```

  </details>

