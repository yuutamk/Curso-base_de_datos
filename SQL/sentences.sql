USE test;

-- Crear la tabla "asignaturas"

CREATE TABLE asignaturas (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Llave primaria
    titulo VARCHAR(255) NOT NULL,      -- Título de la asignatura
    hora_de_salida DATETIME            -- Hora de salida inicial
);


SELECT * FROM asignaturas;

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
