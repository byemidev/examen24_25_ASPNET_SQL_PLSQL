# SQL  - “declaracion y tecnicas de manipulacion de datos”.

#english (only)

---

## Data Definition Language (DDL)

### Creating a Tables:

```sql
CREATE TABLE
nombre (
    campo_1 tipo_1 [restricciones_1],
    campo_n tipo_n [restricciones_n],
    [PRIMARY KEY (lista de campos)],
    [FOREIGN KEY (lista de campos) REFERENCES NombreTabla (clave)],
    [restricciones de tabla]
);

```

### Data Types

- **TEXT**: Variable type text stored in UTF format.
    - Examples: `CHARACTER(20)`, `VARCHAR(255)`, `TEXT`
- **NUMERIC**: Numerical data types.
    - Examples: `NUMERIC`, `DECIMAL(10,5)`, `BOOLEAN`, `DATE`, `DATETIME`
- **INTEGER**: Signed integer with length based on defined data type.
    - Examples: `INTEGER`, `TINYINT`, `SMALLINT`, `BIGINT`
- **REAL**: Float type data.
    - Examples: `REAL`, `DOUBLE`, `FLOAT`
- **BLOB**: Data stored in the same format as input.

### Example: Creating a Table with Various Data Types

```sql
CREATE TABLE cb_language (
    idlanguage VARCHAR(6) NOT NULL,
    namelanguage VARCHAR(60) NOT NULL,
    isactive VARCHAR(1) NOT NULL DEFAULT 'N',
    languageiso VARCHAR(2),
    countrycode VARCHAR(2),
    isbaselanguage VARCHAR(1) NOT NULL DEFAULT 'N',
    issystemlanguage VARCHAR(1) NOT NULL DEFAULT 'N',
    CONSTRAINT pk_cb_language PRIMARY KEY (idlanguage),
    CONSTRAINT u_cb_language_namelanguage UNIQUE (namelanguage)
);

```

## Data Manipulation Language (DML)

### Inserting New Records

```sql
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

```

### Updating Records

```sql
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

```

### Deleting Records

```sql
DELETE FROM table_name
WHERE condition;

```

### Truncating a Table

```sql
TRUNCATE table_name;

```

### Example: Basic SELECT Statement Structure

```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition;

```