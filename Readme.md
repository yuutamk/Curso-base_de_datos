### **Bienvenidos al Mundo de las Bases de Datos: Un Viaje a Través de SQL**

¡Hola a todos! En este espacio, vamos a embarcarnos en una emocionante aventura por el fascinante mundo de las bases de datos, específicamente enfocándonos en SQL (Structured Query Language). Pero antes de sumergirnos en el código y las consultas, echemos un vistazo a la historia, los tipos de bases de datos y los conceptos clave que nos ayudarán a entender mejor este vasto universo.

![database](/SQL/src/SQL.webp)

#### **Introducción a Base de Datos**

#####  **1.1 ¿Qué es un Sistema Gestor de Bases de Datos (SGBD)?**

Un Sistema Gestor de Bases de Datos (SGBD) consiste en una colección de datos interrelacionados y un conjunto de programas para acceder a dichos datos. La colección de datos, normalmente denominada base de datos, contiene información relevante para una empresa. El objetivo principal de un SGBD es proporcionar una forma de almacenar y recuperar la información de una base de datos de manera que sea tanto práctica como eficiente. Los sistemas de bases de datos se diseñan para gestionar grandes cantidades de información. La gestión de los datos implica tanto la definición de estructuras para almacenar la información como la provisión de mecanismos para la manipulación de la información. Además, los sistemas de bases de datos deben garantizar la fiabilidad de la información almacenada, a pesar de las caídas del sistema o de los intentos de acceso no autorizados. Si los datos van a ser compartidos entre diferentes usuarios, el sistema debe evitar posibles resultados anómalos. Dado que la información es tan importante en la mayoría de las organizaciones, los científicos informáticos han desarrollado un gran cuerpo de conceptos y técnicas para la gestión de los datos.

##### **1.2. Aplicaciones de los Sistemas de Bases de Datos**

Las bases de datos se usan ampliamente. Algunas de sus aplicaciones representativas son:

- **Banca:** Información de clientes, cuentas, préstamos y transacciones bancarias.
- **Líneas Aéreas:** Reservas e información de horarios.
- **Universidades:** Información de estudiantes, matrículas y cursos.
- **Transacciones de Tarjetas de Crédito:** Compras y generación de extractos mensuales.
- **Telecomunicaciones:** Registro de llamadas, generación de facturas, y mantenimiento del saldo de tarjetas telefónicas de prepago.
- **Finanzas:** Información sobre compañías, ventas y compras de productos financieros, datos del mercado en tiempo real.
- **Ventas:** Información de clientes, productos y compras.
- **Comercio en Línea:** Datos de ventas, seguimiento de pedidos, generación de listas de recomendaciones y evaluaciones de productos.
- **Producción:** Gestión de la cadena de proveedores y seguimiento de la producción e inventarios.
- **Recursos Humanos:** Información sobre empleados, salarios, impuestos y prestaciones sociales.

Como muestra esta lista, las bases de datos forman una parte esencial de casi todas las empresas actuales. Durante las últimas cuatro décadas del siglo veinte, el uso de las bases de datos creció en todas las empresas.

##### **1.3. Propósito de los Sistemas de Bases de Datos**

Los sistemas de bases de datos surgieron en respuesta a los primeros métodos de gestión informatizada de los datos comerciales. A modo de ejemplo, considérese una entidad bancaria que guarda información sobre todos los clientes y todas las cuentas de ahorro. Una manera de guardar la información en la computadora es almacenarla en archivos del sistema operativo. Para permitir que los usuarios manipulen la información, el sistema tiene varios programas de aplicación que gestionan los archivos, incluyendo programas para efectuar cargos o abonos en las cuentas, añadir cuentas nuevas, calcular el saldo de las cuentas y generar los extractos mensuales.

