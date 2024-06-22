# Summary of UF2175 - tema4 - SQL “Definicion y uso”

#english 

---

# 🎯Take 15 mins to reading  & comprehension.

### Introduction to SQL and Database Languages

- **Structured Query Language (SQL)**: SQL is the most widely used relational language. It was created in 1974, standardized by ANSI in 1986, and by ISO in 1987. While it started as a standard, each database management system (DBMS) has added its extensions or modifications.
- **Database Languages**:
    - **DDL (Data Definition Language)**: Defines data structure.
    - **DML (Data Manipulation Language)**: Accesses and manipulates data.
    - **DQL (Data Query Language)**: Sometimes considered a part of DML, focuses on querying data.

### SQL Database Elements

- **Basic Terminology**:
    - **Database (DB)**: A set of tables.
    - **Table**: Also referred to as relation, entity, or schema.
    - **Field**: An attribute.
    - **Record**: A tuple.
    - **Primary Keys**: Unique identifiers.
    - **Foreign Keys**: References between tables.

### Data Types in SQL

- **Common Data Types in MySQL**:
    - **Character Strings**: `char(n)`, `varchar(n)`, `text`.
    - **Integers**: `integer/int`, `smallint`.
    - **Floating-Point Numbers**: `float`, `real`, `double precision`.
    - **Numeric with Precision**: `numeric`, `decimal`.
    - **Dates and Times**: `date`, `time`, `timestamp`.

### Creating and Modifying Tables

- **Creating Tables**:
    - **Syntax**: `CREATE TABLE name (field type [constraints], ...);`
    - **Example**: `CREATE TABLE Employee (id INT PRIMARY KEY, name VARCHAR(100));`
- **Modifying Tables**:
    - **Adding a Column**: `ALTER TABLE table ADD COLUMN field type [constraints];`
    - **Dropping a Column**: `ALTER TABLE table DROP COLUMN field [CASCADE | RESTRICT];`
    - **Changing a Column**: `ALTER TABLE table ALTER COLUMN field [SET DEFAULT value | DROP DEFAULT];`

### Indexes

- **Purpose**: Indexes optimize data search by mapping values to physical storage locations, reducing search time.
- **Types**:
    - **Simple Indexes**: Arrays of key-identifier pairs, allowing binary searches.
    - **B-Trees and Hashing**: Advanced indexing techniques for efficient data retrieval.
- **Creating Indexes**:
    - **Syntax**: `CREATE INDEX index_name ON table(fields [ASC | DESC]);`
    - **Example**: `CREATE INDEX idx_name ON Employee (name ASC);`

### Constraints

- **Types of Constraints**:
    - **Primary Key**: Ensures uniqueness of the column values.
    - **Foreign Key**: Establishes relationships between tables.
    - **Not Null**: Ensures that a column cannot have NULL values.
    - **Unique**: Ensures that all values in a column are unique.
    - **Default**: Sets a default value for a column.
    - **Check**: Ensures that values in a column meet a specific condition.
- **Defining Constraints**:
    - **At Field Level**: Directly on the column.
    - **At Table Level**: As a separate constraint definition.

### Images in the Document

The document includes diagrams and visual aids to support the text:

1. **SQL Syntax Structures**: Visual representations of SQL commands such as CREATE TABLE, ALTER TABLE, and CREATE INDEX.
2. **Data Type Examples**: Tables showing different data types and their ranges (e.g., integer, float, char).
3. **Indexing Techniques**: Diagrams explaining simple indexes, B-Trees, and hashing.
4. **Constraints Application**: Examples and diagrams showing how different constraints are applied to tables and fields in SQL.

### Conclusion

This document provides a comprehensive overview of SQL, focusing on its syntax, data types, table creation and modification, indexing, and constraints. It serves as an educational resource for understanding the fundamental aspects of SQL and relational databases.

#español

---

# 🎯Tómate 15 minutos para leer y comprender.

### Introducción a SQL y Lenguajes de Bases de Datos

