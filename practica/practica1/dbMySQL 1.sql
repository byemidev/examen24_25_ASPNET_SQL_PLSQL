CREATE DATABASE empleados;
USE empleados;

CREATE TABLE departamento (
  codigo INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  presupuesto INT NOT NULL,
  gastos INT NOT NULL
)Engine=InnoDB;

CREATE TABLE empleado (
  codigo INT AUTO_INCREMENT PRIMARY KEY,
  nif VARCHAR(9) NOT NULL UNIQUE,
  nombre VARCHAR(100) NOT NULL,
  apellido1 VARCHAR(100) NOT NULL,
  apellido2 VARCHAR(100),
  codigo_departamento INT,
  FOREIGN KEY (codigo_departamento) REFERENCES departamento(codigo)
)Engine=InnoDB;

INSERT INTO departamento VALUES(1, 'Desarrollo', 120000, 6000);
INSERT INTO departamento VALUES(2, 'Sistemas', 150000, 21000);
INSERT INTO departamento VALUES(3, 'Recursos Humanos', 280000, 25000);
INSERT INTO departamento VALUES(4, 'Contabilidad', 110000, 3000);
INSERT INTO departamento VALUES(5, 'I+D', 375000, 380000);
INSERT INTO departamento VALUES(6, 'Proyectos', 0, 0);
INSERT INTO departamento VALUES(7, 'Publicidad', 0, 1000);

INSERT INTO empleado VALUES(1, '32481596F', 'Aaron', 'Rivero', 'Gomez', 1);
INSERT INTO empleado VALUES(2, 'Y5575632D', 'Adela', 'Salas', 'Diaz', 2);
INSERT INTO empleado VALUES(3, 'R6970642B', 'Adolfo', 'Rubio', 'Flores', 3);
INSERT INTO empleado VALUES(4, '77705545E', 'Adrian', 'Suarez', NULL, 4);
INSERT INTO empleado VALUES(5, '17087203C', 'Marcos', 'Loyola', 'Mendez', 5);
INSERT INTO empleado VALUES(6, '38382980M', 'Maria', 'Santana', 'Moreno', 1);
INSERT INTO empleado VALUES(7, '80576669X', 'Pilar', 'Ruiz', NULL, 2);
INSERT INTO empleado VALUES(8, '71651431Z', 'Pepe', 'Ruiz', 'Santana', 3);
INSERT INTO empleado VALUES(9, '56399183D', 'Juan', 'Gomez', 'Lopez', 2);
INSERT INTO empleado VALUES(10, '46384486H', 'Diego','Flores', 'Salas', 5);
INSERT INTO empleado VALUES(11, '67389283A', 'Marta','Herrera', 'Gil', 1);
INSERT INTO empleado VALUES(12, '41234836R', 'Irene','Salas', 'Flores', NULL);
INSERT INTO empleado VALUES(13, '82635162B', 'Juan Antonio','Saez', 'Guerrero', NULL);


--  1 MOSTRAR EL PRIMER APELLIDO DE TODOS LOS EMPLEADOS 
SELECT apellido1 FROM empleado;

-- 2 MOSTRAR EL PRIMER APELLIDO DE LOS EMPLEADOS ELIMINANDO LOS REPETIDOS 
SELECT DISTINCT(apellido1 )FROM empleado;

-- 3 MOSTRAR TODAS LAS COLUMNAS DE LA TABLA EMPLEADO
SELECT * FROM empleado;

-- 4 MOSTRAR EL CODIGO DE LOS DEPARTAMENTOS DE LOS EMPLEADOS QUE APARECEN EN LA TABLA EMPLEADO
SELECT codigo FROM empleado;  

-- 5 MOSTRAR EL CODIGO DE LOS DEPARTAMENTOS DE LOS EMPLEADOS QUE APARECEN EN LA TABLA EMPLEADO, ALIMINANDO LOS CODIGOS QUE APARECEN REPETIDOS
SELECT DISTINCT(codigo) FROM empleado;

-- 6 MOSRTAR EL NOMBRE Y APELLIDOS DE LA TABLA EMPLEADOS EN UNA UNICA COLUMNA 
SELECT CONCAT(nombre, ' ', apellido1, ' ', apellido2) AS Nombre_Completo FROM empleado;

-- 7 LISTA EL NOMBRE Y APELLIDOS DE LA TABLA EMPLEADOS EN UNA UNICA COLUMNA EN MAYUSCULAS
SELECT UPPER(CONCAT(nombre,' ', apellido1, ' ', apellido2 )) FROM empleado;

-- 8 LISTA EL NOMBRE Y APELLIDOS DE LA TABLA EMPLEADOS EN UNA UNICA COLUMNA EN MINUSCULAS
SELECT LOWER(CONCAT(nombre,' ', apellido1, ' ', apellido2 ))FROM empleado; 

-- 9 MOSTRAR EL NOMBRE DEL DEPARTAMENTO Y EL VALOR DEL PRESUPUESTO ACTUAL DEL QUE DISPONE
SELECT nombre, (presupuesto - gastos) AS presu_actual FROM departamento; 

-- 10 MOSTRAR NOMBRE Y EL VALOR DEL PRESUPUESTO ACTUAL ORDENADO DE FORMA ASCENDENTE / 11 DESCENDENTE
SELECT d.nombre , (d.presupuesto - d.gastos) as presu_actual FROM departamento d ORDER BY presu_actual ASC; 
SELECT d.nombre , (d.presupuesto - d.gastos) as presu_actual FROM departamento d ORDER BY presu_actual DESC; 

-- curiosidad: el signo _ interoreta cualquier character 
SELECT d.nombre FROM departamento d WHERE nombre LIKE '_istemas'; 


SELECT e.nombre, e.apellido1, e.codigo , e.codigo_departamento , d.codigo 
FROM empleado e  
JOIN departamento d 
ON e.codigo_departamento = d.codigo 
WHERE e.codigo_departamento IN (SELECT e.codigo_departamento FROM empleado WHERE e.apellido1 LIKE '%s')
ORDER BY d.codigo ASC; 

