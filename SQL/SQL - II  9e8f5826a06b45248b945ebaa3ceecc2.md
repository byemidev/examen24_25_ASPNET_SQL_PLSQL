# SQL - II

---

#español (only)

---

# Vistas (Views)

Las vistas permiten definir subconjuntos (tablas virtuales) sobre los datos almacenados en una base de datos SQL. Son útiles para:

- Mantener la confidencialidad restringiendo el acceso a determinados datos.
- Agrupar datos almacenados en distintas tablas (o incluso distintos esquemas) de una forma transparente.
- En algunos casos, permiten realizar operaciones de manipulación de datos que una tabla, aunque es recomendable utilizarlas sólo para consulta.

### Crear Vista

Para crear una vista se utiliza el comando `CREATE VIEW`:

```sql
CREATE VIEW nombre_vista AS sentencia_select;

```

### Usos

Las vistas se pueden usar para:

- Ocultar información.
- Simplificar datos y/o consultas.

Para ver cómo se ha creado una vista, se utiliza el comando `SHOW CREATE VIEW`:

```sql
SHOW CREATE VIEW nombre_vista;

```

Para borrar una vista, se utiliza el comando `DROP VIEW`:

```sql
DROP VIEW nombre_vista;

```

### ¿Por qué usarlas?

Usar vistas de la estructura de la tabla original en su aplicación en lugar de usar las tablas:

- Esto garantiza que cuando realice cambios en la estructura de su base de datos, sus aplicaciones no se rompan, aumentando la reusabilidad.
- No hay que crear consultas complejas que impliquen uniones repetidamente. Toda la complejidad se convierte en una sola línea de vistas de uso de consulta.
- El código condensado será más fácil de integrar en su aplicación, eliminando las posibilidades de errores tipográficos y haciendo su código más legible.
- Ayuda en la seguridad de los datos. Puede usar vistas para mostrar solo la información autorizada a los usuarios y ocultar datos confidenciales, como números de tarjetas de crédito.

### Trabajar con Vistas

A la hora de realizar una consulta, las vistas son equivalentes a las tablas físicas. La situación cambia si se desea insertar, actualizar o borrar cuando la vista:

- Contiene un producto natural o similar.
- Usa `DISTINCT`.
- Agrupa (`GROUP BY` o `HAVING`).
- Usa funciones de agregación en `SELECT`.
- Se basa en otra vista no actualizable.

Algunos SGBD no soportan la manipulación de vistas.

### Ejemplos

Crear una vista:

```sql
CREATE VIEW example_view AS
SELECT column1, column2
FROM table_name
WHERE condition;

```

Mostrar una vista creada:

```sql
SHOW CREATE VIEW example_view;

```

Borrar una vista:

```sql
DROP VIEW example_view;

```

## Procedimientos Almacenados (Stored Procedures)

Los procedimientos almacenados son un conjunto de sentencias SQL que se almacenan en la base de datos y pueden ser reutilizadas.

### Crear Procedimiento

Para crear un procedimiento se utiliza el comando `CREATE PROCEDURE`:

```sql
CREATE PROCEDURE nombre_procedimiento (parametros)
BEGIN
    -- sentencias SQL
END;

```

### Usar Procedimiento

Para llamar a un procedimiento almacenado se utiliza el comando `CALL`:

```sql
CALL nombre_procedimiento(parametros);

```

### Borrar Procedimiento

Para borrar un procedimiento almacenado se utiliza el comando `DROP PROCEDURE`:

```sql
DROP PROCEDURE nombre_procedimiento;

```

### Ejemplos

Crear un procedimiento:

```sql
CREATE PROCEDURE AddEmployee(
    IN firstName VARCHAR(50),
    IN lastName VARCHAR(50),
    IN birthDate DATE
)
BEGIN
    INSERT INTO Employees (FirstName, LastName, BirthDate)
    VALUES (firstName, lastName, birthDate);
END;

```

Llamar a un procedimiento:

```sql
CALL AddEmployee('John', 'Doe', '1980-01-01');

```

Borrar un procedimiento:

```sql
DROP PROCEDURE AddEmployee;

```

## Funciones (Functions)

Las funciones son similares a los procedimientos almacenados, pero devuelven un valor y pueden ser utilizadas en sentencias SQL.

### Crear Función

Para crear una función se utiliza el comando `CREATE FUNCTION`:

```sql
CREATE FUNCTION nombre_funcion (parametros)
RETURNS tipo_de_dato
BEGIN
    -- sentencias SQL
    RETURN valor;
END;

```

### Usar Función

Para utilizar una función en una sentencia SQL:

```sql
SELECT nombre_funcion(parametros);

```

### Borrar Función

Para borrar una función se utiliza el comando `DROP FUNCTION`:

```sql
DROP FUNCTION nombre_funcion;

```

### Ejemplos

Crear una función:

```sql
CREATE FUNCTION GetFullName(
    firstName VARCHAR(50),
    lastName VARCHAR(50)
) RETURNS VARCHAR(100)
BEGIN
    RETURN CONCAT(firstName, ' ', lastName);
END;

```

Usar una función:

```sql
SELECT GetFullName('John', 'Doe');

```

Borrar una función:

```sql
DROP FUNCTION GetFullName;

```

---