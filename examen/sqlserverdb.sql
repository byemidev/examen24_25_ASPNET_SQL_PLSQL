-- Drop the existing database named 'ACADEMIA' if it exists
-- IF EXISTS (SELECT * FROM sys.databases WHERE name = 'ACADEMIA')
-- BEGIN
   -- DROP DATABASE ACADEMIA;
-- END

-- Create a new database named 'ACADEMIA'
CREATE DATABASE ACADEMIA;

-- Switch to the newly created database 'ACADEMIA'
USE ACADEMIA;

-- Define the 'ALUMNO' table
CREATE TABLE ALUMNO
(
    id_alumno INT IDENTITY(1, 1) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido1 VARCHAR(50) NOT NULL,
    apellido2 VARCHAR(50) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    telefono VARCHAR(12)
);

-- Insert data into the 'ALUMNO' table
INSERT INTO ALUMNO (nombre, apellido1, apellido2, direccion, fecha_nacimiento, telefono)
VALUES
('María', 'García', 'Pérez', 'C/ Mayor, 12', '2005-08-14', '654321789'),
('Alejandro', 'López', 'Gómez', 'C/ La Paz, 34', '2007-03-25', '612345678'),
('Sandra', 'Martin', 'Martínez', 'C/ San Miguel, 20', '1994-06-10', '603455589'),
('Sandra', 'Fernández', 'Martínez', 'C/ San Miguel, 56', '2009-06-10', '603456789');

-- Define the 'CURSO' table
CREATE TABLE CURSO
(
    id_curso INT IDENTITY(1, 1) PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    anno_imparticion VARCHAR(4) NOT NULL,
    profesor VARCHAR(255) NOT NULL
);

-- Insert data into the 'CURSO' table
INSERT INTO CURSO (nombre, anno_imparticion, profesor)
VALUES
('Desarrollo Web Full Stack con JavaScript', '2024', 'Luis Fernández'),
('Diseño Gráfico Digital con Photoshop e Illustrator', '2023', 'Ana Martínez'),
('Marketing Digital para Redes Sociales', '2024', 'David Gómez'),
('Inglés Intensivo para Negocios', '2024', 'Clara Pérez'),
('IFCT0112 Programacion Java', '2001', 'Pedro Perez'),
('IFCD09 Programacion Orientada a Objetos con Java', '1999', 'Alberlo Maroto'),
('IFCD110 Confeccion y publicacion de Paginas Web', '1994', 'Alonso Cano'),
('IFCM0410 Supervision de alarmas en redes de comunicaciones', '2006', 'Juan Paez');

-- Define the 'MATRICULA' table
CREATE TABLE MATRICULA
(
    id_curso INT NOT NULL,
    id_alumno INT NOT NULL,
    fecha_matriculacion DATE NOT NULL,
    PRIMARY KEY (id_alumno, id_curso),
    FOREIGN KEY (id_curso) REFERENCES CURSO(id_curso),
    FOREIGN KEY (id_alumno) REFERENCES ALUMNO(id_alumno)
);

-- Insert data into the 'MATRICULA' table
INSERT INTO MATRICULA (id_curso, id_alumno, fecha_matriculacion)
VALUES
(1, 1, '2024-04-25'),
(2, 2, '2024-06-25'),
(4, 4, '2024-06-25'),
(5, 1, '2024-06-25');
