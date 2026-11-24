-- Crear la Base de Datos
CREATE DATABASE Practica2;
-- Usar la Base de Datos
USE Practica2;

--Creando la estructura de la base de datos definiendo las tablas

--Tabla de clientes
CREATE TABLE Clientes(
id_cliente INT NOT NULL IDENTITY(1,1) PRIMARY KEY, --PK de la tabla, no debe estar vacio, porque es el identificador principal
nombre VARCHAR(100) NOT NULL, --nombre del cliente, no debe estar vacío
email VARCHAR(100) NOT NULL, --correo del cliente, no debe estar vacío
perfil_bio NVARCHAR(MAX) NULL, -- breve biografia o notas que permite utilizar caracteres unicode, opcional
fecha_registro DATETIME2 NOT NULL --fecha de registro del cliente, guarda la fecha y hora en la que se le registro, no debe estar vacio
)

--Tabla de Productos
CREATE TABLE Productos(
id_producto INT NOT NULL IDENTITY(1,1) PRIMARY KEY, --PK de la tabla, no debe estar vacio, porque es el identificador principal
descripcion VARCHAR (255) NOT NULL, --Nombre del producto, no debe estar vacio ya que describe al producto
precio DECIMAL(10,2) NOT NULL, --Precio de venta. DECIMAL y no FLOAT, porque el dinero necesita presicion exacta, y posteriormente se usara en calculos
esta_activo BIT DEFAULT 1 NOT NULL -- identificar si el producto está a la venta al público mediante un booleano, 1=Activo 0=Inactivo
)
