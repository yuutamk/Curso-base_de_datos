Ejercicio: Creación de la base de datos

Tienda de informática

Modelo entidad/relación

![](/Resources/IMG%20Evaluacion/img71.jpg)

Crea la base de datos

inserta los datos:

```sql
INSERT INTO fabricante VALUES(1, 'Asus');
INSERT INTO fabricante VALUES(2, 'Lenovo');
INSERT INTO fabricante VALUES(3, 'Hewlett-Packard');
INSERT INTO fabricante VALUES(4, 'Samsung');
INSERT INTO fabricante VALUES(5, 'Seagate');
INSERT INTO fabricante VALUES(6, 'Crucial');
INSERT INTO fabricante VALUES(7, 'Gigabyte');
INSERT INTO fabricante VALUES(8, 'Huawei');
INSERT INTO fabricante VALUES(9, 'Xiaomi');

INSERT INTO producto VALUES(1, 'Disco duro SATA3 1TB', 86.99, 5);
INSERT INTO producto VALUES(2, 'Memoria RAM DDR4 8GB', 120, 6);
INSERT INTO producto VALUES(3, 'Disco SSD 1 TB', 150.99, 4);
INSERT INTO producto VALUES(4, 'GeForce GTX 1050Ti', 185, 7);
INSERT INTO producto VALUES(5, 'GeForce GTX 1080 Xtreme', 755, 6);
INSERT INTO producto VALUES(6, 'Monitor 24 LED Full HD', 202, 1);
INSERT INTO producto VALUES(7, 'Monitor 27 LED Full HD', 245.99, 1);
INSERT INTO producto VALUES(8, 'Portátil Yoga 520', 559, 2);
INSERT INTO producto VALUES(9, 'Portátil Ideapd 320', 444, 2);
INSERT INTO producto VALUES(10, 'Impresora HP Deskjet 3720', 59.99, 3);
INSERT INTO producto VALUES(11, 'Impresora HP Laserjet Pro M26nw', 180, 3);
```

Evaluación: Para poder tener correcto cada ejercicio deberán de mostrar el resultado
que se da en cada respuesta tal cual se muestra en la imagen

Ejercicio:

1. Calcula el número total de productos que hay en la tabla productos. 

![](/Resources/IMG%20Evaluacion/img80.jpg)

2. Muestra el número total de productos que tiene cada uno de los fabricantes. El listado
también debe incluir los fabricantes que no tienen ningún producto. El resultado
mostrará dos columnas, una con el nombre del fabricante y otra con el número de
productos que tiene. Ordene el resultado descendentemente por el número de
productos.

![](/Resources/IMG%20Evaluacion/img83.jpg)

3. Muestra el precio máximo, precio mínimo y precio medio de los productos de cada
uno de los fabricantes. El resultado mostrará el nombre del fabricante junto con los
datos que se solicitan.

![](/Resources/IMG%20Evaluacion/img84.jpg)

4. Muestra el nombre de cada fabricante, junto con el precio máximo, precio mínimo,
precio medio y el número total de productos de los fabricantes que tienen un precio
medio superior a 200€. Es necesario mostrar el nombre del fabricante.

![](/Resources/IMG%20Evaluacion/img87.jpg)

Ejercicio:

1. Lista el nombre de todos los productos que hay en la tabla producto.

![](/Resources/IMG%20Evaluacion/img94.jpg)

2. Lista los nombres y los precios de todos los productos de la tabla producto.

![](/Resources/IMG%20Evaluacion/img97.jpg)

3. Lista todas las columnas de la tabla producto

![](/Resources/IMG%20Evaluacion/img98.jpg)

4. Devuelve una lista con el nombre del producto, precio y nombre de fabricante de
todos los productos de la base de datos.


Subconsultas (En la cláusula WHERE)

   1. Devuelve todos los productos del fabricante Lenovo. (Sin utilizar INNER JOIN)

![](/Resources/IMG%20Evaluacion/img101.jpg)

   2. Devuelve todos los datos de los productos que tienen el mismo precio que el producto más caro del fabricante Lenovo. (Sin utilizar INNER JOIN).

![](/Resources/IMG%20Evaluacion/img102.jpg)

   3. Lista el nombre del producto más caro del fabricante Lenovo.

![](/Resources/IMG%20Evaluacion/img103.jpg)