Estos programas de aplicación los han escrito programadores de sistemas en respuesta a las necesidades del banco. Se añaden nuevos programas de aplicación al sistema según surgen las necesidades. Con el paso del tiempo, se añaden más archivos y programas de aplicación al sistema. Los sistemas operativos convencionales soportan este sistema de procesamiento de archivos típico. El sistema almacena los registros permanentes en varios archivos y necesita diferentes programas de aplicación para extraer y añadir a los archivos correspondientes.

Antes de la aparición de los sistemas gestores de bases de datos (SGBD), las organizaciones normalmente almacenaban la información en sistemas de este tipo. Guardar la información de la organización en un sistema de procesamiento de archivos tiene una serie de inconvenientes importantes:

- **Redundancia e Inconsistencia de los Datos:** Información duplicada en varios lugares, lo que conduce a costos de almacenamiento y acceso más elevados, y puede dar lugar a la inconsistencia de los datos.
- **Dificultad en el Acceso a los Datos:** Dificultad para obtener datos no previstos en el diseño original.
- **Aislamiento de Datos:** Datos dispersos en varios archivos y formatos, dificultando la escritura de nuevos programas de aplicación para recuperar datos.
- **Problemas de Integridad:** Dificultad para mantener restricciones de consistencia.
- **Problemas de Atomicidad:** Dificultad para asegurar que las transacciones se completen en su totalidad o no ocurran en absoluto en caso de fallos del sistema.
- **Anomalías en el Acceso Concurrente:** Actualizaciones simultáneas que pueden causar inconsistencias en los datos.
- **Problemas de Seguridad:** Dificultad para restringir el acceso a datos sensibles.

Estas dificultades, entre otras, motivaron el desarrollo de los sistemas de bases de datos.

#### **2. Tipos de Bases de Datos**

![tipos de base de tatos](/SQL/src/DB_Tipos.png)

Existen varios tipos de bases de datos, cada una adecuada para diferentes tipos de aplicaciones y necesidades. Aquí mencionamos algunas de las más comunes:

- **Bases de Datos Relacionales (RDBMS):**
  - Utilizan tablas para almacenar datos.
  - Ejemplos: MySQL, PostgreSQL, Oracle Database.
  - Ideales para aplicaciones empresariales donde la integridad de los datos y las relaciones entre los datos son cruciales.

    ![Database relacionales](/SQL/src/DB_Relacionales_ejemplos.png)

- **Bases de Datos NoSQL:**
  - Diseñadas para gestionar datos no estructurados.
  - Ejemplos: MongoDB, Cassandra, Redis.
  - Ideales para aplicaciones que requieren alta flexibilidad y escalabilidad, como aplicaciones web y de análisis de grandes volúmenes de datos.


    ![Database no rlacional](/SQL/src/DB_NoRelacionales_ejemplos.png)

- **Bases de Datos Orientadas a Grafos:**
  - Utilizan grafos para representar y almacenar datos.
  - Ejemplos: Neo4j, Amazon Neptune.
  - Perfectas para aplicaciones que gestionan relaciones complejas entre datos, como redes sociales y motores de recomendación.

- **Bases de Datos en Memoria:**
  - Almacenan datos en la memoria principal en lugar de en discos.
  - Ejemplos: Redis, Memcached.
  - Ideales para aplicaciones que requieren acceso a datos extremadamente rápido.

#### **3. Un Poco de Historia**

Las bases de datos han recorrido un largo camino desde sus humildes comienzos. En los años 1960, las bases de datos jerárquicas y de red fueron los primeros sistemas utilizados. En los años 1970, Edgar F. Codd introdujo el modelo relacional, que revolucionó la forma en que almacenamos y gestionamos datos. Este modelo utiliza tablas y relaciones, lo que simplifica la manipulación de grandes cantidades de datos. A medida que la tecnología avanzó, surgieron las bases de datos NoSQL en los años 2000 para satisfacer las crecientes demandas de escalabilidad y flexibilidad.

#### **4. Introducción a los Diagramas en Bases de Datos**

