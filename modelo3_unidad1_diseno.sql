-- Crear la Base de Datos
CREATE DATABASE Practica2;
-- Usar la Base de Datos
USE Practica2;

--Creando la estructura de la base de datos definiendo las tablas

--Tabla de clientes
CREATE TABLE Clientes(
id_cliente INT NOT NULL IDENTITY(1,1) PRIMARY KEY, --PK de la tabla, no debe estar vacío, porque es el identificador principal
nombre VARCHAR(100) NOT NULL, --nombre del cliente, no debe estar vacío
email VARCHAR(100) NOT NULL, --correo del cliente, no debe estar vacío
perfil_bio TEXT, -- breve biorafía o notas, opcional
fecha_registro DATETIME NOT NULL --fecha de registro del cliente, no debe estar vacío
)

--Tabla de Productos
CREATE TABLE Productos(
id_producto INT NOT NULL IDENTITY(1,1) PRIMARY KEY, --PK de la tabla, no debe estar vacío, porque es el identificador principal
descripcion VARCHAR (255) NOT NULL, --Nombre del producto, no debe estar vacio ya que describe al producto
precio DECIMAL(10,2) NOT NULL, --Costo del producto que no debe estar vacio por fines de cálculos numéricos posteriores
esta_activo BIT DEFAULT 1, -- identificar si el producto está a la venta mediante un booleano, 1=Activo 0=Inactivo
)
