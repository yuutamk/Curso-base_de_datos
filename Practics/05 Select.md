#### 1. Acceder a phpMyAdmin
1. **Abre phpMyAdmin** en tu navegador (`http://localhost/phpmyadmin`).

#### 2. Crear una Nueva Base de Datos
2. **Haz clic en la pestaña "Bases de datos"** en la parte superior de la pantalla.
3. **Introduce un nombre para tu base de datos** (por ejemplo, `mi_base_de_datos`).
4. **Selecciona el cotejamiento** (por ejemplo, `utf8_general_ci`).
5. **Haz clic en "Crear"**.

#### 3. Crear una Nueva Tabla
6. **Selecciona la base de datos** que acabas de crear desde el panel de la izquierda.
7. **Haz clic en la pestaña "SQL"** en la parte superior de la pantalla.

#### 4. Escribir el Comando SQL para Crear la Tabla "cursos"
8. **Introduce el siguiente código SQL** en el campo de texto:

```sql
CREATE TABLE cursos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    profe VARCHAR(50),
    n_calificaciones INT
);
```

9. **Haz clic en "Continuar"** o "Ejecutar" para crear la tabla.

#### 5. Insertar Datos en la Tabla "cursos"
10. **Haz clic nuevamente en la pestaña "SQL"** y luego **introduce el siguiente código SQL** para insertar los datos:

```sql
INSERT INTO cursos (nombre, profe, n_calificaciones) VALUES
('Fundamentos de Bases de Datos', 'Israel', 580),
('MySQL y MariaDB', 'Carlos', 180),
('PostgreSQL', 'Oswaldo', 150);
```

11. **Haz clic en "Continuar"** o "Ejecutar" para insertar los datos.



## Playground: SELECT en SQL

Debes imprimir los siguientes 3 bloques de información con el contenido de la tabla cursos:

- Todas las columnas de todos los cursos en el orden por defecto de la base de datos.
- La cantidad total de cursos con el nombre cantidad.
- Las columnas ``nombre``, ``profe`` y ``n_calificaciones`` (es decir, exluyendo la columna id) de todos los cursos renombradas en inglés (name, teacher y n_reviews).

<details>
  <summary>SELECT</summary>

#### 1. Todas las Columnas de Todos los Cursos
```sql
SELECT * FROM cursos;
```

#### 2. La Cantidad Total de Cursos con el Nombre "cantidad"
```sql
SELECT COUNT(*) AS cantidad FROM cursos;
```

#### 3. Las Columnas "nombre", "profe" y "n_calificaciones" Renombradas en Inglés
```sql
SELECT nombre AS name, profe AS teacher, n_calificaciones AS n_reviews FROM cursos;
```
</details>



