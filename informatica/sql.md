

# 📊 SQL Ejemplos Prácticos — Customers, Orders & Shippings

Este proyecto muestra ejemplos del uso de los **principales comandos SQL** (CREATE, INSERT, SELECT, UPDATE, DELETE, ALTER, DROP) aplicados a un modelo de base de datos sencillo con tres tablas: `Customers`, `Orders` y `Shippings`.

---

## 🧱 Estructura del Proyecto

### Tablas principales

#### 🧍‍♂️ Customers
| Campo        | Tipo de dato     | Descripción                 |
|---------------|------------------|------------------------------|
| customer_id   | INT              | Identificador único del cliente |
| first_name    | VARCHAR(100)     | Nombre del cliente          |
| last_name     | VARCHAR(100)     | Apellido del cliente        |
| age           | INT              | Edad del cliente            |
| country       | VARCHAR(100)     | País de residencia           |

#### 📦 Orders
| Campo        | Tipo de dato     | Descripción                 |
|---------------|------------------|------------------------------|
| order_id      | INT              | Identificador del pedido     |
| item          | VARCHAR(100)     | Producto o artículo comprado |
| amount        | INT              | Monto total de la orden      |
| customer_id   | INT              | Relación con el cliente      |

#### 🚚 Shippings
| Campo        | Tipo de dato     | Descripción                 |
|---------------|------------------|------------------------------|
| shipping_id   | INT              | Identificador del envío      |
| status        | INT              | Estado del envío (0 = pendiente, 1 = enviado) |
| customer      | INT              | Relación con el cliente      |

---

## ⚙️ Ejemplo de Script SQL

### Crear las tablas
```sql
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    age INT,
    country VARCHAR(100)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    item VARCHAR(100),
    amount INT,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Shippings (
    shipping_id INT PRIMARY KEY,
    status INT,
    customer INT,
    FOREIGN KEY (customer) REFERENCES Customers(customer_id)
);
````

---

### Insertar datos de ejemplo

```sql
INSERT INTO Customers (customer_id, first_name, last_name, age, country)
VALUES
(1, 'Ana', 'López', 30, 'México'),
(2, 'Carlos', 'Pérez', 45, 'España'),
(3, 'Lucía', 'Gómez', 28, 'Chile');

INSERT INTO Orders (order_id, item, amount, customer_id)
VALUES
(101, 'Laptop', 1500, 1),
(102, 'Mouse', 25, 1),
(103, 'Teclado', 40, 2);

INSERT INTO Shippings (shipping_id, status, customer)
VALUES
(201, 1, 1),
(202, 0, 2);
```

---

### Consultas básicas (SELECT)

```sql
-- Mostrar todos los clientes
SELECT * FROM Customers;

-- Clientes mayores de 30 años
SELECT first_name, country FROM Customers WHERE age > 30;

-- Unir pedidos con clientes
SELECT c.first_name, c.last_name, o.item, o.amount
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id;
```

---

### Modificaciones (UPDATE / DELETE / ALTER)

```sql
-- Actualizar país
UPDATE Customers SET country = 'Argentina' WHERE customer_id = 3;

-- Eliminar un pedido
DELETE FROM Orders WHERE order_id = 103;

-- Agregar una columna
ALTER TABLE Customers ADD email VARCHAR(150);
```

---

### Eliminar tabla

```sql
DROP TABLE Shippings;
```

---

## 🧰 Requisitos

* MySQL, PostgreSQL o SQLite (cualquier sistema SQL estándar)
* Editor compatible (DBeaver, MySQL Workbench, VS Code con extensión SQL)

---

## 🚀 Cómo ejecutar

1. Clona este repositorio:

   ```bash
   git clone https://github.com/tu-usuario/sql-ejemplos.git
   cd sql-ejemplos
   ```

2. Abre el archivo `script.sql` en tu entorno SQL.

3. Ejecuta las instrucciones paso a paso para crear y manipular las tablas.

