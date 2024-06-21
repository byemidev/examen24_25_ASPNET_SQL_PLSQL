#english
-------------------------------------------------------------------------------------------------------------

# Summary of UF2175 - Diseño de Bases de Datos Relacionales

# 🎯Take 15 mins to reading  & comprehension.

## What is a DBMS?

A Database Management System (DBMS) is a collection of programs that allow users to store, modify, and extract information from a database. It enables users to access data using specific query tools and report generation applications.

### Simplified Definition

A DBMS is a set of data belonging to the same context, stored systematically for later use.

### Detailed Definition

A DBMS is a collection of related files that store an abstract representation of a real-world problem domain, along with the data related to this information. These files also contain the description of the domain’s constraints.

## What is a Database?

A database is a structured source of information. It is designed and constructed to store elements and aspects of the real world persistently, usually with massive data volumes and complex structures.

### Key Characteristics

- **Integrity and Consistency**: Ensures data remains accurate and consistent.
- **Transactional Capabilities**: Supports reliable transactions.
- **Fault Tolerance**: Recovers from failures without data loss.
- **Efficient Access**: Provides quick data retrieval.
- **Concurrent Access**: Allows multiple users to access data simultaneously.
- **Security and Privacy**: Protects data from unauthorized access.
- **Adaptability**: Adjusts to different problems or environments.
- **Software Independence**: Operates independently of high-level software.
- **Data Granularity and Presentation**: Supports various levels of data detail and formats.

## Database Components

A database is composed of several tables or relations. Each table contains rows (records) and columns (fields). Key components include:

- **Field**: The smallest unit of accessible information.
- **Record**: A set of fields containing data about a specific entity.
- **Key**: A field or combination of fields that uniquely identifies each row in a table.

## Types of Databases

Databases can be classified based on various criteria:

- **By Application**: Proprietary or specific-use databases.
- **By User Access**: Single-user or multi-user databases.
- **By Cost**: Free or priced databases.
- **By Distribution**: Centralized or distributed databases.
- **By Data Model**: Object-oriented, hierarchical, network, transactional, relational, multidimensional, documentary, or deductive databases.

## Popular DBMS Examples

### Personal DBMS

- **Access**
- **OpenOffice Base**
- **LibreOffice Base**

### Professional DBMS

- **Oracle**
- **PostgreSQL**
- **MySQL**
- **MariaDB**
- **SQLite**
- **Apache Derby**
- **MongoDB**
- **Cassandra**

## Security, Privileges, and Access Control

Database security involves mechanisms to authorize user access and control what actions users can perform. Roles in a database system include:

- **Database Administrator (DBA)**
- **Database Designer**
- **Application Developer**
- **End Users**

### User Privileges

- **Selection**: Retrieve data.
- **Creation**: Create new tables or databases.
- **Insertion**: Add new data.
- **Update**: Modify existing data.
- **Deletion**: Remove data.
- **Alteration**: Change the structure of tables.

### Advantages of Roles

Roles help in managing:

- **Concurrency**: Multiple users accessing data simultaneously.
- **Consistency**: Data remains accurate across transactions.
- **Redundancy Control**: Minimizes duplicate data.
- **Persistent Storage**: Ensures data longevity.
- **Data Independence**: Data is independent of applications.
- **Multiple Interfaces**: Supports various user interfaces.
- **Complex Relationships**: Manages intricate data relationships.
- **Integrity Constraints**: Enforces rules for data validity.
- **Access Restrictions**: Limits data access.
- **Backup and Recovery**: Provides data backup and restoration mechanisms.

#español 
-------------------------------------------------------------------------------------------------------------

# Resumen de UF2175 - Diseño de Bases de Datos Relacionales

## 🎯Tómate 15 minutos para leer y comprender.

## ¿Qué es un SGBD?

Un Sistema de Gestión de Bases de Datos (SGBD) es un conjunto de programas que permite a los usuarios almacenar, modificar y extraer información de una base de datos. Permite a los usuarios acceder a los datos utilizando herramientas específicas de consulta y generación de informes.

### Definición Simplificada

Un SGBD es un conjunto de datos que pertenecen al mismo contexto, almacenados sistemáticamente para su uso posterior.

