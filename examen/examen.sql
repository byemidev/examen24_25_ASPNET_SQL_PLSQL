DROP DATABASE ACADEMIA;
CREATE DATABASE ACADEMIA;

USE ACADEMIA;


-- deficion de tabla ALUMNO
CREATE TABLE ALUMNO (
 id_alumno INT AUTO_INCREMENT, 
 nombre VARCHAR(50), 
 apellido1 VARCHAR(50),
 apellido2 VARCHAR(50), 
 direccion VARCHAR(255), 
 fecha_nacimiento DATE NOT NULL, 
 telefono VARCHAR(12),
 CONSTRAINT PK_ALUMNO PRIMARY KEY (id_alumno)
);

-- inserccion de datos para alumno
INSERT INTO ALUMNO (nombre, apellido1, apellido2, direccion, fecha_nacimiento, telefono) VALUES 
("María", "García", "Pérez", "C/ Mayor, 12", "2005-08-14", "654321789"),
("Alejandro", "López", "Gómez", "C/ La Paz, 34", "2007-03-25", "612345678"),
("Sandra", "Martin", "Martínez", "C/ San Miguel, 20", "1994-06-10", "603455589"),
("Sandra", "Fernández", "Martínez", "C/ San Miguel, 56", "2009-06-10", "603456789");

-- definicion tabla CURSO 

CREATE TABLE CURSO (
	id_curso INT AUTO_INCREMENT, 
	nombre VARCHAR(255), 
	anno_imparticion VARCHAR(4), 
	profesor VARCHAR(255), 
	CONSTRAINT PK_CURSO PRIMARY KEY (id_curso)	
);

-- inserccion de datos para curso
INSERT INTO CURSO (nombre, anno_imparticion, profesor) VALUES 
("Desarrollo Web Full Stack con JavaScript", "2024", "Luis Fernández"),
("Diseño Gráfico Digital con Photoshop e Illustrator", "2023", "Ana Martínez"),
("Marketing Digital para Redes Sociales", "2024", "David Gómez"),
("Inglés Intensivo para Negocios", "2024", "Clara Pérez");

-- definicion de tabla matricula 
CREATE TABLE MATRICULA (
	id_curso INT NOT NULL,
	id_alumno INT NOT NULL,
	fecha_matriculacion DATE NOT NULL,
	CONSTRAINT PK_MATRICULA PRIMARY KEY (id_alumno, id_curso),
	CONSTRAINT FK1_MATRICULA FOREIGN KEY (id_curso) REFERENCES CURSO (id_curso), 
	CONSTRAINT FK2_MATRICULA FOREIGN KEY (id_alumno) REFERENCES ALUMNO (id_alumno)
);

INSERT INTO MATRICULA (id_curso, id_alumno, fecha_matriculacion) VALUES 
(1, 1, '2024-04-25'),
(2, 2, '2024-06-25'),
(4, 4, '2024-06-25');



-- EJERCICIO SEGUNDA PARTE


-- 1 inserccion de cursos pedidos
INSERT INTO CURSO (nombre, anno_imparticion) VALUES 
("IFCT0112 Programacion Java", "2001"),
("IFCD09 Programacion Orientada a Objetos con Java", "1999"),
("IFCD110 Confeccion y publicacion de Paginas Web", "1994"),
("IFCM0410 Supervision de alarmas en redes de comunicaciones", "2006");


INSERT INTO MATRICULA (id_curso, id_alumno, fecha_matriculacion) VALUES (5, 1, NOW());

-- 2 mostrar nombre alumnos matriculados en IFCT0112
SELECT a.nombre FROM ALUMNO a
JOIN MATRICULA m
ON a.id_alumno = m.id_alumno
JOIN CURSO c 
ON m.id_curso = c.id_curso
WHERE c.id_curso = 5;

-- 3 Updating con nombre de profesores para CURSO 

UPDATE CURSO 
SET profesor = 'Pedro Perez'
WHERE nombre LIKE 'IFCT0112%';

UPDATE CURSO 
SET profesor = 'Juan Páez'
WHERE nombre LIKE 'IFCM0410%';


-- mostrar las asignaturas que no tiene ningun profesor asociado 

SELECT nombre FROM CURSO WHERE profesor IS NULL;

-- 5 indicar los tres alumnos mas jovenes que estas reciboiendo la asignatura IFCT0112

SELECT a.nombre FROM ALUMNO a
JOIN MATRICULA m
ON a.id_alumno = m.id_alumno
JOIN CURSO c 
ON m.id_curso = c.id_curso
WHERE c.id_curso = 5 
ORDER BY a.fecha_nacimiento ASC
LIMIT 3;


-- 6 LISTADO DE ALUMNOS MATRICULADOS EN CADA CURSO 

SELECT COUNT(id_alumno) FROM ALUMNO a
JOIN MATRICULA m
ON a.id_alumno = m.id_alumno
GROUP BY m.id_curso;
 