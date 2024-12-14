Ejercicio:
Tenemos que diseñar una base de datos sobre proveedores y disponemos de la siguiente información:

Realiza el modelo entidad relación.

Tenemos esta información sobre una cadena editorial:

* La editorial tiene varias sucursales, con su domicilio, teléfono y un código de
sucursal.
* Cada sucursal tiene varios empleados, de los cuales tendremos su nombre,
apellidos, NIF y teléfono. Un empleado trabaja en una única sucursal.
* En cada sucursal se publican varias revistas, de las que almacenaremos su título,
número de registro, periodicidad y tipo.
* Una revista puede ser publicada por varias sucursales.
* La editorial tiene periodistas (que no trabajan en las sucursales) que pueden
escribir artículos para varias revistas. Almacenaremos los mismos datos que para
los empleados, añadiendo su especialidad.
* También es necesario guardar las secciones fijas que tiene cada revista, que
constan de un título y una extensión.
* Para cada revista, almacenaremos información de cada ejemplar, que incluirá la
fecha, número de páginas y el número de ejemplares vendidos.