## Prueba Final

#### 1. Acceder a phpMyAdmin
1. **Abre phpMyAdmin** en tu navegador (`http://localhost/phpmyadmin`).

#### 2. Crear una Nueva Base de Datos
2. **Haz clic en la pestaña "Bases de datos"** en la parte superior de la pantalla.
3. **Introduce un nombre para tu base de datos** (por ejemplo, `blog_db`).
4. **Selecciona el cotejamiento** (por ejemplo, `utf8_general_ci`).
5. **Haz clic en "Crear"**.

#### 3. Crear la Tabla "usuarios"
6. **Selecciona la base de datos** que acabas de crear desde el panel de la izquierda.
7. **Haz clic en la pestaña "SQL"** en la parte superior de la pantalla.
8. **Introduce el siguiente código SQL** en el campo de texto para crear la tabla "usuarios":

```sql
CREATE TABLE usuarios (
    id INT PRIMARY KEY,
    login VARCHAR(50),
    nickname VARCHAR(50),
    email VARCHAR(100)
);
```

9. **Haz clic en "Continuar"** o "Ejecutar" para crear la tabla.

#### 4. Insertar Datos en la Tabla "usuarios"
10. **Haz clic nuevamente en la pestaña "SQL"** y luego **introduce el siguiente código SQL** para insertar los datos en la tabla "usuarios":

```sql
INSERT INTO usuarios (id, login, nickname, email) VALUES
(1, 'israel', 'Israel', 'israel@platziblog.com'),
(2, 'monica', 'Moni', 'monica@platziblog.com'),
(3, 'laura', 'Lau', 'laura@platziblog.com'),
(4, 'edgar', 'Ed', 'edgar@platziblog.com'),
(5, 'perezoso', 'Oso Perez', 'perezoso@platziblog.com');
```

11. **Haz clic en "Continuar"** o "Ejecutar" para insertar los datos.

#### 5. Crear la Tabla "categorias"
12. **Haz clic nuevamente en la pestaña "SQL"** y luego **introduce el siguiente código SQL** para crear la tabla "categorias":

```sql
CREATE TABLE categorias (
    id INT PRIMARY KEY,
    nombre_categoria VARCHAR(100)
);
```

13. **Haz clic en "Continuar"** o "Ejecutar" para crear la tabla.

#### 6. Insertar Datos en la Tabla "categorias"
14. **Haz clic nuevamente en la pestaña "SQL"** y luego **introduce el siguiente código SQL** para insertar los datos en la tabla "categorias":

```sql
INSERT INTO categorias (id, nombre_categoria) VALUES
(1, 'Ciencia'),
(2, 'Tecnología'),
(3, 'Deportes'),
(4, 'Espectáculos'),
(5, 'Economía');
```

15. **Haz clic en "Continuar"** o "Ejecutar" para insertar los datos.

#### 7. Crear la Tabla "etiquetas"
16. **Haz clic nuevamente en la pestaña "SQL"** y luego **introduce el siguiente código SQL** para crear la tabla "etiquetas":

```sql
CREATE TABLE etiquetas (
    id INT PRIMARY KEY,
    nombre_etiqueta VARCHAR(100)
);
```

17. **Haz clic en "Continuar"** o "Ejecutar" para crear la tabla.

#### 8. Insertar Datos en la Tabla "etiquetas"
18. **Haz clic nuevamente en la pestaña "SQL"** y luego **introduce el siguiente código SQL** para insertar los datos en la tabla "etiquetas":

```sql
INSERT INTO etiquetas (id, nombre_etiqueta) VALUES
(1, 'Robótica'),
(2, 'Computación'),
(3, 'Teléfonos Móviles'),
(4, 'Automovilismo'),
(5, 'Campeonatos'),
(6, 'Equipos'),
(7, 'Bolsa de valores'),
(8, 'Inversiones'),
(9, 'Brokers'),
(10, 'Celebridades'),
(11, 'Eventos'),
(12, 'Moda'),
(13, 'Avances'),
(14, 'Nobel'),
(15, 'Matemáticas'),
(16, 'Química'),
(17, 'Física'),
(18, 'Largo plazo'),
(19, 'Bienes Raíces'),
(20, 'Estilo');
```

19. **Haz clic en "Continuar"** o "Ejecutar" para insertar los datos.

#### 9. Crear la Tabla "posts"
20. **Haz clic nuevamente en la pestaña "SQL"** y luego **introduce el siguiente código SQL** para crear la tabla "posts":

```sql
CREATE TABLE posts (
    id INT PRIMARY KEY,
    titulo VARCHAR(255),
    fecha_publicacion DATETIME,
    contenido TEXT,
    estatus VARCHAR(50),
    usuario_id INT,
    categoria_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);
```

21. **Haz clic en "Continuar"** o "Ejecutar" para crear la tabla.

