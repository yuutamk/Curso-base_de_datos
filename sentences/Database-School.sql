CREATE TABLE Alumnos (
    ID_Alumno INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Fecha_Nacimiento DATE,
    Dirección VARCHAR(100),
    Teléfono VARCHAR(15),
    Email VARCHAR(50),
    Matricula VARCHAR(10) UNIQUE,
    Especialidad VARCHAR(20),
    Documentos_SEP TEXT,
    Pago_Vacaciones BOOLEAN,
    Estado_Colegiatura VARCHAR(20),
    Historial_Calificaciones TEXT
);

CREATE TABLE Profesores (
    ID_Profesor INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Especialidad VARCHAR(20),
    Teléfono VARCHAR(15),
    Email VARCHAR(50),
    Matricula VARCHAR(10) UNIQUE,
    Pago_Nomina BOOLEAN,
    Materias_Impartidas TEXT,
    Grupos_Impartidos TEXT
);

CREATE TABLE Materias (
    ID_Materia INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Especialidad VARCHAR(20),
    Descripción TEXT
);

CREATE TABLE Grupos (
    ID_Grupo INT PRIMARY KEY,
    Nombre VARCHAR(50),
    ID_Profesor INT,
    ID_Materia INT,
    Horario VARCHAR(50),
    Especialidad VARCHAR(20),
    FOREIGN KEY (ID_Profesor) REFERENCES Profesores(ID_Profesor),
    FOREIGN KEY (ID_Materia) REFERENCES Materias(ID_Materia)
);

CREATE TABLE Inscripciones (
    ID_Inscripcion INT PRIMARY KEY,
    ID_Alumno INT,
    ID_Grupo INT,
    Fecha_Inscripcion DATE,
    FOREIGN KEY (ID_Alumno) REFERENCES Alumnos(ID_Alumno),
    FOREIGN KEY (ID_Grupo) REFERENCES Grupos(ID_Grupo)
);

CREATE TABLE Calificaciones (
    ID_Calificacion INT PRIMARY KEY,
    ID_Inscripcion INT,
    Practica FLOAT,
    Disciplina FLOAT,
    Examen FLOAT,
    Examen_Oral FLOAT,
    Promedio_Final FLOAT,
    FOREIGN KEY (ID_Inscripcion) REFERENCES Inscripciones(ID_Inscripcion)
);

CREATE TABLE Pagos (
    ID_Pago INT PRIMARY KEY,
    ID_Alumno INT,
    Fecha_Pago DATE,
    Monto DECIMAL(10, 2),
    Concepto VARCHAR(50),
    Estado_Pago VARCHAR(20),
    FOREIGN KEY (ID_Alumno) REFERENCES Alumnos(ID_Alumno)
);

CREATE TABLE Asistencias (
    ID_Asistencia INT PRIMARY KEY,
    ID_Grupo INT,
    ID_Alumno INT,
    Fecha DATE,
    Asistencia VARCHAR(10),
    FOREIGN KEY (ID_Grupo) REFERENCES Grupos(ID_Grupo),
    FOREIGN KEY (ID_Alumno) REFERENCES Alumnos(ID_Alumno)
);


TABLE Carreras

TABLE Ciclo_escolar

TABLE Becas


@ 