Para diseñar y comprender mejor las bases de datos, utilizamos diversos diagramas. Aquí exploraremos dos tipos esenciales: los Diagramas ER (Entidad-Relación) y los Diagramas Físicos.

**Diagramas ER (Entidad-Relación):**
Un diagrama ER es una representación gráfica de las entidades (objetos) y las relaciones entre ellas. Los componentes clave de un diagrama ER son:

- **Entidades:** Representadas como rectángulos, son objetos o conceptos sobre los cuales necesitamos almacenar información.
- **Relaciones:** Representadas como rombos, describen cómo las entidades están relacionadas entre sí.
- **Atributos:** Representados como óvalos, son propiedades o características de las entidades.

![Diagramas](/SQL/src/diagrama%20ERE.png)

**Diagramas Físicos:**
Un diagrama físico muestra cómo los datos serán almacenados físicamente en una base de datos. Incluye detalles como el tipo de datos, las restricciones y las claves primarias y foráneas. Este tipo de diagrama es crucial para la implementación real de la base de datos.


![Diagrama Fisico](/Resources/img/database-tool.webp)

# Introducción a las Bases de Datos Relacionales

En el mundo actual, la gestión y organización eficiente de datos es crucial para el éxito de cualquier organización. Desde pequeñas startups hasta gigantes multinacionales, todos dependen de sistemas que puedan almacenar, recuperar y manipular datos de manera efectiva. Aquí es donde entran en juego las bases de datos relacionales. Este blog se adentrará en el fascinante mundo de las bases de datos relacionales, explorando sus conceptos fundamentales, estructura, aplicaciones y mucho más.

### 1. ¿Qué es una Base de Datos Relacional?

Una base de datos relacional es un sistema que almacena y proporciona acceso a puntos de datos relacionados entre sí. Este tipo de base de datos se basa en el modelo relacional, el cual es una forma intuitiva y directa de representar datos en tablas. En una base de datos relacional, cada fila en una tabla es un registro con una ID única, llamada clave. Las columnas de la tabla contienen los atributos de los datos y cada registro suele tener un valor para cada atributo, lo que simplifica la creación de relaciones entre los puntos de datos.

### 2. Modelo Relacional

#### 2.1. La estructura de bases de datos relacionales

Una base de datos relacional consiste en un conjunto de tablas, a las cuales se les asigna un nombre exclusivo. Cada fila de la tabla representa una relación entre un conjunto de valores. De manera informal, cada tabla es un conjunto de entidades, y cada fila es una entidad. Dado que cada tabla es un conjunto de tales relaciones, hay una fuerte correspondencia entre el concepto de tabla y el concepto matemático de relación, del que toma su nombre el modelo de datos relacional.

Para ilustrar estos conceptos, consideremos un ejemplo simple de una entidad bancaria. Podemos tener varias tablas, como "Clientes", "Cuentas" y "Transacciones", donde cada tabla contiene información relevante sobre esas entidades.

#### 2.2. Claves Primarias y Foráneas

En las bases de datos relacionales, las claves juegan un papel crucial. Una clave primaria es un campo (o conjunto de campos) que identifica de manera única cada registro en una tabla. Por otro lado, una clave foránea es un campo en una tabla que es una clave primaria en otra tabla, estableciendo una relación entre las dos tablas. Estas claves aseguran la integridad referencial dentro de la base de datos.

#### 2.3. Relaciones entre Tablas

Las relaciones entre tablas se definen mediante claves foráneas. Existen varios tipos de relaciones, como uno a uno, uno a muchos y muchos a muchos, que describen cómo los registros en una tabla se asocian con los registros en otra tabla. Por ejemplo, en una entidad bancaria, un cliente puede tener múltiples cuentas (relación uno a muchos), y una cuenta puede estar asociada con múltiples transacciones (relación uno a muchos).

### 3. Beneficios de las Bases de Datos Relacionales