#### 10. Insertar Datos en la Tabla "posts"
22. **Haz clic nuevamente en la pestaña "SQL"** y luego **introduce el siguiente código SQL** para insertar los datos en la tabla "posts":

```sql
INSERT INTO posts (id, titulo, fecha_publicacion, contenido, estatus, usuario_id, categoria_id) VALUES
(43, 'Se presenta el nuevo teléfono móvil en evento', '2030-04-05 00:00:00', 'Publicación 43', 'activo', 1, 2),
(44, 'Tenemos un nuevo auto inteligente', '2025-05-04 00:00:00', 'Publicación 44', 'activo', 2, 2),
(45, 'Ganador del premio Nobel por trabajo en genética', '2023-12-22 00:00:00', 'Publicación 45', 'activo', 3, 1),
(46, 'Los mejores vestidos en la alfombra roja', '2021-12-22 00:00:00', 'Publicación 46', 'activo', 4, 4),
(47, 'Los paparatzi captan escándalo en cámara', '2025-01-09 00:00:00', 'Publicación 47', 'inactivo', 4, 4),
(48, 'Se mejora la conducción autónoma de vehículos', '2022-05-23 00:00:00', 'Publicación 48', 'activo', 1, 2),
(49, 'Se descubre nueva partícula del modelo estandar', '2023-01-10 00:00:00', 'Publicación 49', 'activo', 2, 1),
(50, 'Químicos descubren nanomaterial', '2026-06-04 00:00:00', 'Publicación 50', 'activo', 2, 1),
(51, 'La bolsa cae estrepitosamente', '2024-04-03 00:00:00', 'Publicación 51', 'activo', 2, 5),
(52, 'Bienes raices más baratos que nunca', '2025-04-11 00:00:00', 'Publicación 52', 'inactivo', 2, 5),
(53, 'Se fortalece el peso frente al dolar', '2021-10-09 00:00:00', 'Publicación 53', 'activo', 1, 5),
(54, 'Tenemos ganador de la formula e', '2022-11-11 00:00:00', 'Publicación 54', 'activo', 1, 3),
(55, 'Ganan partido frente a visitantes', '2023-12-10 00:00:00', 'Publicación 55', 'activo', 2, 3),
(56, 'Equipo veterano da un gran espectaculo', '2023-12-01 00:00:00', 'Publicación 56', 'inactivo', 2, 3),
(57, 'Escándalo con el boxeador del momento', '2025-03-05 00:00:00', 'Publicación 57', 'activo', 4, 4),
(58, 'Fuccia OS sacude al mundo', '2028-10-10 00:00:00', 'Publicación 58', 'activo', 1, 2),
(59, 'U.S. Robotics presenta hallazgo', '2029-01-10 00:00:00', 'Publicación 59', 'activo', 1, 2),
(60, 'Cierra campeonato mundial de football de manera impresionante', '2023-04-10 00:00:00', 'Publicación 60', 'activo', 2, 3),
(61, 'Escándalo en el mundo de la moda', '2022-04-11 00:00:00', 'Publicación 61', 'activo', 4, 4),
(62, 'Tenemos campeona del mundial de volleiball', '2024-09-09 00:00:00', 'Publicación

 62', 'inactivo', 2, 3),
(63, 'Se descubre la unión entre astrofísica y fisica cuántica', '2022-05-03 00:00:00', 'Publicación 63', 'inactivo', 3, 1);
```

23. **Haz clic en "Continuar"** o "Ejecutar" para insertar los datos.

#### 11. Crear la Tabla "post_etiqueta"
24. **Haz clic nuevamente en la pestaña "SQL"** y luego **introduce el siguiente código SQL** para crear la tabla "post_etiqueta":

```sql
CREATE TABLE post_etiqueta (
    id INT PRIMARY KEY,
    post_id INT,
    etiqueta_id INT,
    FOREIGN KEY (post_id) REFERENCES posts(id),
    FOREIGN KEY (etiqueta_id) REFERENCES etiquetas(id)
);
```

25. **Haz clic en "Continuar"** o "Ejecutar" para crear la tabla.

#### 12. Insertar Datos en la Tabla "post_etiqueta"
26. **Haz clic nuevamente en la pestaña "SQL"** y luego **introduce el siguiente código SQL** para insertar los datos en la tabla "post_etiqueta":

