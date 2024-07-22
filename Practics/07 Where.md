## WHERE

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
    id INT PRIMARY KEY,
    name VARCHAR(100),
    n_reviews INT
);
```

9. **Haz clic en "Continuar"** o "Ejecutar" para crear la tabla.

#### 4. Insertar Datos en la Tabla "courses"
10. **Haz clic nuevamente en la pestaña "SQL"** y luego **introduce el siguiente código SQL** para insertar los datos en la tabla "courses":

```sql
INSERT INTO courses (id, name, n_reviews) VALUES
(100, 'Fundamentos de SQL y Bases de Datos', 11),
(200, 'Curso de MySQL y MariaDB', 344),
(260, 'Curso de Data Science', 88),
(350, 'Curso de Firebase', 0),
(749, 'Curso de Python', 300),
(750, 'Curso de React.js', 0);
```

11. **Haz clic en "Continuar"** o "Ejecutar" para insertar los datos.

## Playground: Filtrando Datos con WHEREa

Para resolver este ejercicio debes crear 3 sentencias SELECT:

- La primera seleccionando todos los cursos de la tabla courses con al menos 1 review (en la columna n_reviews).
- La segunda seleccionando todos los cursos de la tabla courses con entre 1 y 100 reviews (también en la columna n_reviews).
- La tercera seleccionando la propiedad name de todos los cursos de la tabla courses con la palabra "SQL" en alguna parte de su nombre.

Tabla inicial:

|id	|name	|n_reviews|
|---|-------|---------|
|1	|Curso de SQL	|0|
|2	|Curso de R	|10|
|...	|...	|...|

Selección de los cursos con al menos 1 review:

|id	|name	|n_reviews|
|---|-------|---------|
|2	|Curso de R	|10|
|...	|...	|...|

Selección de los cursos con entre 1 y 100 reviews:

|id	|name	|n_reviews|
|----|------|----------|
|2	|Curso de R	|10|
|...	|...	|...|

Selección de los cursos con "SQL" en alguna parte de su nombre:

|id	|name	|n_reviews|
|---|-------|---------|
|2	|Curso de SQL	|0|
|...	|...	|...|


<details>
  <summary>WHERE</summary>

### Consultas SQL para Cumplir con los Criterios Especificados

#### 1. Seleccionar Todos los Cursos con al Menos 1 Review
```sql
SELECT * FROM courses WHERE n_reviews >= 1;
```

#### 2. Seleccionar Todos los Cursos con Entre 1 y 100 Reviews
```sql
SELECT * FROM courses WHERE n_reviews BETWEEN 1 AND 100;
```

#### 3. Seleccionar la Propiedad "name" de Todos los Cursos con "SQL" en Alguna Parte de su Nombre
```sql
SELECT name FROM courses WHERE name LIKE '%SQL%';
```



  </details>





