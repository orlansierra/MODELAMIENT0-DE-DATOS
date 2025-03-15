USE bd_ventas;
GO

--INSERCIONES

--PROVEEDORES
SELECT *FROM Proveedores;
EXEC SP_HELP Proveedores; 


INSERT INTO Proveedores (nombre, apellido, telefono, email, empresa, cantidad_productos, direccion) 
VALUES 
('Juan', 'P�rez', '+123456789', 'juan.perez@samsung.com', 'Samsung Electronics', '1000', 'Se�l, Corea del Sur'),
('Mar�a', 'G�mez', '+987654321', 'maria.gomez@apple.com', 'Apple Inc.', '800', 'Cupertino, California, EE.UU.'),
('Carlos', 'Ram�rez', '+1122334455', 'carlos.ramirez@xiaomi.com', 'Xiaomi Tech', '1200', 'Pek�n, China'),
('Andrea', 'L�pez', '+3344556677', 'andrea.lopez@huawei.com', 'Huawei Technologies', '900', 'Shenzhen, China'),
('Pedro', 'Mart�nez', '+9988776655', 'pedro.martinez@oneplus.com', 'OnePlus Corp.', '750', 'Shenzhen, China');


--CLIENTES 

SELECT *FROM cliente;
EXEC SP_HELP cliente;

INSERT INTO cliente (nombre, apellido, email, telefono)  
VALUES  
('Luis', 'Fern�ndez', 'luis.fernandez@mail.com', '+565656565'),  
('Andrea', 'L�pez', 'andrea.lopez@mail.com', '+454545454'),  
('Carlos', 'M�ndez', 'carlos.mendez@mail.com', '+343434343'),  
('Sof�a', 'Ram�rez', 'sofia.ramirez@mail.com', '+787878787'),  
('Miguel', 'G�mez', 'miguel.gomez@mail.com', '+676767676');  

--PRODUCTOS 

SELECT *FROM Productos;
EXEC SP_HELP Productos;

INSERT INTO Productos (nombre, descripcion, precio, stock)  
VALUES  
('Samsung Galaxy S25', 'Smartphone con pantalla AMOLED, 12GB RAM y 5000mAh', 1299.99, 50),  
('iPhone 15 Pro Max', 'Tel�fono con chip A17, pantalla OLED y Dynamic Island', 1499.99, 30),  
('Xiaomi 14 Pro', 'Snapdragon 8 Gen 3, pantalla 2K y carga r�pida 120W', 999.99, 40),  
('OnePlus 12', 'Pantalla Fluid AMOLED 120Hz y bater�a de 5500mAh', 899.99, 35),  
('Google Pixel 8 Pro', 'C�mara avanzada con IA, 16GB RAM y Android puro', 1099.99, 25),  
('Motorola Edge 40 Pro', 'Dise�o premium, Snapdragon 8 Gen 2 y 12GB RAM', 799.99, 45),  
('Realme GT5', 'Snapdragon 8 Gen 2, 144Hz y bater�a de 5000mAh', 699.99, 60),  
('Sony Xperia 1 V', 'Pantalla 4K OLED, c�mara profesional y 12GB RAM', 1199.99, 20),  
('Asus ROG Phone 8', 'Gaming Phone con 18GB RAM y carga ultra r�pida', 1299.99, 15),  
('Redmi Note 13 Pro', 'C�mara de 200MP, 120Hz y carga r�pida 67W', 599.99, 80);  

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
(1, 50, 'Almac�n A'),
(2, 30, 'Almac�n B'),
(3, 20, 'Almac�n C'),
(4, 15, 'Almac�n A'),
(5, 10, 'Almac�n D'),
(6, 25, 'Almac�n B'),
(7, 40, 'Almac�n C'),
(8, 5, 'Almac�n A'),
(9, 60, 'Almac�n D'),
(10, 12, 'Almac�n B');


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