#### 3.1. Reducción de Redundancia y Consistencia de Datos

Las bases de datos relacionales ayudan a minimizar la redundancia de datos mediante la normalización, un proceso que organiza los datos para reducir la duplicación. Esto, a su vez, asegura que los datos sean consistentes y precisos en toda la base de datos.

#### 3.2. Flexibilidad y Escalabilidad

Las bases de datos relacionales son altamente flexibles y escalables, lo que permite a las organizaciones manejar grandes volúmenes de datos y ajustarse a las necesidades cambiantes. Con el uso de SQL (Structured Query Language), los usuarios pueden realizar consultas complejas y manipular datos de manera eficiente.

### 3.3. Integridad y Seguridad de los Datos

Los sistemas de bases de datos relacionales implementan restricciones de integridad para asegurar que los datos sean precisos y válidos. Además, ofrecen robustas medidas de seguridad para proteger los datos contra accesos no autorizados, garantizando la confidencialidad y la integridad de la información.

### 4. Aplicaciones de las Bases de Datos Relacionales

Las bases de datos relacionales se utilizan ampliamente en diversas industrias debido a su versatilidad y eficiencia. Algunas aplicaciones comunes incluyen:

- **Banca:** Gestión de información de clientes, cuentas, préstamos y transacciones.
- **Líneas Aéreas:** Reservas e información de horarios.
- **Universidades:** Información de estudiantes, matrículas y cursos.
- **Telecomunicaciones:** Registro de llamadas, generación de facturas y mantenimiento de saldos de tarjetas prepago.
- **Finanzas:** Almacenamiento de información sobre inversiones, ventas y compras de productos financieros.
- **Comercio en Línea:** Gestión de datos de ventas, seguimiento de pedidos y generación de recomendaciones de productos.


# Modelo Entidad-Relación

El Modelo Entidad-Relación (ER) es un enfoque conceptual que permite describir la realidad mediante un conjunto de representaciones gráficas y lingüísticas. Inicialmente, el modelo incluía solo tres conceptos: entidad, relación y atributo. Sin embargo, con el tiempo, se han añadido conceptos como los atributos compuestos y las jerarquías de generalización, dando lugar al modelo entidad-relación extendido.

### Conceptos Clave del Modelo Entidad-Relación

1. **Entidad:**
   Una entidad es cualquier objeto o concepto sobre el que se recoge información. Puede ser una cosa, una persona, un concepto abstracto o un evento. Ejemplos de entidades incluyen coches, casas, empleados, clientes, empresas, productos, conciertos, y excursiones. Gráficamente, las entidades se representan mediante rectángulos con su nombre en el interior. Existen dos tipos de entidades: fuertes y débiles.
   
   - **Entidad Fuerte:** Es una entidad cuya existencia no depende de otra entidad.
   - **Entidad Débil:** Es una entidad cuya existencia depende de la existencia de otra entidad. Por ejemplo, una "Factura" puede depender de la existencia de un "Cliente".

2. **Relación:**
   Las relaciones describen cómo las entidades interactúan entre sí. Una relación se representa mediante un rombo con líneas que conectan las entidades involucradas. Las relaciones pueden ser de varios tipos, como uno a uno, uno a muchos, y muchos a muchos.

3. **Atributo:**
   Los atributos son las propiedades o características de una entidad. Por ejemplo, una entidad "Empleado" puede tener atributos como nombre, dirección, y fecha de nacimiento. Los atributos se representan mediante óvalos conectados a sus respectivas entidades.

4. **Atributos Compuestos:**
   Un atributo compuesto es un atributo que puede descomponerse en otros atributos más pequeños. Por ejemplo, una dirección puede descomponerse en calle, ciudad, estado y código postal.

