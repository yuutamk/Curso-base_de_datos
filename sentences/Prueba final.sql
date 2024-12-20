
USE mks;

CREATE TABLE usuarios (
    id INT PRIMARY KEY,
    login VARCHAR(50),
    nickname VARCHAR(50),
    email VARCHAR(100)
);

INSERT INTO usuarios (id, login, nickname, email) VALUES
(1, 'israel', 'Israel', 'israel@platziblog.com'),
(2, 'monica', 'Moni', 'monica@platziblog.com'),
(3, 'laura', 'Lau', 'laura@platziblog.com'),
(4, 'edgar', 'Ed', 'edgar@platziblog.com'),
(5, 'perezoso', 'Oso Perez', 'perezoso@platziblog.com');

CREATE TABLE categorias (
    id INT PRIMARY KEY,
    nombre_categoria VARCHAR(100)
);

INSERT INTO categorias (id, nombre_categoria) VALUES
(1, 'Ciencia'),
(2, 'Tecnología'),
(3, 'Deportes'),
(4, 'Espectáculos'),
(5, 'Economía');


CREATE TABLE etiquetas (
    id INT PRIMARY KEY,
    nombre_etiqueta VARCHAR(100)
);


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


CREATE TABLE post_etiqueta (
    id INT PRIMARY KEY,
    post_id INT,
    etiqueta_id INT,
    FOREIGN KEY (post_id) REFERENCES posts(id),
    FOREIGN KEY (etiqueta_id) REFERENCES etiquetas(id)
);


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

-- consulta final------------------------------------
USE mks;

CREATE TABLE comentarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cuerpo_comentario TEXT,
    usuario_id INT,
    post_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (post_id) REFERENCES posts(id)
);

INSERT INTO comentarios (cuerpo_comentario, usuario_id, post_id) VALUES
('Gran artículo sobre tecnología!', 1, 43),
('Interesante perspectiva sobre el premio Nobel.', 1, 45),
('¡El mejor evento del año!', 2, 46);

SELECT * FROM comentarios;


SELECT comentarios.cuerpo_comentario AS comentario, usuarios.login AS usuario, posts.titulo AS post
FROM comentarios
JOIN usuarios ON comentarios.usuario_id = usuarios.id
JOIN posts ON comentarios.post_id = posts.id
WHERE comentarios.usuario_id = 1;