### Definición Detallada

Un SGBD es una colección de archivos relacionados que almacenan una representación abstracta de un dominio de problema del mundo real, junto con los datos relacionados. Estos archivos también contienen la descripción de las restricciones del dominio.

## ¿Qué es una Base de Datos?

Una base de datos es una fuente de información estructurada. Está diseñada y construida para almacenar de manera persistente elementos y aspectos del mundo real, generalmente con grandes volúmenes de datos y estructuras complejas.

### Características Clave

- **Integridad y Consistencia**: Asegura que los datos sean precisos y consistentes.
- **Capacidades Transaccionales**: Soporta transacciones confiables.
- **Tolerancia a Fallos**: Recupera de fallos sin pérdida de datos.
- **Acceso Eficiente**: Proporciona una rápida recuperación de datos.
- **Acceso Concurrente**: Permite que múltiples usuarios accedan a los datos simultáneamente.
- **Seguridad y Privacidad**: Protege los datos de accesos no autorizados.
- **Adaptabilidad**: Se ajusta a diferentes problemas o entornos.
- **Independencia del Software**: Opera independientemente del software de alto nivel.
- **Granularidad y Presentación de Datos**: Soporta varios niveles de detalle y formatos de datos.

## Componentes de una Base de Datos

Una base de datos se compone de varias tablas o relaciones. Cada tabla contiene filas (registros) y columnas (campos). Los componentes clave incluyen:

- **Campo**: La unidad más pequeña de información accesible.
- **Registro**: Un conjunto de campos que contienen datos sobre una entidad específica.
- **Clave**: Un campo o combinación de campos que identifica de forma única cada fila en una tabla.

## Tipos de Bases de Datos

Las bases de datos se pueden clasificar según varios criterios:

- **Por Aplicación**: Bases de datos propietarias o de uso específico.
- **Por Acceso de Usuarios**: Bases de datos mono-usuario o multi-usuario.
- **Por Costo**: Bases de datos gratuitas o con costo.
- **Por Distribución**: Bases de datos centralizadas o distribuidas.
- **Por Modelo de Datos**: Bases de datos orientadas a objetos, jerárquicas, de red, transaccionales, relacionales, multidimensionales, documentales o deductivas.

## Ejemplos Populares de SGBD

### SGBD Personales

- **Access**
- **OpenOffice Base**
- **LibreOffice Base**

### SGBD Profesionales

- **Oracle**
- **PostgreSQL**
- **MySQL**
- **MariaDB**
- **SQLite**
- **Apache Derby**
- **MongoDB**
- **Cassandra**

## Seguridad, Privilegios y Control de Accesos

La seguridad de la base de datos implica mecanismos para autorizar el acceso de los usuarios y controlar qué acciones pueden realizar. Los roles en un sistema de base de datos incluyen:

- **Administrador de la Base de Datos (DBA)**
- **Diseñador de la Base de Datos**
- **Desarrollador de Aplicaciones**
- **Usuarios Finales**

### Privilegios de Usuario

- **Selección**: Recuperar datos.
- **Creación**: Crear nuevas tablas o bases de datos.
- **Inserción**: Añadir nuevos datos.
- **Actualización**: Modificar datos existentes.
- **Eliminación**: Eliminar datos.
- **Alteración**: Cambiar la estructura de las tablas.

### Ventajas de los Roles

Los roles ayudan a gestionar:

- **Concurrencia**: Múltiples usuarios accediendo a los datos simultáneamente.
- **Consistencia**: Los datos se mantienen precisos en todas las transacciones.
- **Control de Redundancia**: Minimiza la duplicación de datos.
- **Almacenamiento Persistente**: Asegura la longevidad de los datos.
- **Independencia de los Datos**: Los datos son independientes de las aplicaciones.
- **Múltiples Interfaces**: Soporta varias interfaces de usuario.
- **Relaciones Complejas**: Maneja relaciones intrincadas de datos.
- **Restricciones de Integridad**: Impone reglas para la validez de los datos.
- **Restricciones de Acceso**: Limita el acceso a los datos.
- **Copia de Seguridad y Recuperación**: Proporciona mecanismos de respaldo y restauración de datos.