5. **Jerarquías de Generalización:**
   Las jerarquías de generalización permiten la representación de relaciones jerárquicas entre entidades. Por ejemplo, una entidad "Empleado" puede tener subentidades como "Gerente" y "Asistente", que heredan atributos de "Empleado".

    ![entidad relacion](/SQL/src/Diagrama_Entidades-Atributos.webp)

## Aplicaciones Prácticas del Modelo Entidad-Relación

El Modelo ER se utiliza en una amplia variedad de industrias y aplicaciones. Algunas de las aplicaciones más comunes incluyen:

- **Sistemas de Información Empresarial:** Para modelar las relaciones entre clientes, productos, órdenes y empleados.
- **Sistemas de Gestión Académica:** Para representar la estructura de cursos, estudiantes, profesores y matrículas.
- **Sistemas Bancarios:** Para modelar las relaciones entre cuentas, transacciones, clientes y empleados.
- **Sistemas de Gestión de Recursos Humanos:** Para organizar información sobre empleados, departamentos, salarios y beneficios.


    ![Diagrama ejemplo entidad relacion](/SQL/src/Diagrama_Entidades-Atributos_Ejemplo.webp)
## Ejemplo Práctico: Un Sistema de Gestión de Bibliotecas

Consideremos un ejemplo práctico para ilustrar el uso del Modelo ER en el diseño de un sistema de gestión de bibliotecas.

1. **Identificación de Entidades:**
   - **Libro:** con atributos como Título, Autor, ISBN, y Fecha de Publicación.
   - **Usuario:** con atributos como Nombre, Dirección, Número de Usuario, y Fecha de Registro.
   - **Préstamo:** con atributos como Fecha de Préstamo y Fecha de Devolución.

2. **Definición de Relaciones:**
   - Un **Usuario** puede realizar múltiples **Préstamos**.
   - Un **Préstamo** está asociado a un único **Libro**.

3. **Representación Gráfica:**
   - Entidades representadas como rectángulos.
   - Relaciones representadas como rombos conectados a las entidades.



## Cardinalidad

La cardinalidad en un Diagrama ER se refiere al número de instancias de una entidad que pueden estar asociadas con instancias de otra entidad. Es, en esencia, una forma de especificar cuántas veces una entidad puede participar en una relación. Comprender la cardinalidad es crucial para diseñar bases de datos que reflejen con precisión las reglas y restricciones del mundo real.

## Tipos de Cardinalidad

Existen tres tipos principales de cardinalidad que se representan en los Diagramas ER:

1. **Uno a Uno (1:1):**
   Una relación uno a uno indica que una instancia de una entidad está asociada con una y solo una instancia de otra entidad. Este tipo de relación es relativamente raro en las bases de datos, pero puede ser útil en ciertos escenarios, como cuando se desea separar información sensible.

   **Ejemplo:**
   - Una persona tiene un número de pasaporte único.
   - Un país tiene una capital.

2. **Uno a Muchos (1:N):**
   En una relación uno a muchos, una instancia de una entidad puede estar asociada con muchas instancias de otra entidad, pero las instancias de la segunda entidad solo pueden estar asociadas con una instancia de la primera entidad.

   **Ejemplo:**
   - Un autor puede escribir varios libros.
   - Un cliente puede hacer múltiples pedidos.

3. **Muchos a Muchos (M:N):**
   Este tipo de relación indica que múltiples instancias de una entidad pueden estar asociadas con múltiples instancias de otra entidad. Las relaciones muchos a muchos suelen requerir una tabla intermedia para ser representadas en una base de datos relacional.

   **Ejemplo:**
   - Los estudiantes pueden inscribirse en varios cursos.
   - Los productos pueden ser vendidos por múltiples proveedores.


El diseño de bases de datos no termina con los diagramas de entidades y relaciones. Una vez que el modelo lógico está listo, es hora de traducirlo a un diagrama físico, que define cómo se almacenarán realmente los datos en la base de datos. En este blog, exploraremos la importancia del diagrama físico, los tipos de datos y los constraints que aseguran la integridad y eficiencia de los datos.

