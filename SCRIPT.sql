
--Creación de la base de datos
CREATE DATABASE bd_ventas
GO

-- Selección de la base de datos creada
USE bd_ventas;

-- Creación de tablas

--- Tabla clientes
CREATE TABLE clientes (
id INT IDENTITY(1,1) PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
apellido VARCHAR(100) NOT NULL,
email VARCHAR(55) UNIQUE,
telefono VARCHAR(25)
);
Go

-- TABLA PRODUCTOS 
CREATE TABLE Productos (
    id INT IDENTITY (1,1) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
);
Go

--TABLA PROVEEDORES 
CREATE TABLE Proveedores (
    id INT IDENTITY (1,1) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
	apellido VARCHAR(100) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL,
	empresa VARCHAR (50) NOT NULL,
	cantidad_productos VARCHAR (20) NOT NULL,
    direccion TEXT NOT NULL,
);
Go

CREATE TABLE Venta (
    id INT IDENTITY (1,1) PRIMARY KEY,
    id_producto INT NOT NULL,
    id_cliente INT NOT NULL,
    cantidad INT NOT NULL,
    total DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_producto) REFERENCES Productos(id) ON DELETE CASCADE,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id) ON DELETE CASCADE
);



CREATE TABLE Stock (
    id INT IDENTITY (1,1) PRIMARY KEY,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
    ubicacion VARCHAR(100),
    FOREIGN KEY (id_producto) REFERENCES Productos(id) ON DELETE CASCADE
);

CREATE TABLE Costos (
    id INT IDENTITY (1,1) PRIMARY KEY,
    id_producto INT NOT NULL,
    id_proveedor INT NOT NULL,
    costo DECIMAL(10,2) NOT NULL,
    fecha_compra DATE NOT NULL,
    FOREIGN KEY (id_producto) REFERENCES Productos(id) ON DELETE CASCADE,
    FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id) ON DELETE CASCADE
);

