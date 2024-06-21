
#english
-------------------------------------------------------------------------------------------------------------
# Summary of UF2175 - Database Management Systems (DBMS) and Installation

# 🎯Take 15 mins to reading  & comprehension.

## Contents

1. **Database Management Systems**
2. **Data Dictionary**
3. **Analysis of the Functional Structure of the DBMS**
4. **Installation of a DBMS**
5. **Description of DBMS Communication Mechanisms**

## Database Management Systems (DBMS)

A Database Management System (DBMS) is a software system that allows the definition of databases, as well as the selection of the data structures necessary for data storage and retrieval, either interactively or through a language.

### DBMS Architecture

### 3-Tier Model

1. **Physical Level**
    - Describes how the database is stored.
    - Includes details about hard drives, files used, and file types.
    - It is hardware and software dependent, especially on the operating system.
2. **Internal Level**
    - Allows observing the database as a set of structures that relate human information to digital information.
    - Not dependent on specific hardware, but on the structures of the particular DBMS.
3. **Logical Level**
    - Translates the conceptual model according to the type of DB.
    - Responsible for establishing the transition between the conceptual and physical model of the system.
4. **Conceptual Level**
    - The highest level of abstraction and the most important.
    - Provides an organizational view of the data independent of both hardware and software.
5. **External Level**
    - The view of the data held by end users of the database.
    - Abstracts the conceptual reality so the user does not know the relationships between data or where they are actually stored.

## Data Dictionary

The data dictionary is an internal structure of the DBMS that contains all metadata. This metadata documents each data and allows knowing what real information each data refers to, facilitating the handling of relevant information.

## Analysis of the Functional Structure of the DBMS

### Main Functions:

- **Data Description**: Allows the creation, deletion, or modification of metadata, specifying the meaning of the data and organizing information into more complex structures.
- **Data Manipulation**: Facilitates the insertion, updating, deletion, and querying of data through data modification languages (DML) and data query languages (DQL).
- **Data Control**: Provides mechanisms to protect data and establish access permissions, using a data control language (DCL).

## Installation of a DBMS

The installation of a DBMS includes:

1. **Selection of DB Type**: Considerations on budget, operating system, fault tolerance, scalability, performance, accessibility, security, and maintenance.
2. **Choice of DBMS**: Verification of licenses, technical documentation, requirements, and initial configuration parameters.
3. **Environment Configuration**: Parameter adjustments to optimize performance and ensure proper functioning.

### Example: Installing a Database in a University

- **Storage**: Information about students, courses, grades.
- **Structure**: Files such as STUDENTS, SUBJECTS, GRADES.
- **Manipulation**: Grade queries, student lists, and record updates.

## Description of DBMS Communication Mechanisms

### Protocols and Interfaces:

- **SQL Interface**: Standard language for database management.
- **Connection API**: Programming interfaces that allow interaction with the DBMS from external applications.
- **Connectors and Drivers**: Tools that facilitate communication between the DBMS and other systems or applications.

### Database Access

- **Access Configuration**: Parameters such as machine, user, password, and port.
- **MySQL Clients**: Tools like PHPMYADMIN or HEIDiSQL for database administration.



#español 
-------------------------------------------------------------------------------------------------------------

# 🎯Take 15 mins to reading  & comprehension.

# Resumen de UF2175 - Sistemas Gestores de Bases de Datos (SGBD) e Instalación

## Contenidos

1. **Sistemas Gestores de BBDD**
2. **Diccionario de Datos**
3. **Análisis de la Estructura Funcional del SGBD**
4. **Instalación de un SGBD**
5. **Descripción de Mecanismos de Comunicación del SGBD**

## Sistemas Gestores de Bases de Datos (SGBD)

Un Sistema Gestor de Base de Datos (SGBD, en inglés DBMS: DataBase Management System) es un sistema de software que permite la definición de bases de datos, así como la elección de las estructuras de datos necesarias para el almacenamiento y búsqueda de los datos, ya sea de forma interactiva o a través de un lenguaje.

### Arquitectura del SGBD

### Modelo de 3 Capas

1. **Nivel Físico**
    - Describe la forma en la que está almacenada la base de datos.
    - Incluye detalles sobre discos duros, archivos utilizados, tipo de archivos.
    - Es dependiente del hardware y el software, especialmente del sistema operativo.
2. **Nivel Interno**
    - Permite observar la base de datos como un conjunto de estructuras que relacionan la información humana con la información digital.
    - No depende del hardware concreto, sino de las estructuras del SGBD en particular.
3. **Nivel Lógico**
    - Traduce el modelo conceptual en función del tipo de BBDD.
    - Es el encargado de establecer el paso entre el modelo conceptual y el modelo físico del sistema.
4. **Nivel Conceptual**
    - Es el nivel de mayor abstracción y el más importante.
    - Presenta una visión organizativa de los datos independiente tanto del hardware como del software.
5. **Nivel Externo**
    - Es la visión de los datos que poseen los usuarios finales de la base de datos.
    - Abstrae la realidad conceptual para que el usuario no conozca las relaciones entre los datos ni dónde se almacenan realmente.

## Diccionario de Datos

El diccionario de datos es una estructura interna del SGBD que contiene todos los metadatos. Estos metadatos documentan cada dato y permiten saber a qué información real se refiere cada dato, facilitando el manejo de la información relevante.

## Análisis de la Estructura Funcional del SGBD

### Funciones Principales:

- **Descripción de Datos**: Permite la creación, eliminación o modificación de metadatos, especificando el significado de los datos y organizando la información en estructuras más complejas.
- **Manipulación de Datos**: Facilita la inserción, actualización, eliminación y consulta de datos mediante lenguajes de modificación de datos (DML) y de consulta de datos (DQL).
- **Control de Datos**: Proporciona mecanismos para proteger los datos y establecer permisos de acceso, utilizando un lenguaje de control de datos (DCL).

## Instalación de un SGBD

La instalación de un SGBD incluye:

1. **Selección del Tipo de BBDD**: Consideraciones sobre presupuesto, sistema operativo, tolerancia a fallos, escalabilidad, rendimiento, accesibilidad, seguridad y mantenimiento.
2. **Elección del SGBD**: Verificación de licencias, documentación técnica, requisitos y parámetros de configuración iniciales.
3. **Configuración del Entorno**: Ajustes de parámetros para optimizar el rendimiento y asegurar el correcto funcionamiento.

### Ejemplo: Instalación de una Base de Datos en una Universidad

- **Almacenamiento**: Información sobre estudiantes, cursos, notas.
- **Estructura**: Archivos como ESTUDIANTES, ASIGNATURAS, NOTAS.
- **Manipulación**: Consultas de notas, listas de estudiantes y actualizaciones de registros.

## Descripción de Mecanismos de Comunicación del SGBD

### Protocolos y Interfaces:

- **Interfaz SQL**: Lenguaje estándar para la gestión de bases de datos.
- **API de Conexión**: Interfaces de programación que permiten la interacción con el SGBD desde aplicaciones externas.
- **Conectores y Drivers**: Herramientas que facilitan la comunicación entre el SGBD y otros sistemas o aplicaciones.

### Acceso a la BBDD

- **Configuración de Acceso**: Parámetros como máquina, usuario, contraseña y puerto.
- **Clientes MySQL**: Herramientas como PHPMYADMIN o HEiDiSQL para la administración de bases de datos.