## Diagrama Físico

Un diagrama físico es una representación detallada de cómo se implementarán las estructuras de datos en un sistema de gestión de bases de datos (SGBD). Este diagrama incluye las tablas, columnas, tipos de datos, índices y constraints (restricciones) que garantizan la integridad de los datos. Mientras que el modelo lógico se centra en qué datos se almacenan, el diagrama físico se ocupa de cómo y dónde se almacenan.

## Tipos de Datos

Elegir los tipos de datos correctos es crucial para la eficiencia y precisión del almacenamiento de datos. Los tipos de datos definen el tipo de información que se puede almacenar en una columna de una tabla. Aquí hay algunos de los tipos de datos más comunes:

![tipos datos](/SQL/src/tiposDatos.jpg)

### 1. Numéricos

- **INT:** Enteros sin decimales. Ideal para contar o identificar datos.
- **FLOAT/DOUBLE:** Números con decimales. Útil para cálculos precisos.
- **DECIMAL:** Números decimales con una precisión fija. Perfecto para valores monetarios.

### 2. Carácter y Cadena

- **CHAR:** Cadenas de longitud fija. Bueno para datos de longitud constante, como códigos postales.
- **VARCHAR:** Cadenas de longitud variable. Ideal para nombres y descripciones.
- **TEXT:** Cadenas de longitud variable grandes. Útil para comentarios y descripciones largas.

### 3. Fecha y Hora

- **DATE:** Solo fecha. Para almacenar fechas sin hora.
- **TIME:** Solo hora. Para almacenar horas sin fecha.
- **DATETIME/TIMESTAMP:** Fecha y hora. Útil para marcar eventos.

### 4. Booleanos

- **BOOLEAN:** Verdadero o falso. Ideal para banderas y estados.

### 5. Binarios

- **BLOB:** Datos binarios grandes. Útil para almacenar imágenes y archivos.

![tipos de datos](/SQL/src/tiposDatos2.jpg)

## Constraints (restricciones)

Las constraints son reglas aplicadas a las columnas de las tablas para asegurar la precisión y consistencia de los datos. Aquí hay algunas de las constraints más comunes:

![restricciones](/SQL/src/restricciones.jpg)


* NOT NULL: Se asegura que la columna no tenga valores nulos
* UNIQUE: Se asegura que cada valor en la columna no se repita
* PRIMARY KEY: Es una combinación de NOT NULL y UNIQUE
* FOREIGN KEY: Identifica de manera única una tupla en otra tabla
* CHECK: Se asegura que el valor en la columna cumpla una condición dada
* DEFAULT: Coloca un valor por defecto cuando no hay un valor especificado
* INDEX: Se crea por columna para permitir búsquedas más rápidas


## Importancia del Diagrama Físico en el Diseño de Bases de Datos

### 1. Rendimiento Optimizado

El diagrama físico permite elegir los tipos de datos y constraints adecuados, lo que optimiza el rendimiento de la base de datos. Por ejemplo, usar `INT` en lugar de `VARCHAR` para claves primarias mejora la velocidad de las consultas.

### 2. Integridad y Precisión de los Datos

Las constraints garantizan que los datos sean precisos y consistentes. Por ejemplo, una clave foránea asegura que no se puedan agregar registros huérfanos en una tabla secundaria.

### 3. Eficiencia en el Almacenamiento

Elegir los tipos de datos correctos también mejora la eficiencia del almacenamiento. Por ejemplo, usar `CHAR(5)` en lugar de `VARCHAR(50)` para códigos postales ahorra espacio.

### 4. Seguridad y Mantenimiento

Las constraints facilitan el mantenimiento y la seguridad de la base de datos. Las restricciones de integridad referencial evitan la corrupción de datos, y las claves únicas impiden la duplicación de registros.

# Alcanzando el Nirvana de las Bases de Datos: La Normalización

