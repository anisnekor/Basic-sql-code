-- Crear la base de datos de la escuela
CREATE DATABASE Escuela;

-- Usar la base de datos recién creada
USE Escuela;

-- Tabla de Estudiantes
CREATE TABLE Estudiantes (
    EstudianteID INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    FechaNacimiento DATE,
    Direccion VARCHAR(100),
    Telefono VARCHAR(15)
);

-- Tabla de Cursos
CREATE TABLE Cursos (
    CursoID INT PRIMARY KEY,
    NombreCurso VARCHAR(100),
    Instructor VARCHAR(50)
);

-- Tabla de Calificaciones
CREATE TABLE Calificaciones (
    CalificacionID INT PRIMARY KEY,
    EstudianteID INT,
    CursoID INT,
    Calificacion DECIMAL(3, 2),
    FOREIGN KEY (EstudianteID) REFERENCES Estudiantes(EstudianteID),
    FOREIGN KEY (CursoID) REFERENCES Cursos(CursoID)
);

-- Tabla de Profesores
CREATE TABLE Profesores (
    ProfesorID INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Especialidad VARCHAR(100)
);

-- Tabla de Asignación de Cursos a Profesores
CREATE TABLE AsignacionCursos (
    AsignacionID INT PRIMARY KEY,
    ProfesorID INT,
    CursoID INT,
    FOREIGN KEY (ProfesorID) REFERENCES Profesores(ProfesorID),
    FOREIGN KEY (CursoID) REFERENCES Cursos(CursoID)
);

