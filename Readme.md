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

# Alternativas para Instalar un Sistema de Gestión de Bases de Datos (SGBD)

En el vasto mundo de las bases de datos, elegir e instalar un Sistema de Gestión de Bases de Datos (SGBD) es un paso crucial. Ya sea que estés construyendo una pequeña aplicación o una plataforma empresarial de gran escala, existen múltiples alternativas para instalar y gestionar tu SGBD. Vamos a explorar estas opciones y descubrir cuál se adapta mejor a tus necesidades.

## Instalación Local: Control Total en Tus Manos

### 1. Instalación Directa en el Sistema Operativo

Una de las formas más comunes de instalar un SGBD es hacerlo directamente en el sistema operativo de tu servidor o computadora personal. Este método ofrece un control total sobre la configuración y el rendimiento del SGBD.

**Ventajas:**
- Control total sobre la configuración y los recursos del sistema.
- Mayor flexibilidad en la personalización del SGBD.
- Acceso directo a los archivos de la base de datos para backups y restauraciones.

**Desventajas:**
- Requiere conocimientos técnicos para la instalación y configuración.
- Mayor responsabilidad en el mantenimiento y la seguridad.

### 2. Instalación con Contenedores Docker

Docker ha revolucionado la forma en que desplegamos aplicaciones, y los SGBD no son una excepción. Utilizar contenedores Docker permite una instalación rápida y aislada del SGBD.

**Ventajas:**
- Instalación y configuración rápidas utilizando imágenes preconstruidas.
- Aislamiento del SGBD, lo que reduce los conflictos con otras aplicaciones.
- Facilidad para escalar y gestionar múltiples instancias.

**Desventajas:**
- Curva de aprendizaje inicial si no estás familiarizado con Docker.
- Rendimiento ligeramente inferior en comparación con una instalación directa en algunos casos.

## Instalación en la Nube: Escalabilidad y Flexibilidad

### 1. Servicios de Bases de Datos Administrados (DBaaS)

Los proveedores de nube como AWS, Google Cloud y Azure ofrecen servicios de bases de datos administrados (DBaaS) que eliminan la necesidad de gestionar la infraestructura subyacente. Ejemplos populares incluyen Amazon RDS, Google Cloud SQL y Azure SQL Database.

**Ventajas:**
- Configuración y despliegue rápidos.
- Gestión automatizada de backups, actualizaciones y parches de seguridad.
- Escalabilidad horizontal y vertical sin complicaciones.

**Desventajas:**
- Menor control sobre la infraestructura y la configuración específica.
- Costos adicionales en comparación con una instalación local.

### 2. Máquinas Virtuales en la Nube

Otra alternativa es instalar tu SGBD en una máquina virtual (VM) en la nube. Esto ofrece un equilibrio entre control y facilidad de gestión, ya que puedes personalizar el entorno de la VM mientras aprovechas la infraestructura de la nube.

**Ventajas:**
- Control total sobre el sistema operativo y el SGBD.
- Flexibilidad para personalizar el entorno según tus necesidades.
- Escalabilidad y disponibilidad de la infraestructura en la nube.

**Desventajas:**
- Mayor responsabilidad en la gestión de la VM y el SGBD.
- Requiere habilidades para configurar y mantener el entorno.

## Soluciones Híbridas: Lo Mejor de Ambos Mundos

### 1. Bases de Datos Híbridas

Las soluciones híbridas combinan lo mejor de las instalaciones locales y en la nube. Por ejemplo, puedes tener una base de datos principal en la nube para aprovechar la escalabilidad y una réplica local para redundancia y rendimiento.

**Ventajas:**
- Alta disponibilidad y recuperación ante desastres.
- Flexibilidad para manejar cargas de trabajo variables.
- Redundancia y menor latencia para aplicaciones críticas.

**Desventajas:**
- Mayor complejidad en la configuración y gestión.
- Costos adicionales para mantener la infraestructura híbrida.

## Elegir la Alternativa Correcta

La elección de la alternativa adecuada para instalar un SGBD depende de varios factores, incluyendo el tamaño de tu proyecto, tu presupuesto, y el nivel de control y personalización que necesitas. Aquí hay algunos consejos para ayudarte a tomar una decisión informada:

- **Proyectos Pequeños:** Si estás trabajando en un proyecto pequeño o personal, una instalación local o un contenedor Docker puede ser suficiente.
- **Empresas Medianas:** Para aplicaciones empresariales de tamaño mediano, los servicios de bases de datos administrados (DBaaS) ofrecen una buena combinación de facilidad de uso y escalabilidad.
- **Empresas Grandes:** Las grandes organizaciones con necesidades críticas pueden beneficiarse de soluciones híbridas o de máquinas virtuales en la nube para lograr alta disponibilidad y redundancia.

## Instalación de MySQL

### ¿Qué es XAMPP y por qué elegir la versión portable?

XAMPP es un paquete de software libre que incluye Apache, MySQL, PHP y Perl. Es una herramienta muy popular entre desarrolladores web porque facilita la creación de entornos de desarrollo locales. La versión portable de XAMPP es aún más conveniente ya que no requiere instalación. Puedes ejecutarla directamente desde una memoria USB o cualquier otra unidad externa.

### Ventajas de usar XAMPP Portable:
- **Sin instalación compleja:** No necesitas permisos de administrador ni modificar el registro de Windows.
- **Portabilidad:** Lleva tu servidor a cualquier lugar en una memoria USB.
- **Fácil de usar:** Interfaz amigable y configuración simple.

## Paso a paso: Instalación de MySQL con XAMPP Portable

### Paso 1: Descarga de XAMPP Portable