En el mundo de las bases de datos relacionales, la normalización es una técnica fundamental que busca organizar los datos de manera eficiente, reduciendo la redundancia y asegurando la integridad de la información. Imagina que tu base de datos es un jardín zen: cada piedra, cada planta está cuidadosamente colocada para crear un equilibrio perfecto. La normalización es el proceso que permite alcanzar ese equilibrio. Como dijo Edgar Codd, tener una base de datos normalizada es como alcanzar el nirvana, la plenitud.

## ¿Qué es la Normalización?

La normalización es un proceso de organización de los datos en una base de datos para reducir la redundancia y mejorar la integridad de los datos. Este proceso implica dividir una base de datos en tablas más pequeñas y definir relaciones entre ellas según un conjunto de reglas conocidas como formas normales (FN).

## Las Reglas de Edgar Codd: Las Formas Normales

Edgar F. Codd, el padre del modelo relacional de bases de datos, definió una serie de reglas para lograr una base de datos normalizada. Cada regla se denomina forma normal (FN), y a medida que avanzamos de una forma normal a la siguiente, aumentamos el nivel de organización y eficiencia de la base de datos.

![normalizacion](/SQL/src/sin%20normalizar.webp)

Normalizada ![normalizada](/SQL/src/normalizada.webp)

### 1. Primera Forma Normal (1NF)

Para que una tabla esté en la primera forma normal (1NF), debe cumplir con los siguientes criterios:
- Todos los atributos son atómicos. Un atributo es atómico si los elementos del dominio son simples e indivisibles.
- Cada registro debe ser único.


- No debe existir variación en el número de columnas.
- Los campos no clave deben identificarse por la clave (dependencia funcional).
- Debe existir una independencia del orden tanto de las filas como de las columnas; es decir, si los datos cambian de orden no deben cambiar sus significados.

Se traduce básicamente a que si tenemos campos compuestos como por ejemplo “nombre_completo” que en realidad contiene varios datos distintos, en este caso podría ser “nombre”, “apellido_paterno”, “apellido_materno”, etc.

También debemos asegurarnos que las columnas son las mismas para todos los registros, que no haya registros con columnas de más o de menos.

Todos los campos que no se consideran clave deben depender de manera única por el o los campos que si son clave.

Los campos deben ser tales que si reordenamos los registros o reordenamos las columnas, cada dato no pierda el significado.


**Ejemplo:**

![primera forma normal](/SQL/src/primera%20forma%20normal.jpg)

Una tabla no normalizada podría tener:

Empleado | Teléfonos
---------|-----------------
Juan     | 1234, 5678
María    | 4321

En 1NF, cada teléfono se almacena en una fila separada:

Empleado | Teléfono
---------|---------
Juan     | 1234
Juan     | 5678
María    | 4321


### 2. Segunda Forma Normal (2NF)



Para que una tabla esté en la segunda forma normal (2NF), debe cumplir con los criterios de 1NF y, además:
- Todos los atributos que no son clave principal deben depender únicamente de la clave principal.

- Está en 1FN
- Sí los atributos que no forman parte de ninguna clave dependen de forma completa de la clave principal. Es decir, que no existen dependencias parciales.

Lo anterior quiere decir que sí tenemos datos que pertenecen a diversas entidades, cada entidad debe tener un campo clave separado.

![segunda forma normal](/SQL/src/segunda%20forma%20normal2.jpg)


En la tabla anterior tenemos por lo menos dos entidades que debemos separar para que cada uno dependa de manera única de su campo llave o ID. En este caso las entidades son alumnos por un lado y materias por el otro. En el ejemplo anterior, quedaría de la siguiente manera:

![segunda forma normal](/SQL/src/segunda%20forma%20normal.jpg)

**Ejemplo:**
Una tabla en 1NF:

PedidoID | Producto | Cantidad | PrecioTotal | ClienteNombre
---------|----------|----------|-------------|---------------
1        | Libro    | 2        | 40          | Ana
2        | Pluma    | 5        | 25          | Juan