- **Lenguaje de Consulta Estructurado (SQL)**: SQL es el lenguaje relacional más utilizado. Fue creado en 1974, estandarizado por ANSI en 1986 y por ISO en 1987. Aunque comenzó como un estándar, cada sistema de gestión de bases de datos (SGBD) ha agregado sus extensiones o modificaciones.
- **Lenguajes de Bases de Datos**:
    - **DDL (Lenguaje de Definición de Datos)**: Define la estructura de los datos.
    - **DML (Lenguaje de Manipulación de Datos)**: Accede y manipula los datos.
    - **DQL (Lenguaje de Consulta de Datos)**: A veces considerado parte del DML, se centra en consultar datos.

### Elementos de una Base de Datos SQL

- **Terminología Básica**:
    - **Base de Datos (BD)**: Un conjunto de tablas.
    - **Tabla**: También referida como relación, entidad o esquema.
    - **Campo**: Un atributo.
    - **Registro**: Una tupla.
    - **Claves Primarias**: Identificadores únicos.
    - **Claves Foráneas**: Referencias entre tablas.

### Tipos de Datos en SQL

- **Tipos de Datos Comunes en MySQL**:
    - **Cadenas de Caracteres**: `char(n)`, `varchar(n)`, `text`.
    - **Enteros**: `integer/int`, `smallint`.
    - **Números en Punto Flotante**: `float`, `real`, `double precision`.
    - **Numéricos con Precisión**: `numeric`, `decimal`.
    - **Fechas y Horas**: `date`, `time`, `timestamp`.

### Creación y Modificación de Tablas

- **Crear Tablas**:
    - **Sintaxis**: `CREATE TABLE nombre (campo tipo [restricciones], ...);`
    - **Ejemplo**: `CREATE TABLE Empleado (id INT PRIMARY KEY, nombre VARCHAR(100));`
- **Modificar Tablas**:
    - **Agregar una Columna**: `ALTER TABLE tabla ADD COLUMN campo tipo [restricciones];`
    - **Eliminar una Columna**: `ALTER TABLE tabla DROP COLUMN campo [CASCADE | RESTRICT];`
    - **Cambiar una Columna**: `ALTER TABLE tabla ALTER COLUMN campo [SET DEFAULT valor | DROP DEFAULT];`

### Índices

- **Propósito**: Los índices optimizan la búsqueda de datos al mapear valores a ubicaciones físicas de almacenamiento, reduciendo el tiempo de búsqueda.
- **Tipos**:
    - **Índices Simples**: Arrays de pares clave-identificador, permitiendo búsquedas binarias.
    - **Árboles B y Hashing**: Técnicas avanzadas de indexación para una recuperación de datos eficiente.
- **Crear Índices**:
    - **Sintaxis**: `CREATE INDEX nombre_índice ON tabla(campos [ASC | DESC]);`
    - **Ejemplo**: `CREATE INDEX idx_nombre ON Empleado (nombre ASC);`

### Restricciones

- **Tipos de Restricciones**:
    - **Clave Primaria**: Garantiza la unicidad de los valores de la columna.
    - **Clave Foránea**: Establece relaciones entre tablas.
    - **Not Null**: Asegura que una columna no pueda tener valores NULL.
    - **Unique**: Asegura que todos los valores en una columna sean únicos.
    - **Default**: Establece un valor predeterminado para una columna.
    - **Check**: Asegura que los valores en una columna cumplan una condición específica.
- **Definir Restricciones**:
    - **A Nivel de Campo**: Directamente en la columna.
    - **A Nivel de Tabla**: Como una definición de restricción separada.

### Imágenes en el Documento

El documento incluye diagramas y ayudas visuales para apoyar el texto:

1. **Estructuras de Sintaxis SQL**: Representaciones visuales de comandos SQL como CREATE TABLE, ALTER TABLE y CREATE INDEX.
2. **Ejemplos de Tipos de Datos**: Tablas que muestran diferentes tipos de datos y sus rangos (por ejemplo, entero, flotante, char).
3. **Técnicas de Indexación**: Diagramas que explican índices simples, Árboles B y hashing.
4. **Aplicación de Restricciones**: Ejemplos y diagramas que muestran cómo se aplican diferentes restricciones a tablas y campos en SQL.

### Conclusión

Este documento proporciona una visión completa de SQL, centrándose en su sintaxis, tipos de datos, creación y modificación de tablas, indexación y restricciones. Sirve como un recurso educativo para comprender los aspectos fundamentales de SQL y las bases de datos relacionales.