1. **Visita el sitio web de Apache Friends:** Ve a [Apache Friends](https://www.apachefriends.org/index.html) y dirígete a la sección de descargas.
2. **Selecciona XAMPP para Windows:** Asegúrate de elegir la versión que dice "portable".
3. **Descarga el archivo ZIP:** Haz clic en el enlace de descarga para obtener el archivo comprimido de XAMPP Portable.

### Paso 2: Extracción de XAMPP Portable

1. **Extrae el archivo ZIP:** Una vez que la descarga haya finalizado, utiliza una herramienta como WinRAR o 7-Zip para extraer el contenido del archivo ZIP.
2. **Selecciona la ubicación:** Puedes extraer XAMPP en cualquier carpeta de tu elección. Para mantener la portabilidad, es recomendable extraerlo en una memoria USB.

### Paso 3: Configuración Inicial de XAMPP

1. **Accede a la carpeta de XAMPP:** Dirígete a la carpeta donde has extraído los archivos.
2. **Ejecuta `xampp-control.exe`:** Este es el panel de control de XAMPP. Haz doble clic para abrirlo.

### Paso 4: Iniciar MySQL

1. **Inicia el Panel de Control de XAMPP:** En el panel de control, verás una lista de servicios, incluyendo Apache y MySQL.
2. **Inicia MySQL:** Haz clic en el botón "Start" junto a MySQL. Si todo va bien, deberías ver un mensaje que indica que MySQL se ha iniciado correctamente.

### Paso 5: Verificación de la Instalación

1. **Accede a phpMyAdmin:** Abre tu navegador web y escribe `http://localhost/phpmyadmin` en la barra de direcciones. Esto te llevará a phpMyAdmin, una herramienta para gestionar bases de datos MySQL.
2. **Comprueba la conexión:** Si puedes acceder a phpMyAdmin sin problemas, ¡felicidades! Has instalado MySQL con éxito utilizando XAMPP Portable.

## Tips y Trucos para Usar MySQL con XAMPP Portable

- **Administra tus bases de datos:** Utiliza phpMyAdmin para crear, modificar y eliminar bases de datos y tablas.
- **Seguridad:** Asegúrate de cambiar la contraseña predeterminada del usuario root de MySQL para proteger tu base de datos.
- **Respaldos:** Realiza copias de seguridad regulares de tus bases de datos para evitar la pérdida de datos.


## DDL: Data Definition Language (Lenguaje de Definición de Datos)

Imagina que estás construyendo una ciudad desde cero. Lo primero que necesitas es un plano detallado que defina dónde estarán los edificios, las calles, los parques, etc. En el mundo de las bases de datos, eso es exactamente lo que hace el DDL.

### Principales comandos DDL:
- **CREATE:** Este comando crea nuevas bases de datos, tablas, índices, vistas y otros objetos dentro de la base de datos. Por ejemplo, `CREATE TABLE empleados (id INT, nombre VARCHAR(50));` crea una nueva tabla llamada "empleados".
- **ALTER:** Modifica la estructura de una base de datos existente, como agregar o eliminar columnas. Ejemplo: `ALTER TABLE empleados ADD COLUMN salario DECIMAL(10, 2);`.
- **DROP:** Elimina objetos de la base de datos como tablas, vistas o índices. Ejemplo: `DROP TABLE empleados;`.
- **TRUNCATE:** Elimina todos los registros de una tabla, pero conserva su estructura. Ejemplo: `TRUNCATE TABLE empleados;`.

## DML: Data Manipulation Language (Lenguaje de Manipulación de Datos)

Una vez que nuestra ciudad está construida, necesitamos gente que viva en ella y actividades que la hagan vibrante. Aquí es donde entra en juego el DML, que permite insertar, actualizar, eliminar y recuperar datos dentro de la base de datos.

### Principales comandos DML:
- **INSERT:** Añade nuevas filas a una tabla. Ejemplo: `INSERT INTO empleados (id, nombre, salario) VALUES (1, 'Juan Pérez', 50000);`.
- **UPDATE:** Modifica los datos existentes en una tabla. Ejemplo: `UPDATE empleados SET salario = 55000 WHERE id = 1;`.
- **DELETE:** Elimina filas de una tabla. Ejemplo: `DELETE FROM empleados WHERE id = 1;`.
- **SELECT:** Recupera datos de una o más tablas. Ejemplo: `SELECT * FROM empleados;`.

## DCL: Data Control Language (Lenguaje de Control de Datos)

Ahora que nuestra ciudad está habitada y en funcionamiento, necesitamos leyes y regulaciones para mantener el orden. DCL se encarga de la gestión de permisos y seguridad en la base de datos.

### Principales comandos DCL:
- **GRANT:** Concede permisos a los usuarios para realizar ciertas acciones en la base de datos. Ejemplo: `GRANT SELECT, INSERT ON empleados TO usuario1;`.
- **REVOKE:** Revoca permisos previamente otorgados. Ejemplo: `REVOKE INSERT ON empleados FROM usuario1;`.

## TCL: Transaction Control Language (Lenguaje de Control de Transacciones)

En cualquier ciudad, es crucial que las operaciones importantes se realicen de manera segura y sin errores. TCL se encarga de gestionar las transacciones, garantizando que las operaciones en la base de datos sean consistentes y fiables.

### Principales comandos TCL:
- **COMMIT:** Guarda todas las transacciones realizadas en la base de datos. Ejemplo: `COMMIT;`.
- **ROLLBACK:** Revierte las transacciones no guardadas, devolviendo la base de datos a su estado anterior. Ejemplo: `ROLLBACK;`.
- **SAVEPOINT:** Crea un punto de guardado dentro de una transacción, permitiendo que se revierta a ese punto específico. Ejemplo: `SAVEPOINT sp1;`.
- **RELEASE SAVEPOINT:** Elimina un punto de guardado. Ejemplo: `RELEASE SAVEPOINT sp1;`.



## Comando CREATE

El comando `CREATE` pertenece al Data Definition Language (DDL) y se utiliza para crear objetos en la base de datos, como bases de datos, tablas, vistas, índices y más. Con `CREATE`, damos vida a la estructura donde almacenaremos y gestionaremos nuestros datos.

## Ejemplos Prácticos del Comando CREATE

### Crear una Base de Datos

Antes de crear tablas y otros objetos, necesitamos una base de datos para contenerlos. Imagina que estamos creando una base de datos para una tienda en línea.

```sql
CREATE DATABASE tienda_online;
```

Este comando crea una nueva base de datos llamada `tienda_online`.

### Crear una Tabla

Ahora que tenemos nuestra base de datos, vamos a crear una tabla para almacenar información sobre los productos.

```sql
CREATE TABLE productos (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT,
    precio DECIMAL(10, 2),
    stock INT,
    categoria_id INT,

);
```

Aquí, hemos creado una tabla llamada `productos` con las siguientes columnas:
- `id`: un identificador único para cada producto.
- `nombre`: el nombre del producto.
- `descripcion`: una descripción detallada del producto.
- `precio`: el precio del producto.
- `stock`: la cantidad de productos disponibles en inventario.

### Crear una Tabla con Claves Foráneas

Supongamos que también queremos almacenar información sobre las categorías de los productos y necesitamos relacionar cada producto con una categoría.

```sql
CREATE TABLE categorias (
    id INT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE productos (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT,
    precio DECIMAL(10, 2),
    stock INT,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);
```

En este ejemplo, hemos añadido una nueva tabla `categorias` y actualizado la tabla `productos` para incluir una columna `categoria_id` que hace referencia a la `id` de la tabla `categorias`.

### Crear una Vista

Las vistas nos permiten guardar consultas complejas como objetos en la base de datos. Imaginemos que queremos una vista que muestre los productos con su categoría correspondiente.

```sql
CREATE VIEW vista_productos_categorias AS
SELECT productos.id, productos.nombre, productos.precio, categorias.nombre AS categoria
FROM productos
JOIN categorias ON productos.categoria_id = categorias.id;
```

Esta vista llamada `vista_productos_categorias` nos facilita la consulta de productos junto con sus categorías.

### Crear un Índice

Los índices mejoran el rendimiento de las consultas. Supongamos que queremos crear un índice en la columna `nombre` de la tabla `productos` para acelerar las búsquedas por nombre.

```sql
CREATE INDEX idx_nombre_producto ON productos(nombre);
```

Este comando crea un índice llamado `idx_nombre_producto` en la columna `nombre` de la tabla `productos`.


## La Estructura Básica de un Query SQL

Vamos a desglosar un query SQL típico en sus componentes básicos para entender mejor cómo funciona. Tomaremos como ejemplo una consulta simple que recupera datos de una tabla.

```sql
SELECT columna1, columna2, ...
FROM nombre_tabla
WHERE condicion
GROUP BY columna
HAVING condicion
ORDER BY columna
LIMIT cantidad;
```

#### Componentes de un Query SQL

1. **SELECT**: La cláusula `SELECT` se utiliza para especificar las columnas que queremos recuperar de la base de datos.
   ```sql
   SELECT nombre, edad, ciudad
   ```

2. **FROM**: La cláusula `FROM` indica la tabla de la cual queremos recuperar los datos.
   ```sql
   FROM usuarios
   ```

3. **WHERE**: La cláusula `WHERE` se usa para filtrar los registros que cumplen con una condición específica.
   ```sql
   WHERE edad > 18
   ```

4. **GROUP BY**: Esta cláusula se utiliza para agrupar los resultados por una o más columnas.
   ```sql
   GROUP BY ciudad
   ```

5. **HAVING**: Similar a `WHERE`, pero se aplica a grupos de datos, no a registros individuales.
   ```sql
   HAVING COUNT(*) > 1
   ```

6. **ORDER BY**: Ordena los resultados por una o más columnas.
   ```sql
   ORDER BY edad DESC
   ```

7. **LIMIT**: Limita el número de registros devueltos.
   ```sql
   LIMIT 10
   ```

#### Ejemplo Completo

Ahora que hemos desglosado cada parte, veamos un ejemplo completo de un query SQL:

```sql
SELECT nombre, edad, ciudad
FROM usuarios
WHERE edad > 18
GROUP BY ciudad
HAVING COUNT(*) > 1
ORDER BY edad DESC
LIMIT 10;
```

Este query selecciona los nombres, edades y ciudades de los usuarios que tienen más de 18 años, agrupa los resultados por ciudad, filtra los grupos que tienen más de un usuario, ordena los resultados por edad en orden descendente y, finalmente, limita los resultados a 10 registros.

#### Consejo Extra: Comentarios en SQL

Los comentarios son esenciales para mantener tu código SQL organizado y comprensible. Aquí hay cómo puedes agregar comentarios en SQL:

- **Comentario de una sola línea**:
  ```sql
  -- Este es un comentario de una sola línea
  SELECT nombre FROM usuarios;
  ```

- **Comentario de múltiples líneas**:
  ```sql
  /*
    Este es un comentario
    de múltiples líneas
  */
  SELECT nombre FROM usuarios;
  ```

### SELECT

Si alguna vez te has preguntado cómo extraer información específica de una base de datos, este blog es para ti. Vamos a desglosar varios ejemplos y veremos cómo el comando `SELECT` puede adaptarse a diferentes necesidades.


El comando `SELECT` es la piedra angular del lenguaje SQL. Es el primer paso para interactuar con los datos almacenados en una base de datos relacional. Con `SELECT`, podemos elegir qué columnas queremos ver, aplicar alias para hacer nuestros resultados más legibles, contar registros y mucho más.

#### Ejemplos Prácticos de `SELECT`

Vamos a comenzar con algunos ejemplos básicos y luego avanzaremos a consultas más complejas. Todos estos ejemplos están basados en una tabla llamada `posts` que podría representar publicaciones en un blog o artículos en un sitio web.

##### Ejemplo 1: Seleccionar Todos los Campos

```sql
SELECT * 
FROM posts;
```

Este comando selecciona todas las columnas de la tabla `posts`. Es útil cuando necesitas ver todos los datos sin ninguna restricción.

##### Ejemplo 2: Seleccionar Campos Específicos

```sql
SELECT titulo, fecha_publicacion, estatus 
FROM posts;
```

Aquí, estamos seleccionando sólo las columnas `titulo`, `fecha_publicacion` y `estatus` de la tabla `posts`. Esto es útil cuando sólo necesitas ver ciertos aspectos de los datos.

##### Ejemplo 3: Usar Alias para las Columnas

```sql
SELECT titulo AS encabezado, fecha_publicacion AS publicado, estatus AS estado 
FROM posts;
```

En este ejemplo, estamos usando alias para renombrar las columnas en el resultado. `titulo` se mostrará como `encabezado`, `fecha_publicacion` como `publicado` y `estatus` como `estado`. Los alias ayudan a que los resultados sean más legibles y comprensibles.

##### Ejemplo 4: Contar el Número de Registros

```sql
SELECT count(*) 
FROM posts;
```

Esta consulta cuenta el número total de registros en la tabla `posts`. Es muy útil para obtener un recuento rápido de los elementos en una tabla.

##### Ejemplo 5: Contar Registros con un Alias

```sql
SELECT count(*) AS numero_posts 
FROM posts;
```

Similar al ejemplo anterior, pero aquí estamos usando un alias `numero_posts` para hacer el resultado más claro. El resultado será una sola columna con el nombre `numero_posts` que contiene el número total de publicaciones.

#### Combinando Consultas

Las consultas SQL pueden ser combinadas y encadenadas para realizar tareas más complejas. Por ejemplo, podrías querer contar cuántos posts hay que fueron publicados en un año específico:

```sql
SELECT COUNT(*) AS posts_2023 
FROM posts 
WHERE YEAR(fecha_publicacion) = 2023;
```

Esta consulta cuenta cuántos registros en la tabla `posts` tienen una `fecha_publicacion` en el año 2023.

#### Consejos para Escribir Consultas `SELECT` Efectivas

1. **Sé Específico**: Selecciona sólo las columnas que necesitas. Esto no solo hace que tu consulta sea más rápida, sino que también mejora la legibilidad.
2. **Usa Alias**: Los alias pueden hacer que los resultados sean más comprensibles, especialmente si las columnas tienen nombres largos o poco claros.
3. **Comenta tu Código**: Usa comentarios para explicar partes complejas de tu consulta. Esto es especialmente útil cuando vuelvas a revisar tu código más tarde o cuando otros desarrolladores lo vean.

```sql
-- Selecciona todos los posts publicados en 2023 y cuenta cuántos hay
SELECT COUNT(*) AS posts_2023 
FROM posts 
WHERE YEAR(fecha_publicacion) = 2023;
```



El comando `SELECT` es una herramienta poderosa en SQL que te permite recuperar y manipular datos de manera eficiente. Ya sea que necesites ver todos los datos de una tabla o sólo ciertas columnas, contar registros o renombrar columnas para mayor claridad, `SELECT` te da la flexibilidad para hacerlo. A medida que te familiarices más con SQL, verás cómo este comando se convierte en la base de muchas de tus consultas.

En el mundo de las bases de datos, las operaciones de combinación de tablas son esenciales para realizar consultas complejas y obtener datos significativos. En este blog, exploraremos el uso de la cláusula `FROM` y las distintas operaciones de SQL JOINs, apoyándonos en conceptos de teoría de conjuntos y diagramas de Venn para una mejor comprensión visual y conceptual.

---

### FROM

La cláusula `FROM` es esencial en cualquier consulta SQL, ya que define de qué tabla o tablas se van a recuperar los datos. Aquí tienes un ejemplo sencillo:

```sql
SELECT *
FROM posts;
```

En esta consulta, estamos seleccionando todos los registros de la tabla `posts`.



### SQL JOINs: Uniendo Tablas

Los SQL JOINs se utilizan para combinar filas de dos o más tablas basadas en una columna relacionada entre ellas. Aquí es donde la teoría de conjuntos nos ayuda a entender mejor las combinaciones posibles entre tablas.

### Teoría de Conjuntos y Diagramas de Venn

En teoría de conjuntos, un conjunto es una colección de elementos. Los diagramas de Venn son representaciones gráficas de conjuntos y sus relaciones entre sí.

![Diagrama de Venn](/SQL/src/join-diferencia.webp)
![](/SQL/src/join-interseccion.webp)
*Ejemplo de diagrama de Venn básico*

A continuación, veamos cómo se relacionan los distintos tipos de JOINs con los diagramas de Venn:



## Introducción a los JOINs

Los JOINs nos permiten combinar filas de dos o más tablas en función de una condición relacionada entre ellas. Existen varios tipos de JOINs en SQL, y cada uno se comporta de manera diferente, parecido a las operaciones en teoría de conjuntos.

### LEFT JOIN

Un `LEFT JOIN` devuelve todos los registros de la tabla de la izquierda (`usuarios`) y los registros coincidentes de la tabla de la derecha (`posts`). Si no hay coincidencias, los resultados de la tabla de la derecha serán `NULL`.

```sql
SELECT *
FROM usuarios 
LEFT JOIN posts ON usuarios.id = posts.usuario_id;
```

#### Diagrama de Venn:

![LEFT](https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Diagrama_de_Venn_11.svg/640px-Diagrama_de_Venn_11.svg.png)

En el diagrama, el conjunto `A` (usuarios) incluye todos los elementos, mientras que `B` (posts) muestra solo los elementos coincidentes. Los espacios fuera de `B` pero dentro de `A` representan los usuarios sin posts.

Para encontrar registros que no tienen coincidencias en la otra tabla, usamos las cláusulas `WHERE`.

### Usuarios sin Posts

```sql
SELECT *
FROM usuarios 
LEFT JOIN posts ON usuarios.id = posts.usuario_id
WHERE posts.usuario_id IS NULL;
```
![INNER LEFT](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Diagrama_de_Venn_07.svg/640px-Diagrama_de_Venn_07.svg.png)

### RIGHT JOIN

Un `RIGHT JOIN` es similar al `LEFT JOIN`, pero devuelve todos los registros de la tabla de la derecha y los coincidentes de la tabla de la izquierda.

```sql
SELECT *
FROM usuarios 
RIGHT JOIN posts ON usuarios.id = posts.usuario_id;
```

#### Diagrama de Venn:

![RIGHT](https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Diagrama_de_Venn_12.svg/640px-Diagrama_de_Venn_12.svg.png)

Aquí, `B` (posts) incluye todos los elementos y `A` (usuarios) muestra los coincidentes. Los espacios fuera de `A` pero dentro de `B` representan los posts sin usuarios asociados.

Para encontrar registros que no tienen coincidencias en la otra tabla, usamos las cláusulas `WHERE`.

### Posts sin Usuarios

```sql
SELECT *
FROM usuarios 
RIGHT JOIN posts ON usuarios.id = posts.usuario_id
WHERE posts.usuario_id IS NULL;
```

![INNER RIGHT](https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Diagrama_de_Venn_08.svg/640px-Diagrama_de_Venn_08.svg.png)

### INNER JOIN

Un `INNER JOIN` devuelve solo los registros que tienen coincidencias en ambas tablas.

```sql
SELECT *
FROM usuarios 
INNER JOIN posts ON usuarios.id = posts.usuario_id;
```

#### Diagrama de Venn:

![INNER JOIN](https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Diagrama_de_Venn_10.svg/640px-Diagrama_de_Venn_10.svg.png)

El área `X` (intersección) muestra solo los registros coincidentes en ambas tablas `A` (usuarios) y `B` (posts).

### FULL JOIN

Un `FULL JOIN` devuelve todos los registros cuando hay una coincidencia en una de las tablas. Si no hay coincidencias, devuelve `NULL` en el lado de la tabla que no tiene coincidencias.

```sql
SELECT *
FROM usuarios 
LEFT JOIN posts ON usuarios.id = posts.usuario_id
UNION 
SELECT *
FROM usuarios 
RIGHT JOIN posts ON usuarios.id = posts.usuario_id;
```

#### Diagrama de Venn:

![FULL JOIN](https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Diagrama_de_Venn_13.svg/640px-Diagrama_de_Venn_13.svg.png)

El diagrama muestra todos los elementos de ambos conjuntos `A` (usuarios) y `B` (posts), con coincidencias e inclusiones totales.

### Diferencia simétrica

```SQL
SELECT	*
FROM	usuarios 
	LEFT JOIN posts on usuarios.id = posts.usuario_id
WHERE	posts.usuario_id IS NULL
UNION
SELECT	*
FROM	usuarios 
	RIGHT JOIN posts on usuarios.id = posts.usuario_id
WHERE	posts.usuario_id IS NULL;
```
![JOIN DIFERENCIA](https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/Diagrama_de_Venn_09.svg/640px-Diagrama_de_Venn_09.svg.png)

En resumen, los JOINs en SQL nos permiten manipular y analizar datos distribuidos en múltiples tablas. Al comprender la teoría de conjuntos y visualizar estos conceptos con diagramas de Venn, podemos profundizar en cómo funcionan estas combinaciones y aplicar estas técnicas de manera efectiva en nuestras bases de datos.

![MEME](/SQL/src/meme-joins.jpg)

### WHERE

La cláusula `WHERE` se utiliza en SQL para filtrar registros en una consulta basándose en una condición específica. Al usar `WHERE`, puedes seleccionar sólo aquellos registros que cumplen ciertos criterios, lo que te permite trabajar de manera más eficiente y efectiva con tus datos.

#### Ejemplos Prácticos de `WHERE`

Vamos a explorar varios ejemplos usando una tabla llamada `posts`, que podría contener información sobre publicaciones en un blog o artículos en un sitio web.

##### Ejemplo 1: Filtrar por ID

```sql
SELECT *
FROM posts
WHERE id < 50;
```

En este ejemplo, estamos seleccionando todas las columnas de la tabla `posts` donde el `id` es menor que 50. Esto es útil cuando quieres ver sólo los primeros registros de tu tabla.

##### Ejemplo 2: Filtrar por Estatus

```sql
SELECT *
FROM posts
WHERE estatus = 'Inactivo';
```

Aquí, estamos seleccionando todas las publicaciones donde el estatus es 'Inactivo'. Esto te permite enfocarte en las publicaciones que no están activas en tu sitio.

##### Ejemplo 3: Filtrar por Palabra Clave en el Título

```sql
SELECT *
FROM posts
WHERE titulo LIKE '%escandalo%';
```

Esta consulta selecciona todas las publicaciones cuyo título contiene la palabra 'escandalo'. El operador `LIKE` y los comodines `%` te permiten buscar patrones dentro de los textos.

##### Ejemplo 4: Filtrar por Fecha de Publicación

```sql
SELECT *
FROM posts
WHERE fecha_publicacion > '2025-01-01';
```

En este caso, estamos seleccionando todas las publicaciones cuya fecha de publicación es posterior al 1 de enero de 2025. Esto es útil para obtener posts recientes o futuros.

##### Ejemplo 5: Filtrar por Rango de Fechas

```sql
SELECT *
FROM posts
WHERE fecha_publicacion BETWEEN '2023-01-01' AND '2025-12-31';
```

Esta consulta selecciona todas las publicaciones cuyas fechas de publicación están entre el 1 de enero de 2023 y el 31 de diciembre de 2025. El operador `BETWEEN` facilita la selección de un rango de valores.

##### Ejemplo 6: Filtrar por Año de Publicación

```sql
SELECT *
FROM posts
WHERE YEAR(fecha_publicacion) BETWEEN '2023' AND '2024';
```

Aquí, estamos seleccionando todas las publicaciones cuyos años de publicación están entre 2023 y 2024. La función `YEAR` extrae el año de la fecha de publicación.

##### Ejemplo 7: Filtrar por Mes de Publicación

```sql
SELECT *
FROM posts
WHERE MONTH(fecha_publicacion) = '04';
```

En esta consulta, estamos seleccionando todas las publicaciones que fueron publicadas en el mes de abril, independientemente del año. La función `MONTH` extrae el mes de la fecha de publicación.

##### Ejemplo 8: Filtrar Registros No Nulos

```sql
SELECT *
FROM posts
WHERE usuario_id IS NOT NULL;
```

Esta consulta selecciona todas las publicaciones donde `usuario_id` no es nulo. Esto te permite enfocarte en los posts que tienen un usuario asociado.

##### Ejemplo 9: Filtrar Registros Nulos

```sql
SELECT *
FROM posts
WHERE usuario_id IS NULL;
```

Por último, esta consulta selecciona todas las publicaciones donde `usuario_id` es nulo. Esto es útil para identificar posts que no tienen un usuario asociado.



## GROUP BY

La cláusula `GROUP BY` se utiliza en SQL para agrupar filas que tienen valores iguales en una o más columnas. Esto te permite realizar cálculos agregados como `COUNT`, `SUM`, `AVG`, `MAX`, y `MIN` en grupos de datos, proporcionando un resumen conciso de tu información.

#### Ejemplos Prácticos de `GROUP BY`

Vamos a trabajar con una tabla llamada `posts`, que podría contener información sobre publicaciones en un blog o artículos en un sitio web.

##### Ejemplo 1: Agrupar por Estatus

```sql
SELECT estatus, COUNT(*) AS post_number
FROM posts
GROUP BY estatus;
```

En este ejemplo, estamos seleccionando el estatus de las publicaciones y contando cuántas publicaciones hay para cada estatus. Esto te permite ver cuántas publicaciones están activas, inactivas, etc.

##### Ejemplo 2: Agrupar por Año de Publicación

```sql
SELECT YEAR(fecha_publicacion) AS post_year, COUNT(*) AS post_number
FROM posts
GROUP BY post_year;
```

Aquí, estamos agrupando las publicaciones por el año de publicación y contando cuántas publicaciones hay en cada año. Esto es útil para obtener un resumen anual de tus publicaciones.

##### Ejemplo 3: Agrupar por Mes de Publicación

```sql
SELECT MONTHNAME(fecha_publicacion) AS post_month, COUNT(*) AS post_number
FROM posts
GROUP BY post_month;
```

En esta consulta, estamos agrupando las publicaciones por el nombre del mes de publicación y contando cuántas publicaciones hay en cada mes. Esto te proporciona un resumen mensual de tus publicaciones.

##### Ejemplo 4: Agrupar por Estatus y Mes de Publicación

```sql
SELECT estatus, MONTHNAME(fecha_publicacion) AS post_date, COUNT(*) AS post_number
FROM posts
GROUP BY estatus, post_date;
```

Esta consulta agrupa las publicaciones por estatus y por el nombre del mes de publicación, contando cuántas publicaciones hay para cada combinación de estatus y mes. Esto te permite ver la distribución de publicaciones activas e inactivas a lo largo de los meses.

#### Ventajas de Usar `GROUP BY`

- **Resúmenes de Datos**: `GROUP BY` te permite crear resúmenes de datos, lo que es esencial para el análisis y la generación de informes.
- **Cálculos Agregados**: Puedes realizar cálculos agregados como `COUNT`, `SUM`, `AVG`, etc., en tus datos agrupados.
- **Organización**: Agrupar datos te ayuda a organizar y entender mejor tus datos, proporcionando una visión más clara de las tendencias y patrones.

#### Consideraciones al Usar `GROUP BY`

- **Orden de las Columnas**: El orden de las columnas en `GROUP BY` es importante y afecta cómo se agrupan los datos.
- **Funciones Agregadas**: Asegúrate de usar funciones agregadas adecuadas al seleccionar columnas que no están incluidas en `GROUP BY`.
- **Rendimiento**: Agrupar grandes conjuntos de datos puede ser intensivo en recursos, así que optimiza tus consultas y bases de datos para un rendimiento eficiente.



## ORDER BY

La cláusula `ORDER BY` se utiliza para ordenar los resultados de una consulta SQL en orden ascendente (ASC) o descendente (DESC) basado en una o más columnas.

### Ejemplos de `ORDER BY`

#### Ordenar por Fecha de Publicación Ascendente

```sql
SELECT *
FROM posts
ORDER BY fecha_publicacion ASC;
```

Esta consulta ordena todas las publicaciones por la fecha de publicación en orden ascendente (de la más antigua a la más reciente).

#### Ordenar por Fecha de Publicación Descendente

```sql
SELECT *
FROM posts
ORDER BY fecha_publicacion DESC;
```

Aquí, las publicaciones se ordenan por fecha de publicación en orden descendente (de la más reciente a la más antigua).

#### Ordenar por Título Ascendente

```sql
SELECT *
FROM posts
ORDER BY titulo ASC;
```

En este caso, las publicaciones se ordenan alfabéticamente por título en orden ascendente.

#### Ordenar por Título Descendente

```sql
SELECT *
FROM posts
ORDER BY titulo DESC;
```

Esta consulta ordena las publicaciones alfabéticamente por título en orden descendente.

#### Ordenar por Usuario ID y Limitar Resultados

```sql
SELECT *
FROM posts
ORDER BY usuario_id ASC
LIMIT 5;
```

Esta consulta ordena las publicaciones por el ID de usuario en orden ascendente y muestra solo las primeras 5 publicaciones.

#### Ordenar por Mes de Publicación y Agrupar por Estatus

```sql
SELECT MONTHNAME(fecha_publicacion) AS post_month, estatus, COUNT(*) AS post_quantity
FROM posts
GROUP BY estatus, post_month
ORDER BY post_month;
```

Esta consulta agrupa las publicaciones por estatus y mes de publicación, luego las ordena por el mes de publicación.

## Filtrando Grupos con `HAVING`

La cláusula `HAVING` se utiliza para filtrar grupos de resultados creados por la cláusula `GROUP BY`. A diferencia de `WHERE`, que filtra filas antes de la agrupación, `HAVING` filtra grupos después de la agrupación.

### Ejemplos de `HAVING`

#### Filtrar Publicaciones con Cantidad Mayor a 1 (Uso Incorrecto)

```sql
SELECT MONTHNAME(fecha_publicacion) AS post_month, estatus, COUNT(*) AS post_quantity
FROM posts
WHERE post_quantity > 1
GROUP BY estatus, post_month
ORDER BY post_month;
```

Esta consulta arrojará un error porque `post_quantity` no se define hasta que los datos se agrupan. La cláusula `WHERE` no puede usar el resultado de una función agregada.

#### Filtrar Publicaciones con Cantidad Mayor a 1 (Uso Correcto)

```sql
SELECT MONTHNAME(fecha_publicacion) AS post_month, estatus, COUNT(*) AS post_quantity
FROM posts
GROUP BY estatus, post_month
HAVING post_quantity > 1
ORDER BY post_month;
```

Esta consulta agrupa las publicaciones por estatus y mes de publicación, y luego filtra los grupos que tienen más de una publicación. Finalmente, ordena los resultados por mes de publicación.

## Ventajas de Usar `ORDER BY` y `HAVING`

- **Precisión**: Ordenar y filtrar datos te permite obtener resultados más precisos y relevantes.
- **Organización**: Mejora la legibilidad y comprensión de los resultados de tus consultas.
- **Flexibilidad**: Combinar `ORDER BY` con `HAVING` y otras cláusulas SQL te proporciona una gran flexibilidad para realizar análisis complejos.

# Consultas Anidadas en SQL

Hoy vamos a explorar un tema fascinante y un poco más avanzado: las consultas anidadas, también conocidas como subconsultas. Estas poderosas herramientas nos permiten realizar consultas dentro de otras consultas, permitiéndonos extraer y analizar datos de maneras más complejas y detalladas. Es como adentrarse en el interminable agujero de conejo de Alicia en el País de las Maravillas, donde cada capa nos revela algo nuevo y emocionante.

## ¿Qué son las Consultas Anidadas?

Las consultas anidadas son consultas SQL que se encuentran dentro de otra consulta. Pueden estar en la cláusula `SELECT`, `FROM`, `WHERE`, `HAVING`, o incluso `ORDER BY`. Se utilizan para devolver un conjunto de resultados que luego se utilizan por la consulta externa. Las subconsultas pueden ser de dos tipos: subconsultas de una sola fila, que devuelven un único valor, y subconsultas de varias filas, que pueden devolver múltiples filas y columnas.

### Ejemplo 1: Subconsulta en la Cláusula `FROM`

Veamos un ejemplo donde utilizamos una subconsulta en la cláusula `FROM`. Esta subconsulta calcula la fecha mínima de publicación por año, y luego la consulta externa cuenta las publicaciones para cada una de esas fechas.

```sql
SELECT new_table_projection.date, COUNT(*) AS posts_count
FROM (
    SELECT DATE(MIN(fecha_publicacion)) AS date, YEAR(fecha_publicacion) AS post_year
    FROM posts
    GROUP BY post_year
) AS new_table_projection
GROUP BY new_table_projection.date 
ORDER BY new_table_projection.date;
```

### Desglose del Ejemplo

1. **Subconsulta en `FROM`**:
    ```sql
    SELECT DATE(MIN(fecha_publicacion)) AS date, YEAR(fecha_publicacion) AS post_year
    FROM posts
    GROUP BY post_year
    ```
    Esta subconsulta selecciona la fecha mínima de publicación (`MIN(fecha_publicacion)`) y el año de la fecha de publicación (`YEAR(fecha_publicacion)`) para cada año.

2. **Consulta Externa**:
    ```sql
    SELECT new_table_projection.date, COUNT(*) AS posts_count
    FROM (...)
    GROUP BY new_table_projection.date 
    ORDER BY new_table_projection.date;
    ```
    La consulta externa utiliza los resultados de la subconsulta y cuenta el número de publicaciones (`COUNT(*)`) para cada fecha mínima de publicación.

### Ejemplo 2: Subconsulta en la Cláusula `WHERE`

En este ejemplo, utilizamos una subconsulta en la cláusula `WHERE` para encontrar la publicación más reciente.

```sql
SELECT *
FROM posts
WHERE fecha_publicacion = (
    SELECT MAX(fecha_publicacion)
    FROM posts
);
```

### Desglose del Ejemplo

1. **Subconsulta en `WHERE`**:
    ```sql
    SELECT MAX(fecha_publicacion)
    FROM posts
    ```
    Esta subconsulta selecciona la fecha de publicación más reciente (`MAX(fecha_publicacion)`).

2. **Consulta Externa**:
    ```sql
    SELECT *
    FROM posts
    WHERE fecha_publicacion = (...);
    ```
    La consulta externa selecciona todas las publicaciones donde la fecha de publicación es igual a la fecha más reciente devuelta por la subconsulta.

### Ejemplo 3: Subconsulta Simple

A veces, una simple subconsulta puede proporcionar información útil de forma directa. Aquí hay un ejemplo simple que selecciona la fecha de publicación más reciente.

```sql
SELECT MAX(fecha_publicacion)
FROM posts;
```

## Ventajas de las Consultas Anidadas

- **Flexibilidad**: Permiten realizar análisis complejos y detallados que serían difíciles de lograr con consultas simples.
- **Modularidad**: Facilitan la creación de consultas reutilizables y modulares.
- **Precisión**: Ayudan a extraer datos específicos y precisos al combinar múltiples niveles de filtrado y agregación.

# Convertir Preguntas en Consultas SQL: Guía Creativa

vamos a sumergirnos en el fascinante proceso de convertir preguntas cotidianas en consultas SQL eficaces. A menudo, trabajar con bases de datos implica formular preguntas específicas y luego traducirlas a un lenguaje que la base de datos pueda entender: SQL. Vamos a explorar cómo hacer esto paso a paso utilizando ejemplos prácticos.

## Pasos Básicos para Convertir una Pregunta en una Consulta SQL

Antes de comenzar con los ejemplos, es importante entender los componentes básicos de una consulta SQL y cómo se alinean con las preguntas que queremos hacer:

1. **SELECT**: Lo que quieres mostrar.
2. **FROM**: De dónde vas a tomar los datos.
3. **WHERE**: Los filtros de los datos que quieres mostrar.
4. **GROUP BY**: Los rubros por los que te interesa agrupar la información.
5. **ORDER BY**: El orden en que quieres presentar la información.
6. **HAVING**: Los filtros que quieres que tus datos agrupados tengan.

### Ejemplo 1: ¿Cuántos tags tienen cada post?

Pregunta: "¿Cuántos tags tienen cada post?"

```sql
SELECT  posts.titulo, COUNT(*) AS num_etiquetas
FROM    posts
    INNER JOIN posts_etiquetas ON posts.id = posts_etiquetas.post_id
    INNER JOIN etiquetas ON etiquetas.id = posts_etiquetas.etiqueta_id
GROUP BY posts.id;
```

- **SELECT**: Queremos mostrar el título del post (`posts.titulo`) y el número de etiquetas (`COUNT(*)`).
- **FROM**: Los datos provienen de las tablas `posts`, `posts_etiquetas` y `etiquetas`.
- **INNER JOIN**: Necesitamos combinar estas tablas para obtener la relación entre posts y etiquetas.
- **GROUP BY**: Agrupamos por el ID del post (`posts.id`).

### Ejemplo 2: ¿Cuál es el tag que más se repite?

Pregunta: "¿Cuál es el tag que más se repite?"

```sql
SELECT  etiquetas.nombre_etiqueta, COUNT(*) AS ocurrencias
FROM etiquetas
    INNER JOIN posts_etiquetas ON etiquetas.id = posts_etiquetas.etiqueta_id
GROUP BY etiquetas.id
ORDER BY ocurrencias DESC;
```

- **SELECT**: Mostramos el nombre de la etiqueta (`etiquetas.nombre_etiqueta`) y su número de ocurrencias (`COUNT(*)`).
- **FROM**: Los datos provienen de `etiquetas` y `posts_etiquetas`.
- **INNER JOIN**: Combinamos las tablas `etiquetas` y `posts_etiquetas`.
- **GROUP BY**: Agrupamos por el ID de la etiqueta (`etiquetas.id`).
- **ORDER BY**: Ordenamos los resultados por el número de ocurrencias en orden descendente (`ocurrencias DESC`).

### Ejemplo 3: Los tags que tiene un post separados por comas

Pregunta: "¿Cuáles son los tags que tiene cada post, separados por comas?"

```sql
SELECT  posts.titulo, GROUP_CONCAT(nombre_etiqueta)
FROM    posts
    INNER JOIN posts_etiquetas ON posts.id = posts_etiquetas.post_id
    INNER JOIN etiquetas ON etiquetas.id = posts_etiquetas.etiqueta_id
GROUP BY posts.id;
```

- **SELECT**: Mostramos el título del post (`posts.titulo`) y concatenamos los nombres de las etiquetas (`GROUP_CONCAT(nombre_etiqueta)`).
- **FROM**: Los datos provienen de las tablas `posts`, `posts_etiquetas` y `etiquetas`.
- **INNER JOIN**: Necesitamos combinar estas tablas para obtener la relación entre posts y etiquetas.
- **GROUP BY**: Agrupamos por el ID del post (`posts.id`).

### Ejemplo 4: ¿Qué etiqueta no tiene ningún post asociado?

Pregunta: "¿Qué etiqueta no tiene ningún post asociado?"

```sql
SELECT *
FROM etiquetas 
LEFT JOIN posts_etiquetas ON etiquetas.id = posts_etiquetas.etiqueta_id
WHERE posts_etiquetas.etiqueta_id IS NULL;
```

- **SELECT**: Mostramos todas las columnas de la tabla `etiquetas`.
- **FROM**: Los datos provienen de las tablas `etiquetas` y `posts_etiquetas`.
- **LEFT JOIN**: Usamos un `LEFT JOIN` para asegurarnos de incluir todas las etiquetas, incluso aquellas sin posts asociados.
- **WHERE**: Filtramos las etiquetas donde `posts_etiquetas.etiqueta_id` es `NULL`, es decir, etiquetas sin posts.

### Ejemplo 5: Las categorías ordenadas por número de posts

Pregunta: "¿Cuáles son las categorías ordenadas por número de posts?"

```sql
SELECT c.nombre_categoria, COUNT(*) AS cant_posts
FROM    categorias AS c
    INNER JOIN posts AS p ON c.id = p.categoria_id
GROUP BY c.id
ORDER BY cant_posts DESC;
```

- **SELECT**: Mostramos el nombre de la categoría (`c.nombre_categoria`) y el número de posts (`COUNT(*)`).
- **FROM**: Los datos provienen de las tablas `categorias` y `posts`.
- **INNER JOIN**: Combinamos las tablas `categorias` y `posts`.
- **GROUP BY**: Agrupamos por el ID de la categoría (`c.id`).
- **ORDER BY**: Ordenamos los resultados por el número de posts en orden descendente (`cant_posts DESC`).

### Ejemplo 6: ¿Cuál es la categoría que tiene más posts?

Pregunta: "¿Cuál es la categoría que tiene más posts?"

```sql
SELECT c.nombre_categoria, COUNT(*) AS cant_posts
FROM    categorias AS c
    INNER JOIN posts AS p ON c.id = p.categoria_id
GROUP BY c.id
ORDER BY cant_posts DESC
LIMIT 1;
```

- **SELECT**: Mostramos el nombre de la categoría (`c.nombre_categoria`) y el número de posts (`COUNT(*)`).
- **FROM**: Los datos provienen de las tablas `categorias` y `posts`.
- **INNER JOIN**: Combinamos las tablas `categorias` y `posts`.
- **GROUP BY**: Agrupamos por el ID de la categoría (`c.id`).
- **ORDER BY**: Ordenamos los resultados por el número de posts en orden descendente (`cant_posts DESC`).
- **LIMIT**: Limitamos el resultado a una fila (`LIMIT 1`).

### Ejemplo 7: ¿Qué usuario ha contribuido con más posts?

Pregunta: "¿Qué usuario ha contribuido con más posts?"

```sql
SELECT u.nickname, COUNT(*) AS cant_posts
FROM    usuarios AS u
    INNER JOIN posts AS p ON u.id = p.usuario_id
GROUP BY u.id
ORDER BY cant_posts DESC
LIMIT 1;
```

- **SELECT**: Mostramos el apodo del usuario (`u.nickname`) y el número de posts (`COUNT(*)`).
- **FROM**: Los datos provienen de las tablas `usuarios` y `posts`.
- **INNER JOIN**: Combinamos las tablas `usuarios` y `posts`.
- **GROUP BY**: Agrupamos por el ID del usuario (`u.id`).
- **ORDER BY**: Ordenamos los resultados por el número de posts en orden descendente (`cant_posts DESC`).
- **LIMIT**: Limitamos el resultado a una fila (`LIMIT 1`).

### Ejemplo 8: ¿De qué categorías escribe cada usuario?

Pregunta: "¿De qué categorías escribe cada usuario?"

```sql
SELECT u.nickname, COUNT(*) AS cant_posts,  GROUP_CONCAT(nombre_categoria)
FROM    usuarios AS u
    INNER JOIN posts AS p ON u.id = p.usuario_id
    INNER JOIN categorias AS c ON c.id = p.categoria_id
GROUP BY u.id;
```

- **SELECT**: Mostramos el apodo del usuario (`u.nickname`), el número de posts (`COUNT(*)`) y las categorías (`GROUP_CONCAT(nombre_categoria)`).
- **FROM**: Los datos provienen de las tablas `usuarios`, `posts` y `categorias`.
- **INNER JOIN**: Combinamos las tablas `usuarios`, `posts` y `categorias`.
- **GROUP BY**: Agrupamos por el ID del usuario (`u.id`).

### Ejemplo 9: ¿Qué usuario no tiene ningún post asociado?

Pregunta: "¿Qué usuario no tiene ningún post asociado?"

```sql
SELECT *
FROM usuarios 
LEFT JOIN posts ON usuarios.id = posts.usuario_id
WHERE posts.usuario_id IS NULL;
```

- **SELECT**: Mostramos todas las columnas de la tabla `usuarios`.
- **FROM**: Los datos provienen de las tablas `usuarios` y `posts`.
- **LEFT JOIN**: Usamos un `LEFT JOIN` para asegurarnos de incluir todos los usuarios, incluso aquellos sin posts asociados.
- **WHERE**: Filtramos los usuarios donde `posts.usuario_id` es `NULL`, es decir, usuarios sin posts.
