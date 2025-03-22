
--Creación de la base de datos
CREATE DATABASE bd_ventas_dim
GO

-- Selección de la base de datos creada
USE bd_ventas_dim



CREATE TABLE Hechos_Ventas (
    id_venta INT PRIMARY KEY,
    id_cliente INT,
    id_producto INT,
    id_fecha INT,
    cantidad INT,
    total DECIMAL(10,2),
    id_proveedor INT,
    id_stock INT,
    id_costo INT,
	FOREIGN KEY (id_cliente) REFERENCES Dim_Clientes(id_cliente),
    FOREIGN KEY (id_producto) REFERENCES Dim_Productos(id_producto),
    FOREIGN KEY (id_fecha) REFERENCES Dim_Tiempo(id_fecha),
    FOREIGN KEY (id_proveedor) REFERENCES Dim_Proveedores(id_proveedor),
    FOREIGN KEY (id_stock) REFERENCES Dim_Stock(id_stock),
    FOREIGN KEY (id_costo) REFERENCES Dim_Costos(id_costo)
);


--TABLA DIMENSION CLIENTES 
---Contiene datos descriptivos de los clientes---

CREATE TABLE Dim_Clientes (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    email VARCHAR(55),
    telefono VARCHAR(25)
);

--TABLA DIMENSION PRODUCTOS
---Contiene información sobre los productos vendidos---

CREATE TABLE Dim_Productos (
    id_producto INT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT,
    precio DECIMAL(10,2)
);

--TABLA DIMENSIÓN PROVEEDORES
---Almacena información de los proveedores de los productos---

CREATE TABLE Dim_Proveedores (
    id_proveedor INT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    telefono VARCHAR(20),
    email VARCHAR(100),
    empresa VARCHAR(50),
    cantidad_productos VARCHAR(20),
    direccion TEXT
);


--TABLA DIMENSIÓN TIEMPO
---Permite analizar las ventas por fecha, mes, año, etc.

CREATE TABLE Dim_Tiempo (
    id_fecha INT PRIMARY KEY,
    fecha DATE,
    año INT,
    trimestre INT,
    mes INT,
    dia INT,
    dia_semana VARCHAR(20)
);

--TABLA DIMENSIÓN STOCK
---Información sobre el stock de productos.

CREATE TABLE Dim_Stock (
    id_stock INT PRIMARY KEY,
    id_producto INT,
    cantidad INT,
    ubicacion VARCHAR(100)
);


--TABLA DIMENSIÓN COSTOS
---Guarda detalles sobre los costos de compra de productos.

CREATE TABLE Dim_Costos (
    id_costo INT PRIMARY KEY,
    id_producto INT,
    id_proveedor INT,
    costo DECIMAL(10,2),
    fecha_compra DATE
);