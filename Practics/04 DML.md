
### Paso 1: Acceder a phpMyAdmin

1. **Abre phpMyAdmin** en tu navegador. Normalmente, esto se puede hacer visitando `http://localhost/phpmyadmin` si estás trabajando en un servidor local.

### Paso 2: Crear una Nueva Base de Datos

2. **Haz clic en la pestaña "Bases de datos"** en la parte superior de la pantalla.
3. **Introduce un nombre para tu base de datos** en el campo de texto (por ejemplo, `mi_base_de_datos`).
4. **Selecciona el cotejamiento** (recomendado `utf8_general_ci` para soportar caracteres especiales).
5. **Haz clic en el botón "Crear"**.

### Paso 3: Crear una Nueva Tabla

6. **Selecciona la base de datos que acabas de crear** desde el panel de la izquierda.
7. **Haz clic en la pestaña "SQL"** en la parte superior de la pantalla.

### Paso 4: Escribir el Comando SQL para Crear la Tabla

8. **Introduce el siguiente código SQL** en el campo de texto:

```sql
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    edad INT,
    correo_electronico VARCHAR(100),
    telefono VARCHAR(15)
);
```

9. **Haz clic en "Continuar"** o "Ejecutar" para crear la tabla.

### Paso 5: Insertar Datos en la Tabla

10. **Haz clic nuevamente en la pestaña "SQL"** y luego **introduce el siguiente código SQL** para insertar los datos:

```sql
INSERT INTO students (nombre, apellido, edad, correo_electronico, telefono) VALUES
('Juan', 'Pérez', 20, 'juanperez@gmail.com', '555-1234'),
('Ana', 'López', 18, 'anita_lopez@yahoo.com', '555-4321'),
('Pedro', 'González', 22, 'pedro.gonzalez@hotmail.com', '555-5678'),
('María', 'Martínez', 19, 'maria_martinez@outlook.com', '555-8765'),
('Luis', 'Sánchez', 21, 'luis.sanchez@gmail.com', '555-2468');
```

11. **Haz clic en "Continuar"** o "Ejecutar" para insertar los datos.

### Paso 6: Verificar los Datos

12. **Haz clic en la pestaña "Examinar"** para verificar que los datos han sido insertados correctamente en la tabla `students`.

# Playground: CRUD con SQL

El CRUD (acrónimo de "Create, Read, Update, Delete") es un conjunto de operaciones básicas que se realizan en cualquier sistema de gestión de bases de datos.

En este caso, el reto consiste en realizar las operaciones CRUD en la tabla "students" y estara compuesto por 4 retos.

Recuerda que debes imprimir los siguientes 4 bloques de información, de cada reto, en la consola:

Información de la tabla:
    
- La tabla students tiene 4 columnas: nombre, apellido, edad, correo_electronico, telefono.

1. Tu reto será escribir una consulta SELECT que devuelva todos los datos de la tabla students. Con esta consulta, podrás ver cómo se utiliza la sintaxis SELECT para recuperar información de una base de datos utilizando SQL.

        💡 Recuerda que puedes usar el comando SELECT * para seleccionar todas las columnas de una tabla.

2. Tu reto será escribir una consulta INSERT que inserte un nuevo registro en la tabla students, el registro a insertar debe incluir los siguientes valores.

- nombre: "Alexis"
- apellido: "Araujo"
- edad: 33
- correo_electronico: "alexis@gmail.com"
- telefono: 777-1234

Con esta consulta, podrás ver cómo se utiliza la sintaxis INSERT para insertar un nuevo registro en una tabla.

    💡 Recuerda que puedes usar el comando INSERT INTO para insertar un nuevo registro en una tabla. Para ejecutar una consulta INSERT lo puedes hacer de la siguiente manera: sql INSERT INTO table (column1,column2 ,..) VALUES( value1, value2 ,...);

3. Tu reto será escribir una consulta DELETE que elimine el registro con el id "1" en la tabla students.

Con esta consulta, podrás ver cómo se utiliza la sintaxis DELETE para eliminar un registro en una tabla.

    💡 Recuerda que puedes usar el comando DELETE FROM para eliminar un registro en una tabla. Para ejecutar una consulta DELETE lo puedes hacer de la siguiente manera: sql DELETE FROM table WHERE condition;

4. Tu reto será escribir una consulta UPDATE que actualice el registro con el id "2" en la tabla students, el registro a actualizar debe incluir los siguientes valores.

- edad: 55

Con esta consulta, podrás ver cómo se utiliza la sintaxis UPDATE para actualizar un registro en una tabla.

    💡 Recuerda que puedes usar el comando UPDATE para actualizar un registro en una tabla. Para ejecutar una consulta UPDATE lo puedes hacer de la siguiente manera: sql UPDATE table SET column1 = value1, column2 = value2, ... WHERE condition;

Vamos a realizar las operaciones CRUD en la tabla "students" según las instrucciones:

<details>
  <summary>Operaciones CRUD</summary>

 ### 1. SELECT: Consultar Todos los Datos de la Tabla

Para recuperar todos los datos de la tabla "students":

```sql
SELECT * FROM students;
```

### 2. INSERT: Insertar un Nuevo Registro en la Tabla

Para insertar un nuevo registro en la tabla "students" con los valores especificados:

```sql
INSERT INTO students (nombre, apellido, edad, correo_electronico, telefono) 
VALUES ('Alexis', 'Araujo', 33, 'alexis@gmail.com', '777-1234');
```

### 3. DELETE: Eliminar un Registro Específico de la Tabla

Para eliminar el registro con el `id` 1 en la tabla "students":

```sql
DELETE FROM students 
WHERE id = 1;
```

### 4. UPDATE: Actualizar un Registro Específico de la Tabla

Para actualizar la `edad` del registro con el `id` 2 en la tabla "students":

```sql
UPDATE students 
SET edad = 55 
WHERE id = 2;
```

### Resumen de Operaciones CRUD

- **SELECT:** Recuperar todos los registros.
- **INSERT:** Insertar un nuevo registro.
- **DELETE:** Eliminar un registro específico.
- **UPDATE:** Actualizar un registro específico.

Estos comandos SQL te permitirán realizar las operaciones básicas en la tabla "students". Puedes ejecutarlos en la consola de phpMyAdmin para ver los resultados.


Para recuperar todos los datos de la tabla "students":
  </details>