En 2NF, dividimos la tabla para que los atributos dependan completamente de la clave primaria:

PedidoID | Producto | Cantidad
---------|----------|----------
1        | Libro    | 2
2        | Pluma    | 5

ClienteID | PedidoID | ClienteNombre
----------|----------|--------------
1         | 1        | Ana
2         | 2        | Juan


### 3. Tercera Forma Normal (3NF)



Para que una tabla esté en la tercera forma normal (3NF), debe cumplir con los criterios de 2NF y, además:
- No existe ninguna dependencia funcional transitiva en los atributos que no son clave

- Se encuentra en 2FN


Esta FN se traduce en que aquellos datos que no pertenecen a la entidad deben tener una independencia de las demás y debe tener un campo clave propio. Continuando con el ejemplo anterior, al aplicar la 3FN separamos la tabla alumnos ya que contiene datos de los cursos en ella quedando de la siguiente manera.

![tercera forma normal](/SQL/src/tercera%20forma%20normal%20jem1.webp)

![tercera forma normal](/SQL/src/tercera%20forma%20normal%20jem2.webp)

![tercera forma normal](/SQL/src/tercera%20forma%20normal.jpg)

**Ejemplo:**
Una tabla en 2NF:

PedidoID | Producto | ClienteID | ClienteNombre
---------|----------|-----------|---------------
1        | Libro    | 1         | Ana
2        | Pluma    | 2         | Juan

En 3NF, eliminamos las dependencias transitivas:

PedidoID | Producto | ClienteID
---------|----------|-----------
1        | Libro    | 1
2        | Pluma    | 2

ClienteID | ClienteNombre
----------|--------------
1         | Ana
2         | Juan

### 4. Cuarta Forma Normal (4NF)

- Cumple 1FN, 2FN, 3FN 
- los campos multivaluados se identifican por una clave única.



Esta FN trata de eliminar registros duplicados en una entidad, es decir que cada registro tenga un contenido único y de necesitar repetir la data en los resultados se realiza a través de claves foráneas.

Aplicado al ejemplo anterior la tabla materia se independiza y se relaciona con el alumno a través de una tabla transitiva o pivote, de tal manera que si cambiamos el nombre de la materia solamente hay que cambiarla una vez y se propagara a cualquier referencia que haya de ella.

![cuarta forma normal](/SQL/src/cuarta%20forma%20normal%20ejem1.webp)

![cuarta forma normal](/SQL/src/cuarta%20forma%20normal%20ejem2.webp)

![cuarta forma normal](/SQL/src/cuarta%20forma%20normal.jpg)


De esta manera, aunque parezca que la información se multiplicó, en realidad la descompusimos o normalizamos de manera que a un sistema le sea fácil de reconocer y mantener la consistencia de los datos.
### Formas Normales Superiores

Además de las tres primeras formas normales, existen formas normales superiores que abordan cuestiones más complejas de redundancia y dependencias:
- **BCNF (Boyce-Codd Normal Form)**
- **4NF (Cuarta Forma Normal)**
- **5NF (Quinta Forma Normal)**
- **6NF (Sexta Forma Normal)**

Cada una de estas formas adicionales sigue refinando la estructura de la base de datos para asegurar que los datos estén lo más normalizados posible.

## Beneficios de la Normalización

La normalización reduce la redundancia de datos, lo que ahorra espacio de almacenamiento y facilita el mantenimiento. Además, mejora la integridad de los datos al asegurar relaciones correctas entre tablas y permite implementar restricciones de integridad referencial. Aunque puede requerir más operaciones de unión, las bases de datos normalizadas suelen ser más eficientes en consultas. Por último, la normalización proporciona flexibilidad y escalabilidad al facilitar la modificación y expansión de la base de datos sin problemas de redundancia o inconsistencias