```sql
INSERT INTO post_etiqueta (id, post_id, etiqueta_id) VALUES
(1, 43, 3),
(2, 43, 11),
(3, 44, 2),
(4, 44, 4),
(5, 45, 14),
(6, 45, 13),
(7, 46, 10),
(8, 46, 11),
(9, 46, 12),
(10, 46, 20),
(11, 47, 10),
(12, 48, 1),
(13, 48, 2),
(14, 48, 4),
(15, 48, 13),
(16, 49, 13),
(17, 49, 14),
(18, 49, 17),
(19, 50, 13),
(20, 50, 14),
(21, 50, 16),
(22, 51, 7),
(23, 51, 8),
(24, 51, 9),
(25, 51, 18),
(26, 52, 8),
(27, 52, 18),
(28, 53, 7),
(29, 53, 8),
(30, 54, 4),
(31, 54, 5),
(32, 55, 5),
(33, 55, 6),
(34, 56, 5),
(35, 56, 6),
(36, 56, 10),
(37, 58, 2),
(38, 58, 3),
(39, 58, 13),
(40, 59, 1),
(41, 59, 13),
(42, 57, 10),
(43, 60, 5),
(44, 60, 6),
(45, 61, 10),
(46, 61, 12),
(47, 61, 20),
(48, 62, 5),
(49, 62, 10),
(50, 63, 13),
(51, 63, 14),
(52, 63, 17),
(53, 52, 19);
```

27. **Haz clic en "Continuar"** o "Ejecutar" para insertar los datos.



----------

## Prueba Final blog

Para resolver este desafio debes crear una tabla comentarios, agregar al menos 3 comentarios, imprimir todos los comentarios de la tabla y finalmente imprimir los comentarios de un usuario especial con un formato en específico.

- Reto 1: crear la tabla

    Crea una tabla comentarios con las columnas id, cuerpo_comentario, usuario_id y post_id.

|id	|cuerpo_comentario	|usuario_id	|post_id|
|---|-------------------|-----------|-------|
|...	|...	|...	|...|

- Reto 2: agrega registros
    
    Inserta al menos 3 comentarios en la tabla. Puedes escribir tantos comentarios como quieras. Asegúrate de que solo en 2 el usuario_id sea 1.

- Reto 3: imprime registros
    
    Imprime todas las columnas de todos los registros de la tabla comentarios.

- Reto 4: imprime registros del usuario 1
    
    Selecciona los 2 comentarios del usuario 1. Haz un JOIN para conseguir la información del post relacionado con la propiedad post_id y el usuario rerlacionado con la propiedad usuario_id. Imprime la propiedad comentarios.cuerpo_comentario como comentario, usuarios.login como usuario y posts.titulo como post.

|comentario	|usuario	|post|
|-----------|-----------|----|
|...	|israel	|...|
|...	|israel	|...|


<details>
  <summary>Reto final</summary>

###  Crear y Manipular la Tabla "comentarios"

#### Reto 1: Crear la Tabla "comentarios"
1. **Haz clic nuevamente en la pestaña "SQL"** y luego **introduce el siguiente código SQL** para crear la tabla "comentarios":

```sql
CREATE TABLE comentarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cuerpo_comentario TEXT,
    usuario_id INT,
    post_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (post_id) REFERENCES posts(id)
);
```

2. **Haz clic en "Continuar"** o "Ejecutar" para crear la tabla.

#### Reto 2: Agregar Registros a la Tabla "comentarios"
3. **Haz clic nuevamente en la pestaña "SQL"** y luego **introduce el siguiente código SQL** para insertar los datos en la tabla "comentarios":

```sql
INSERT INTO comentarios (cuerpo_comentario, usuario_id, post_id) VALUES
('Gran artículo sobre tecnología!', 1, 43),
('Interesante perspectiva sobre el premio Nobel.', 1, 45),
('¡El mejor evento del año!', 2, 46);
```

4. **Haz clic en "Continuar"** o "Ejecutar" para insertar los datos.

#### Reto 3: Imprimir Todos los Registros de la Tabla "comentarios"
5. **Haz clic nuevamente en la pestaña "SQL"** y luego **introduce el siguiente código SQL** para seleccionar todos los registros de la tabla "comentarios":

```sql
SELECT * FROM comentarios;
```

6. **Haz clic en "Continuar"** o "Ejecutar" para ver los registros.

#### Reto 4: Imprimir los Comentarios del Usuario 1 con JOIN
7. **Haz clic nuevamente en la pestaña "SQL"** y luego **introduce el siguiente código SQL** para seleccionar y mostrar los comentarios del usuario 1 junto con la información del post y del usuario:

```sql
SELECT comentarios.cuerpo_comentario AS comentario, usuarios.login AS usuario, posts.titulo AS post
FROM comentarios
JOIN usuarios ON comentarios.usuario_id = usuarios.id
JOIN posts ON comentarios.post_id = posts.id
WHERE comentarios.usuario_id = 1;
```

8. **Haz clic en "Continuar"** o "Ejecutar" para ver los registros.

### Resultado Final

| comentario                                | usuario | post                                  |
|-------------------------------------------|---------|---------------------------------------|
| Gran artículo sobre tecnología!           | israel  | Se presenta el nuevo teléfono móvil en evento |
| Interesante perspectiva sobre el premio Nobel. | israel  | Ganador del premio Nobel por trabajo en genética |



  </details>


