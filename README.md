# data-analytics-practicas

# Diseño de estructura: sistema de gestión de ventas

Práctica del módulo 3 del curso de Data Analytics (Coderhouse). Objetivo: definir la estructura de dos tablas base de un sistema de ventas usando `CREATE TABLE`, eligiendo tipos de datos justificados.

## 🗂️ Estructura

**Clientes**
| Columna | Tipo | Decisión |
|---|---|---|
| id_cliente | INT IDENTITY, PK | Identificador único autogenerado de la tabla|
| nombre | VARCHAR(100), NOT NULL | Longitud variable; obligatorio |
| email | VARCHAR(100), NOT NULL | Agregado por necesidad de contacto, obligatorio |
| perfil_bio | NVARCHAR(MAX), NULL | Texto largo y opcional, permite utilizar caracteres unicode |
| fecha_registro | DATETIME2, NOT NULL | Fecha y hora de registro del cliente |

**Productos**
| Columna | Tipo | Decisión |
|---|---|---|
| id_producto | INT IDENTITY, PK | Identificador único autogenerado de la tabla |
| descripcion | VARCHAR(255), NOT NULL | Describe el producto; obligatoria |
| precio | DECIMAL(10,2), NOT NULL | Precisión exacta para diner |
| esta_activo | BIT, NOT NULL, DEFAULT 1 | Booleano: 1 = a la venta, 0 = inactivo. Por defecto, activo |

## 🧠 Decisiones clave
- **DECIMAL vs FLOAT:** FLOAT guarda aproximaciones binarias; en montos de dinero, esos pequeños errores se acumulan.
- **BIT para estados:** ocupa lo mínimo y evita valores ambiguos ("Sí", "SI", "si")
- **NOT NULL donde el dato es obligatorio:** la base impide registros incompletos desde el origen.

## ▶️ Cómo ejecutarlo
Abrir `modulo3_unidad1_diseno.sql` en SSMS (SQL Server Express) y ejecutarlo completo.

## 🛠️ Herramientas
SQL Server Express · SSMS · T-SQL (DDL)
