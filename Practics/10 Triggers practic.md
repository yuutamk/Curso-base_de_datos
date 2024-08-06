### Paso a Paso para Crear la Base de Datos y Aplicar Triggers en SQL usando phpMyAdmin

#### Paso 1: Crear la Base de Datos

1. **Accede a phpMyAdmin**: Ingresa a tu instancia de phpMyAdmin.
2. **Crear una Nueva Base de Datos**:
    - Haz clic en "Nuevo" en el panel izquierdo.
    - Escribe el nombre de la base de datos (por ejemplo, `empresa_db`).
    - Selecciona el cotejamiento (generalmente `utf8_general_ci` está bien).
    - Haz clic en "Crear".

#### Paso 2: Crear las Tablas `empleados` y `auditoria`

1. **Crear la Tabla `empleados`**:
    ```sql
    CREATE TABLE empleados (
      id INT(11) NOT NULL AUTO_INCREMENT,
      nombre VARCHAR(255) NOT NULL,
      puesto VARCHAR(255) NOT NULL,
      sueldo DECIMAL(10,2) NOT NULL,
      PRIMARY KEY (id)
    );
    ```

2. **Crear la Tabla `auditoria`**:
    ```sql
    CREATE TABLE auditoria (
      id INT(11) NOT NULL AUTO_INCREMENT,
      empleado_id INT(11) NOT NULL,
      accion VARCHAR(255) NOT NULL,
      fecha DATETIME NOT NULL,
      PRIMARY KEY (id),
      FOREIGN KEY (empleado_id) REFERENCES empleados(id)
    );
    ```

3. **Crear la Tabla `proyectos`**:
    ```sql
    CREATE TABLE proyectos (
      id INT(11) NOT NULL AUTO_INCREMENT,
      nombre VARCHAR(255) NOT NULL,
      empleado_id INT(11),
      PRIMARY KEY (id),
      FOREIGN KEY (empleado_id) REFERENCES empleados(id)
    );
    ```

#### Paso 3: Crear los Triggers

1. **Trigger para Registrar Inserciones**:
    ```sql
    DELIMITER //
    CREATE TRIGGER after_employee_insert
    AFTER INSERT ON empleados
    FOR EACH ROW
    BEGIN
        INSERT INTO auditoria (empleado_id, accion, fecha)
        VALUES (NEW.id, 'INSERT', NOW());
    END;
    //
    DELIMITER ;
    ```

2. **Trigger para Validar Actualizaciones**:
    ```sql
    DELIMITER //
    CREATE TRIGGER before_salary_update
    BEFORE UPDATE ON empleados
    FOR EACH ROW
    BEGIN
        IF NEW.sueldo < 0 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'El sueldo no puede ser negativo';
        END IF;
    END;
    //
    DELIMITER ;
    ```

3. **Trigger para Sincronizar Eliminaciones**:
    ```sql
    DELIMITER //
    CREATE TRIGGER after_employee_delete
    AFTER DELETE ON empleados
    FOR EACH ROW
    BEGIN
        DELETE FROM proyectos WHERE empleado_id = OLD.id;
    END;
    //
    DELIMITER ;
    ```

#### Paso 4: Probar los Triggers

1. **Insertar Datos en la Tabla `empleados`**:
    ```sql
    INSERT INTO empleados (nombre, puesto, sueldo) VALUES ('Juan Perez', 'Desarrollador', 3000.00);
    INSERT INTO empleados (nombre, puesto, sueldo) VALUES ('Ana Gómez', 'Diseñadora', 2500.00);
    ```

2. **Actualizar el Sueldo de un Empleado** (Prueba de validación):
    ```sql
    UPDATE empleados SET sueldo = 3500.00 WHERE id = 1;
    -- Para probar el trigger de validación, intenta:
    UPDATE empleados SET sueldo = -500.00 WHERE id = 1;
    ```

3. **Eliminar un Empleado y Sincronizar con la Tabla `proyectos`**:
    ```sql
    INSERT INTO proyectos (nombre, empleado_id) VALUES ('Proyecto A', 1);
    INSERT INTO proyectos (nombre, empleado_id) VALUES ('Proyecto B', 2);
    DELETE FROM empleados WHERE id = 1;
    ```

4. **Verificar la Tabla `auditoria`**:
    ```sql
    SELECT * FROM auditoria;
    ```

Este es el proceso completo para crear la base de datos, tablas, y aplicar los triggers mencionados. Cada trigger cumple con un propósito específico y ayuda a mantener la integridad y consistencia de los datos en la base de datos.