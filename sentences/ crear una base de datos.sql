CREATE DATABASE nombreDB;

SELECT * FROM nombreDB;

CREATE TABLE productos (
    PKPRODUCTO INT PRIMARY KEY,
    id_producto VARCHAR (20),
    descripcion TEXT
);

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    email VARCHAR(100),
    load_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

--Crear tabla de instructores
CREATE TABLE instructors (
    
)

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    descripcion TEXT,
    instructor_id INT,
    load_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (instructor_id) REFERENCES instructors (instructor_id)

)

