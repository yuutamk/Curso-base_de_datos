Ejercicio: Crea una base de datos llamada **test** que contenga una tabla llamada
**alumnos** con las siguientes columnas.

Tabla alumnos:

id (entero sin signo)

* nombre (cadena de caracteres)
* apellido1 (cadena de caracteres)
* apellido2 (cadena de caracteres)
* nota (número real)

Una vez creada la tabla escriba dos **triggers** con las siguientes características:
* Trigger 1: trigger_check_nota_before_insert
    * Se ejecuta sobre la tabla alumnos.
    * Se ejecuta antes de una operación de inserción.
    * Si el nuevo valor de la nota que se quiere insertar es negativo, se guarda
como 0.

    * Si el nuevo valor de la nota que se quiere insertar es mayor que 10, se
guarda como 10.
* Trigger2 : trigger_check_nota_before_update
    * Se ejecuta sobre la tabla alumnos.
    * Se ejecuta antes de una operación de actualización
    * Si el nuevo valor de la nota que se quiere actualizar es negativo, se guarda como 0.
    * Si el nuevo valor de la nota que se quiere actualizar es mayor que 10, se
guarda como 10.

Una vez creados los triggers escribe varias sentencias de inserción y actualización
sobre la tabla alumnos y verifica que los triggers se están ejecutando
correctamente.

