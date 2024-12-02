SELECT * FROM demo;

-- Tabla para almacenar información de productos

CREATE TABLE productos (

id INT PRIMARY KEY,

nombre VARCHAR(100) NOT NULL,

descripcion TEXT,

precio DECIMAL(10, 2) NOT NULL,

cantidad_disponible INT NOT NULL

);

-- Tabla para almacenar información de clientes

CREATE TABLE clientes (

id INT PRIMARY KEY,

nombre VARCHAR(100) NOT NULL,

email VARCHAR(100) NOT NULL,

telefono VARCHAR(20)

);

-- Tabla para almacenar información de colores

CREATE TABLE colores (

id INT PRIMARY KEY,

nombre VARCHAR(50) NOT NULL

);

-- Tabla para almacenar información de marcas

CREATE TABLE marcas (

id INT PRIMARY KEY,

nombre VARCHAR(50) NOT NULL

);

-- Tabla para almacenar información de inventario

CREATE TABLE inventario (

id INT PRIMARY KEY,

id_producto INT NOT NULL,

id_color INT NOT NULL,

id_marca INT NOT NULL,

FOREIGN KEY (id_producto) REFERENCES productos(id),

FOREIGN KEY (id_color) REFERENCES colores(id),

FOREIGN KEY (id_marca) REFERENCES marcas(id)

);