### Creando Tu Primera Base de Datos y Tabla en phpMyAdmin y SQL



### Paso 1: Crear una Base de Datos en phpMyAdmin

1. **Accede a phpMyAdmin:**
   Abre tu navegador web y accede a phpMyAdmin. Normalmente, esto se puede hacer a través de `http://localhost/phpmyadmin` si estás trabajando localmente.

2. **Crear una Nueva Base de Datos:**
   - En la página principal de phpMyAdmin, busca el enlace o pestaña que dice "Bases de datos" y haz clic en él.
   - En el campo "Crear base de datos", ingresa el nombre de tu nueva base de datos, por ejemplo, `test_db`.
   - Haz clic en el botón "Crear".

¡Felicidades! Has creado tu primera base de datos en phpMyAdmin.

### Paso 2: Crear una Tabla en phpMyAdmin

1. **Selecciona la Base de Datos:**
   - En la lista de bases de datos a la izquierda, haz clic en `test_db`.

2. **Crear una Nueva Tabla:**
   - En la pestaña "Estructura", busca la sección para crear una nueva tabla.
   - Ingresa el nombre de tu tabla, por ejemplo, `people`, y define el número de columnas (para este ejemplo, usaremos 5 columnas).
   - Haz clic en "Continuar".

3. **Definir las Columnas:**
   - En la siguiente pantalla, define las columnas de la tabla:
     - `person_id` - Tipo: INT -llave: primaria -Autoincrementado: AI
     - `last_name` - Tipo: VARCHAR(255)
     - `first_name` - Tipo: VARCHAR(255)
     - `address` - Tipo: VARCHAR(255)
     - `city` - Tipo: VARCHAR(2555)
   - Haz clic en "Guardar".

¡Listo! Has creado tu primera tabla en phpMyAdmin.

### Paso 3: Crear una Base de Datos y Tabla Usando Comandos SQL

Si prefieres usar comandos SQL directamente, sigue estos pasos:

1. **Abrir el Consola de SQL:**
   - En phpMyAdmin, haz clic en la pestaña "SQL" para abrir el editor de consultas.

2. **Crear la Base de Datos:**
   ```sql
   CREATE DATABASE test_db;
   ```

3. **Usar la Base de Datos:**
   ```sql
   USE test_db;
   ```

4. **Crear la Tabla:**
   ```sql
   CREATE TABLE people(
       person_id INT AUTO_INCREMENT PRIMARY KEY,
       last_name VARCHAR(255),
       first_name VARCHAR(255),
       address VARCHAR(255),
       city VARCHAR(2555)
   );
   ```

5. **Ejecutar los Comandos:**
   - Copia y pega los comandos anteriores en el editor de consultas y haz clic en "Ir" para ejecutarlos.

