USE bd_ventas;
GO

--INSERCIONES

--PROVEEDORES
SELECT *FROM Proveedores;
EXEC SP_HELP Proveedores; 


INSERT INTO Proveedores (nombre, apellido, telefono, email, empresa, cantidad_productos, direccion) 
VALUES 
('Juan', 'Pérez', '+123456789', 'juan.perez@samsung.com', 'Samsung Electronics', '1000', 'Seúl, Corea del Sur'),
('María', 'Gómez', '+987654321', 'maria.gomez@apple.com', 'Apple Inc.', '800', 'Cupertino, California, EE.UU.'),
('Carlos', 'Ramírez', '+1122334455', 'carlos.ramirez@xiaomi.com', 'Xiaomi Tech', '1200', 'Pekín, China'),
('Andrea', 'López', '+3344556677', 'andrea.lopez@huawei.com', 'Huawei Technologies', '900', 'Shenzhen, China'),
('Pedro', 'Martínez', '+9988776655', 'pedro.martinez@oneplus.com', 'OnePlus Corp.', '750', 'Shenzhen, China');


--CLIENTES 

SELECT *FROM cliente;
EXEC SP_HELP cliente;

INSERT INTO cliente (nombre, apellido, email, telefono)  
VALUES  
('Luis', 'Fernández', 'luis.fernandez@mail.com', '+565656565'),  
('Andrea', 'López', 'andrea.lopez@mail.com', '+454545454'),  
('Carlos', 'Méndez', 'carlos.mendez@mail.com', '+343434343'),  
('Sofía', 'Ramírez', 'sofia.ramirez@mail.com', '+787878787'),  
('Miguel', 'Gómez', 'miguel.gomez@mail.com', '+676767676');  

--PRODUCTOS 

SELECT *FROM Productos;
EXEC SP_HELP Productos;

INSERT INTO Productos (nombre, descripcion, precio, stock)  
VALUES  
('Samsung Galaxy S25', 'Smartphone con pantalla AMOLED, 12GB RAM y 5000mAh', 1299.99, 50),  
('iPhone 15 Pro Max', 'Teléfono con chip A17, pantalla OLED y Dynamic Island', 1499.99, 30),  
('Xiaomi 14 Pro', 'Snapdragon 8 Gen 3, pantalla 2K y carga rápida 120W', 999.99, 40),  
('OnePlus 12', 'Pantalla Fluid AMOLED 120Hz y batería de 5500mAh', 899.99, 35),  
('Google Pixel 8 Pro', 'Cámara avanzada con IA, 16GB RAM y Android puro', 1099.99, 25),  
('Motorola Edge 40 Pro', 'Diseño premium, Snapdragon 8 Gen 2 y 12GB RAM', 799.99, 45),  
('Realme GT5', 'Snapdragon 8 Gen 2, 144Hz y batería de 5000mAh', 699.99, 60),  
('Sony Xperia 1 V', 'Pantalla 4K OLED, cámara profesional y 12GB RAM', 1199.99, 20),  
('Asus ROG Phone 8', 'Gaming Phone con 18GB RAM y carga ultra rápida', 1299.99, 15),  
('Redmi Note 13 Pro', 'Cámara de 200MP, 120Hz y carga rápida 67W', 599.99, 80);  

--VENTAS

SELECT *FROM Venta;
EXEC SP_HELP Venta;

INSERT INTO Venta (id_producto, id_cliente, cantidad, total) VALUES
(1, 1, 2, 20.00),
(2, 1, 1, 15.50),
(3, 2, 5, 75.00),
(4, 3, 3, 30.00),
(5, 2, 4, 60.00),
(6, 4, 2, 40.00),
(7, 5, 20, 100.00)


--STOCK

SELECT *FROM Stock;
EXEC SP_HELP Stock;

INSERT INTO Stock (id_producto, cantidad, ubicacion) VALUES
(1, 50, 'Almacén A'),
(2, 30, 'Almacén B'),
(3, 20, 'Almacén C'),
(4, 15, 'Almacén A'),
(5, 10, 'Almacén D'),
(6, 25, 'Almacén B'),
(7, 40, 'Almacén C'),
(8, 5, 'Almacén A'),
(9, 60, 'Almacén D'),
(10, 12, 'Almacén B');


--COSTOS 

SELECT *FROM Costos;
EXEC SP_HELP Costos;

INSERT INTO Costos (id_producto, id_proveedor, costo, fecha_compra) VALUES
(1, 1, 2000, '2023-01-15'),
(2, 1, 1890, '2023-02-20'),
(3, 2, 2167, '2023-03-05'),
(4, 3, 1500, '2023-06-10'),
(5, 6, 2000, '2023-01-15'),
(6, 5, 1890, '2023-02-20'),
(7, 4, 2167, '2023-03-05'),
(8, 3, 1500, '2023-06-10'),
(9, 7, 1500, '2023-06-10'),
(10, 9, 1500, '2023-06-10');