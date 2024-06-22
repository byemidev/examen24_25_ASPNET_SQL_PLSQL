# Summary of - UF2175_tema5: Modelo Entidad Relacion y Formas Normales

#español

---

# 🎯Tómate 15 minutos para leer y comprender.

## Modelo Entidad-Relación y Formas Normales

### Elementos del Modelo Entidad-Relación

- **Entidades**: Son objetos distinguibles, como personas o cuentas en un sistema bancario. Pueden ser concretos o abstractos. Se representan con un rectángulo.
- **Atributos**: Propiedades de las entidades, representadas mediante un círculo o elipse. Un atributo identificativo se subraya.
- **Relaciones**: Describen dependencias entre entidades o permiten su asociación, representadas por un verbo de acción dentro de un rombo.

### Tipos de Relaciones

- **1 a 1**: Un esposo está casado con una única esposa y viceversa.
- **1 a M**: Una factura se emite a una persona, pero una persona puede tener varias facturas.
- **M a M**: Un cliente puede comprar varios productos y un producto puede ser comprado por varios clientes.

### Herramientas para Modelar

- Cuaderno y lápiz
- Microsoft Visio
- Software de diseño (Gliffy, Lucidchart)

### Metodología de Trabajo

- No existen reglas generales para la conversión eficiente de la definición conceptual al modelo conceptual.
- Pasos a seguir:
    1. Identificar las entidades.
    2. Identificar las relaciones.
    3. Identificar los atributos y asociarlos a entidades y relaciones.
    4. Determinar los dominios de los atributos.
    5. Determinar las claves.
    6. Dibujar el diagrama entidad-relación.
    7. Revisar y refinar el esquema conceptual.

## Formas Normales

### Normalización

- Evitar la redundancia de los datos.
- Disminuir problemas de actualización de los datos.
- Proteger la integridad de los datos.

### Reglas de Normalización

- Cada tabla debe tener un nombre único.
- No puede haber filas duplicadas.
- Todos los datos en una columna deben ser del mismo tipo.

### Primera Forma Normal (1FN)

- No repetir campos en las tablas (atributos atómicos).

### Segunda Forma Normal (2FN)

- Cada campo debe depender de una clave única. Los datos repetitivos deben atomizarse en una nueva tabla.

### Tercera Forma Normal (3FN)

- Aplicar 1FN y 2FN. Los campos que no son clave no deben tener dependencias.

### Forma Normal Boyce-Codd (FNBC)

- Aplicar 1FN, 2FN y 3FN. Versión mejorada de 3FN. Los campos no clave deben eliminarse si no dependen de la clave.

### Cuarta Forma Normal (4FN)

- Aplicar FNBC. Aplica únicamente para relaciones M a M, eliminando la redundancia de información generada por este tipo de relación.

### Quinta Forma Normal (5FN)

- Aplicar 1FN, 2FN, 3FN y 4FN. Garantiza que la tabla original pueda reconstruirse desde las tablas resultantes sin crear columnas extrañas.

## Diseño de Bases de Datos

### Etapas del Diseño

1. **Diseño Conceptual**: Identificación de entidades, atributos y relaciones.
2. **Diseño Lógico**: Normalización de tablas para evitar duplicidad y ahorrar espacio.
3. **Diseño Físico**: Escritura de SQL para implementar el diseño en el motor de bases de datos elegido.

### Cosas Importantes

- Tener bien documentados los requerimientos.
- Conocer la necesidad que se va a resolver.
- Revisar y refinar el esquema conceptual con el cliente si es necesario.

## Imágenes en el Documento

1. **Diagramas E/R**: Representaciones visuales de entidades, atributos y relaciones.
2. **Ejemplos de Tipos de Relaciones**: Ilustraciones de relaciones 1 a 1, 1 a M, y M a M.
3. **Proceso de Normalización**: Diagramas que muestran cómo aplicar cada forma normal.
4. **Fases de Diseño**: Esquemas de las etapas de diseño conceptual, lógico y físico.

#english

---

# 🎯Take 15 mins to reading  & comprehension.

## Entity-Relationship Model and Normal Forms

### Elements of the Entity-Relationship Model

- **Entities**: Distinguishable objects, such as people or accounts in a banking system. They can be concrete or abstract. Represented by a rectangle.
- **Attributes**: Properties of entities, represented by a circle or ellipse. An identifying attribute is underlined.
- **Relationships**: Describe dependencies between entities or allow their association, represented by an action verb inside a diamond.

### Types of Relationships

- **1 to 1**: A husband is married to one wife and vice versa.
- **1 to M**: An invoice is issued to one person, but a person can have multiple invoices.
- **M to M**: A customer can buy multiple products, and a product can be bought by multiple customers.

### Modeling Tools

- Notebook and pencil
- Microsoft Visio
- Design software (Gliffy, Lucidchart)

### Working Methodology

- There are no general rules for efficiently converting the conceptual definition to the conceptual model.
- Steps to follow:
    1. Identify the entities.
    2. Identify the relationships.
    3. Identify the attributes and associate them with entities and relationships.
    4. Determine the domains of the attributes.
    5. Determine the keys.
    6. Draw the entity-relationship diagram.
    7. Review and refine the conceptual schema.

## Normal Forms

### Normalization

- Avoid data redundancy.
- Reduce update problems in data tables.
- Protect data integrity.

### Normalization Rules

- Each table must have a unique name.
- There cannot be duplicate rows.
- All data in a column must be of the same type.

### First Normal Form (1NF)

- Do not repeat fields in tables (atomic attributes).

### Second Normal Form (2NF)

- Each field must depend on a unique key. Repetitive data should be atomized into a new table.

### Third Normal Form (3NF)

- Apply 1NF and 2NF. Non-key fields should not have dependencies.

### Boyce-Codd Normal Form (BCNF)

- Apply 1NF, 2NF, and 3NF. An improved version of 3NF. Non-key fields should be removed if they do not depend on the key.

### Fourth Normal Form (4NF)

- Apply BCNF. Only for M to M relationships, eliminating redundancy caused by this type of relationship.

### Fifth Normal Form (5NF)

- Apply 1NF, 2NF, 3NF, and 4NF. Ensures the original table can be reconstructed from the resulting tables without creating extraneous columns.

## Database Design

### Design Stages

1. **Conceptual Design**: Identifying entities, attributes, and relationships.
2. **Logical Design**: Normalizing tables to avoid duplication and save storage space.
3. **Physical Design**: Writing SQL to implement the design in the chosen database engine.

### Important Points

- Have well-documented requirements.
- Know the need you are going to solve.
- Review and refine the conceptual schema with the client if necessary.

## Images in the Document

1. **E/R Diagrams**: Visual representations of entities, attributes, and relationships.
2. **Examples of Relationship Types**: Illustrations of 1 to 1, 1 to M, and M to M relationships.
3. **Normalization Process**: Diagrams showing how to apply each normal form.
4. **Design Phases**: Schemes of the stages of conceptual, logical, and physical design.