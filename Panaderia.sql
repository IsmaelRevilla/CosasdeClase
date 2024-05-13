--borrar base de datos:
DROP DATABASE Panaderia;

--Creación de Base de Datos:
CREATE DATABASE Panaderia

GO

USE Panaderia;

GO

--Creación de 4 tablas:
CREATE TABLE Producto (
ID_Producto INT PRIMARY KEY,
Nombre VARCHAR(50) UNIQUE NOT NULL,
Alérgenos VARCHAR(100)  NULL,
Precio_venta DECIMAL(5,2) NOT NULL,
Precio_Producción DECIMAL(5,2) NOT NULL
);

CREATE TABLE Cliente (
ID_Cliente INT PRIMARY KEY,
Nombre VARCHAR(50) NOT NULL,
Apellido VARCHAR(50),
Teléfono VARCHAR(20) NOT NULL,
Dirección VARCHAR(100) NOT NULL,
Ciudad VARCHAR(50),
Código_Postal INT NOT NULL,
);

CREATE TABLE Pedido (
ID_Pedido INT PRIMARY KEY IDENTITY,
ID_Cliente INT,
Precio_Total DECIMAL (10,2),
Estado VARCHAR(15) DEFAULT 'PENDIENTE' CHECK(Estado IN ('PENDIENTE', 'PAGADO')),
FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente)
);

CREATE TABLE Detalle_Pedido (
ID_Pedido INT NOT NULL,
ID_Producto INT NOT NULL,
Cantidad INT,
PRIMARY KEY CLUSTERED (ID_Pedido, ID_Producto),
FOREIGN KEY (ID_Pedido) REFERENCES Pedido(ID_Pedido),
FOREIGN KEY (ID_Producto) REFERENCES Producto(ID_Producto)
);

GO

--Insertar valores a las 4 tablas:

INSERT INTO producto VALUES(001,'Pan de trigo','Gluten',0.80,0.40);
INSERT INTO producto VALUES(002,'Croissant','Gluten, Lácteos',1.50,0.90);
INSERT INTO producto VALUES(003,'Galletas','Gluten, Huevos',1.00,0.50);
INSERT INTO producto VALUES(004,'Pan integral','Gluten',1.00,0.50)
INSERT INTO producto VALUES(005,'Magdalenas','Gluten, Lácteos',0.75,0.40)
INSERT INTO producto VALUES(006,'Rosquillas','Gluten, Huevos',1.20,0.60)
INSERT INTO producto VALUES(007,'Baguette','Gluten',1.20,0.60)
INSERT INTO producto VALUES(008,'Bizcocho de limón','Gluten, Huevos',2.50,1.20)
INSERT INTO producto VALUES(009,'Pan de centeno','Gluten',1.80,1.00)
INSERT INTO producto VALUES(010,'Empanada de carne','Gluten',2.50,1.40)
INSERT INTO producto VALUES(011,'Croissant de chocolate','Gluten, Lácteos',1.50,0.70)
INSERT INTO producto VALUES(012,'Panecillos','Gluten',0.50,0.25)
INSERT INTO producto VALUES(013,'Pastel de manzana','Gluten, Lácteos, Frutos secos',3.80,1.90)
INSERT INTO producto VALUES(014,'Donuts','Gluten, Lácteos',1.50,0.80)
INSERT INTO producto VALUES(015,'Pan de avena','Gluten',1.70,1.15)
INSERT INTO producto VALUES(016,'Barrita de cereal','Gluten, Frutos secos',1.20,0.60)
INSERT INTO producto VALUES(017,'Pan de cereal','Gluten, Lácteos, Huevos',2.00,1.00)
INSERT INTO producto VALUES(018,'Pan sin gluten',NULL,2.20,1.10)
INSERT INTO producto VALUES(019,'Croissant de almendra','Gluten, Lácteos, Frutos secos',1.30,0.65)
INSERT INTO producto VALUES(020,'Palmeritas',NULL,0.90,0.45)
INSERT INTO producto VALUES(021,'Tarta de fresa','Gluten, Lácteos, Frutas',5.50,2.75)
INSERT INTO producto VALUES(022,'Croissant de jamón y queso','Gluten, Lácteos',2.20,1.10)
INSERT INTO producto VALUES(023,'Bagel de semillas','Gluten, Semillas',2.80,1.40)
INSERT INTO producto VALUES(024,'Pan de espelta','Gluten',2.20,1.20)
INSERT INTO producto VALUES(025,'Rollitos de canela','Gluten, Lácteos, Canela',1.50,0.8)
INSERT INTO producto VALUES(026,'Bocadillo de atún','Gluten, Pescado',4.00,2.00)
INSERT INTO producto VALUES(027,'Torta de zanahoria y nueces','Gluten, Lácteos, Nueces',2.50,1.25)
INSERT INTO producto VALUES(028,'Croissant de pistacho','Gluten, Lácteos, Frutos secos',2.80,1.40)
INSERT INTO producto VALUES(029,'Pan de calabaza','Gluten',2.60,1.30)
INSERT INTO producto VALUES(030,'Barra de pan integral','Gluten',1.20,0.6)

INSERT INTO Cliente VALUES(1, 'Juan', 'García', '123456789', 'Calle Mayor 1', 'Madrid', 28001)
INSERT INTO Cliente VALUES(2, 'María', 'López', '987654321', 'Calle Sol 2', 'Madrid', 28002)
INSERT INTO Cliente VALUES(3, 'Pedro', 'Martínez', '654789321', 'Calle Gran Vía 3', 'Madrid', 28003)
INSERT INTO Cliente VALUES(4, 'Ana', 'Sánchez', '369852147', 'Calle Alcalá 4', 'Madrid', 28004)
INSERT INTO Cliente VALUES(5, 'Luis', 'Rodríguez', '159753468', 'Calle Atocha 5', 'Madrid', 28005)
INSERT INTO Cliente VALUES(6, 'Carmen', 'Fernández', '357159246', 'Calle Rio Ulla 6', 'Madrid', 28006)
INSERT INTO Cliente VALUES(7, 'Javier', 'Gómez', '246813579', 'Calle San Nemesio 7', 'Madrid', 28007)
INSERT INTO Cliente VALUES(8, 'Lucía', 'Pérez', '951753684', 'Calle Ucles 8', 'Madrid', 28008)
INSERT INTO Cliente VALUES(9, 'Diego', 'Hernández', '789456123', 'Calle Vergara 9', 'Madrid', 28009)
INSERT INTO Cliente VALUES(10, 'Elena', 'Díaz', '123987654', 'Calle Hermanos de Pablo 10', 'Madrid', 28010)
INSERT INTO Cliente VALUES(11, 'Manuel', 'Fernández', '987123654', 'Calle el Generalisimo 11', 'Toledo', 45001)
INSERT INTO Cliente VALUES(12, 'Sara', 'Ruiz', '654789123', 'Calle Pez 12', 'Toledo', 45002)
INSERT INTO Cliente VALUES(13, 'Miguel', 'Gutiérrez', '369852147', 'Calle Lope de Rueda 13', 'Toledo', 45003)
INSERT INTO Cliente VALUES(14, 'Cristina', 'Sánchez', '147258369', 'Calle Principal 14', 'Toledo', 45004)
INSERT INTO Cliente VALUES(15, 'Pablo', 'Martín', '258369147', 'Calle Mil 15', 'Toledo', 45005)
INSERT INTO Cliente VALUES(16, 'Raquel', 'Gómez', '369147258', 'Calle Doce 16', 'Toledo', 45006)
INSERT INTO Cliente VALUES(17, 'Alberto', 'López', '789456123', 'Calle Lopetegui 17', 'Toledo', 45007)
INSERT INTO Cliente VALUES(18, 'Natalia', 'Sánchez', '654789123', 'Calle Priscila 18', 'Ávila', 05001)
INSERT INTO Cliente VALUES(19, 'Carlos', 'Martínez', '987654321', 'Calle Salmon 19', 'Ávila', 05002)
INSERT INTO Cliente VALUES(20, 'Andrea', 'Gómez', '369852147', 'Calle Gran Vía 20', 'Ávila', 05003)
INSERT INTO Cliente VALUES(21, 'Daniel', 'Gutiérrez', '987654321', 'Calle Mayor 21', 'Cuenca', 16001)
INSERT INTO Cliente VALUES(22, 'Laura', 'Martín', '654789123', 'Calle Copón 22', 'Cuenca', 16002)
INSERT INTO Cliente VALUES(23, 'Francisco', 'Sánchez', '369852147', 'Calle Garrulo 23', 'Cuenca', 16003)
INSERT INTO Cliente VALUES(24, 'Sofía', 'López', '147258369', 'Calle Gorrión 24', 'Cuenca', 16004)
INSERT INTO Cliente VALUES(25, 'Marcos', 'Gómez', '258369147', 'Calle Latocha 25', 'Cuenca', 16005)
INSERT INTO Cliente VALUES(26, 'Eva', 'Ruiz', '369147258', 'Calle Menor 26', 'Cuenca', 16006)
INSERT INTO Cliente VALUES(27, 'Alejandro', 'Martínez', '123987654', 'Calle Mayor 27', 'Guadalajara', 19001)
INSERT INTO Cliente VALUES(28, 'Celia', 'García', '987123654', 'Calle Treviño 28', 'Guadalajara', 19002)
INSERT INTO Cliente VALUES(29, 'Roberto', 'Sánchez', '654789123', 'Calle Urrutia 29', 'Guadalajara', 19003)
INSERT INTO Cliente VALUES(30, 'Isabel', 'López', '369852147', 'Calle Lope de Vega 30', 'Guadalajara', 19004)

INSERT INTO Pedido VALUES (1, 245.10, 'PAGADO')
INSERT INTO Pedido VALUES (2, 190.90, 'PAGADO')
INSERT INTO Pedido VALUES (3, 421.60, 'PAGADO')
INSERT INTO Pedido VALUES (4, 368.20, 'PAGADO')
INSERT INTO Pedido VALUES (5, 412.50, 'PAGADO')
INSERT INTO Pedido VALUES (6, 226.30, 'PAGADO')
INSERT INTO Pedido VALUES (7, 220.00, 'PENDIENTE')
INSERT INTO Pedido VALUES (8, 109.20, 'PAGADO')
INSERT INTO Pedido VALUES (9, 378.00, 'PAGADO')
INSERT INTO Pedido VALUES (10, 122.40, 'PAGADO')
INSERT INTO Pedido VALUES (11, 235.00, 'PAGADO')
INSERT INTO Pedido VALUES (12, 20.00, 'PAGADO')
INSERT INTO Pedido VALUES (13, 82.00, 'PAGADO')
INSERT INTO Pedido VALUES (14, 222.90, 'PAGADO')
INSERT INTO Pedido VALUES (15, 286.00, 'PAGADO')
INSERT INTO Pedido VALUES (16, 210.00, 'PAGADO')
INSERT INTO Pedido VALUES (17, 222.00, 'PAGADO')
INSERT INTO Pedido VALUES (18, 255.10, 'PAGADO')
INSERT INTO Pedido VALUES (19, 402.75, 'PENDIENTE')
INSERT INTO Pedido VALUES (1, 214.60, 'PAGADO')
INSERT INTO Pedido VALUES (1, 219.50, 'PAGADO')
INSERT INTO Pedido VALUES (2, 261.80, 'PAGADO')
INSERT INTO Pedido VALUES (3, 463.20, 'PAGADO')
INSERT INTO Pedido VALUES (4, 60.30, 'PAGADO')
INSERT INTO Pedido VALUES (5, 339.80, 'PAGADO')
INSERT INTO Pedido VALUES (16, 188.00, 'PAGADO')
INSERT INTO Pedido VALUES (7, 352.80, 'PAGADO')
INSERT INTO Pedido VALUES (28, 14.00, 'PAGADO')
INSERT INTO Pedido VALUES (29, 100.50, 'PAGADO')
INSERT INTO Pedido VALUES (10, 354.30, 'PENDIENTE')
INSERT INTO Pedido VALUES (11, 361.60, 'PAGADO')
INSERT INTO Pedido VALUES (22, 176.00, 'PAGADO')
INSERT INTO Pedido VALUES (3, 49.20, 'PAGADO')
INSERT INTO Pedido VALUES (24, 97.50, 'PAGADO')
INSERT INTO Pedido VALUES (5, 178.60, 'PAGADO')
INSERT INTO Pedido VALUES (6, 103.20, 'PAGADO')
INSERT INTO Pedido VALUES (27, 100.80, 'PAGADO')
INSERT INTO Pedido VALUES (8, 72.75, 'PAGADO')
INSERT INTO Pedido VALUES (9, 40.00, 'PAGADO')
INSERT INTO Pedido VALUES (10, 84.00, 'PAGADO')
INSERT INTO Pedido VALUES (11, 30.00, 'PAGADO')
INSERT INTO Pedido VALUES (12, 50.00, 'PAGADO')
INSERT INTO Pedido VALUES (13, 105.00, 'PAGADO')
INSERT INTO Pedido VALUES (14, 62.50, 'PAGADO')
INSERT INTO Pedido VALUES (5, 644.60, 'PENDIENTE')
INSERT INTO Pedido VALUES (26, 378.20, 'PAGADO')
INSERT INTO Pedido VALUES (27, 253.45, 'PAGADO')
INSERT INTO Pedido VALUES (28, 22.00, 'PAGADO')
INSERT INTO Pedido VALUES (29, 123.00, 'PENDIENTE')
INSERT INTO Pedido VALUES (30, 268.90, 'PAGADO')

INSERT INTO Detalle_Pedido VALUES (1, 5, 14);
INSERT INTO Detalle_Pedido VALUES (1, 6, 47);
INSERT INTO Detalle_Pedido VALUES (1, 17, 55);
INSERT INTO Detalle_Pedido VALUES (1, 22, 31);
INSERT INTO Detalle_Pedido VALUES (2, 2, 59);
INSERT INTO Detalle_Pedido VALUES (2, 1, 98);
INSERT INTO Detalle_Pedido VALUES (2, 4, 24);
INSERT INTO Detalle_Pedido VALUES (3, 3, 86);
INSERT INTO Detalle_Pedido VALUES (3, 11, 31);
INSERT INTO Detalle_Pedido VALUES (3, 15, 63);
INSERT INTO Detalle_Pedido VALUES (3, 17, 91);
INSERT INTO Detalle_Pedido VALUES (4, 12, 60);
INSERT INTO Detalle_Pedido VALUES (4, 13, 89);
INSERT INTO Detalle_Pedido VALUES (5, 26, 84);
INSERT INTO Detalle_Pedido VALUES (5, 25, 51);
INSERT INTO Detalle_Pedido VALUES (6, 14, 33);
INSERT INTO Detalle_Pedido VALUES (6, 29, 68);
INSERT INTO Detalle_Pedido VALUES (7, 30, 90);
INSERT INTO Detalle_Pedido VALUES (7, 3, 94);
INSERT INTO Detalle_Pedido VALUES (7, 2, 12);
INSERT INTO Detalle_Pedido VALUES (8, 23, 39);
INSERT INTO Detalle_Pedido VALUES (9, 20, 31);
INSERT INTO Detalle_Pedido VALUES (9, 16, 75);
INSERT INTO Detalle_Pedido VALUES (9, 10, 63);
INSERT INTO Detalle_Pedido VALUES (9, 9, 57);
INSERT INTO Detalle_Pedido VALUES (10, 6, 61);
INSERT INTO Detalle_Pedido VALUES (10, 7, 41);
INSERT INTO Detalle_Pedido VALUES (11, 8, 94);
INSERT INTO Detalle_Pedido VALUES (12, 1, 25);
INSERT INTO Detalle_Pedido VALUES (13, 3, 82);
INSERT INTO Detalle_Pedido VALUES (14, 15, 41);
INSERT INTO Detalle_Pedido VALUES (14, 18, 23);
INSERT INTO Detalle_Pedido VALUES (14, 13, 27);
INSERT INTO Detalle_Pedido VALUES (15, 21, 52);
INSERT INTO Detalle_Pedido VALUES (16, 28, 75);
INSERT INTO Detalle_Pedido VALUES (17, 22, 49);
INSERT INTO Detalle_Pedido VALUES (17, 24, 23);
INSERT INTO Detalle_Pedido VALUES (17, 7, 53);
INSERT INTO Detalle_Pedido VALUES (18, 10, 49);
INSERT INTO Detalle_Pedido VALUES (18, 6, 17);
INSERT INTO Detalle_Pedido VALUES (18, 18, 51);
INSERT INTO Detalle_Pedido VALUES (19, 29, 69);
INSERT INTO Detalle_Pedido VALUES (19, 30, 27);
INSERT INTO Detalle_Pedido VALUES (19, 5, 89);
INSERT INTO Detalle_Pedido VALUES (19, 9, 69);
INSERT INTO Detalle_Pedido VALUES (20, 19, 82);
INSERT INTO Detalle_Pedido VALUES (20, 7, 90);
INSERT INTO Detalle_Pedido VALUES (21, 11, 51);
INSERT INTO Detalle_Pedido VALUES (21, 21, 26);
INSERT INTO Detalle_Pedido VALUES (22, 24, 44);
INSERT INTO Detalle_Pedido VALUES (22, 10, 44);
INSERT INTO Detalle_Pedido VALUES (22, 3, 25);
INSERT INTO Detalle_Pedido VALUES (22, 5, 40);
INSERT INTO Detalle_Pedido VALUES (23, 26, 68);
INSERT INTO Detalle_Pedido VALUES (23, 28, 49);
INSERT INTO Detalle_Pedido VALUES (23, 17, 27);
INSERT INTO Detalle_Pedido VALUES (24, 16, 29);
INSERT INTO Detalle_Pedido VALUES (24, 14, 17);
INSERT INTO Detalle_Pedido VALUES (25, 13, 61);
INSERT INTO Detalle_Pedido VALUES (25, 16, 90);
INSERT INTO Detalle_Pedido VALUES (26, 6, 70);
INSERT INTO Detalle_Pedido VALUES (26, 5, 48);
INSERT INTO Detalle_Pedido VALUES (26, 3, 68);
INSERT INTO Detalle_Pedido VALUES (27, 28, 90);
INSERT INTO Detalle_Pedido VALUES (27, 16, 84);
INSERT INTO Detalle_Pedido VALUES (28, 3, 14);
INSERT INTO Detalle_Pedido VALUES (29, 2, 67);
INSERT INTO Detalle_Pedido VALUES (30, 8, 57);
INSERT INTO Detalle_Pedido VALUES (30, 4, 99);
INSERT INTO Detalle_Pedido VALUES (30, 30, 94);
INSERT INTO Detalle_Pedido VALUES (31, 26, 33);
INSERT INTO Detalle_Pedido VALUES (31, 28, 82);
INSERT INTO Detalle_Pedido VALUES (32, 17, 88);
INSERT INTO Detalle_Pedido VALUES (33, 16, 41);
INSERT INTO Detalle_Pedido VALUES (34, 14, 65);
INSERT INTO Detalle_Pedido VALUES (35, 13, 47);
INSERT INTO Detalle_Pedido VALUES (36, 16, 86);
INSERT INTO Detalle_Pedido VALUES (37, 6, 84);
INSERT INTO Detalle_Pedido VALUES (38, 5, 97);
INSERT INTO Detalle_Pedido VALUES (39, 3, 44);
INSERT INTO Detalle_Pedido VALUES (40, 28, 30);
INSERT INTO Detalle_Pedido VALUES (41, 16, 25);
INSERT INTO Detalle_Pedido VALUES (42, 3, 50);
INSERT INTO Detalle_Pedido VALUES (43, 2, 70);
INSERT INTO Detalle_Pedido VALUES (44, 8, 25);
INSERT INTO Detalle_Pedido VALUES (45, 4, 77);
INSERT INTO Detalle_Pedido VALUES (45, 30, 24);
INSERT INTO Detalle_Pedido VALUES (45, 26, 57);
INSERT INTO Detalle_Pedido VALUES (45, 28, 51);
INSERT INTO Detalle_Pedido VALUES (45, 17, 84);
INSERT INTO Detalle_Pedido VALUES (46, 26, 26);
INSERT INTO Detalle_Pedido VALUES (46, 14, 14);
INSERT INTO Detalle_Pedido VALUES (46, 13, 40);
INSERT INTO Detalle_Pedido VALUES (46, 16, 67);
INSERT INTO Detalle_Pedido VALUES (46, 6, 78);
INSERT INTO Detalle_Pedido VALUES (47, 5, 39);
INSERT INTO Detalle_Pedido VALUES (47, 3, 89);
INSERT INTO Detalle_Pedido VALUES (47, 28, 14);
INSERT INTO Detalle_Pedido VALUES (47, 16, 80);
INSERT INTO Detalle_Pedido VALUES (48, 3, 22);
INSERT INTO Detalle_Pedido VALUES (49, 2, 82);
INSERT INTO Detalle_Pedido VALUES (50, 8, 51);
INSERT INTO Detalle_Pedido VALUES (50, 4, 49);
INSERT INTO Detalle_Pedido VALUES (50, 30, 77);

--************************************************************************************************************************************************

--1.0.-CALCULA SI HAY ALGUN PEDIDO QUE NO COINCIDE EL PRECIO TOTAL EN PEDIDO CON EL CÁLCULO DE PRECIO DE VENTA POR CANTIDAD EN DETALLE PEDIDO.
SELECT Detalle_Pedido.ID_Pedido, SUM(producto.Precio_venta*detalle_pedido.cantidad) AS 'Precio detalle pedido' , Pedido.Precio_Total
FROM Detalle_Pedido
INNER JOIN producto ON Detalle_Pedido.ID_Producto=Producto.ID_Producto
INNER JOIN pedido ON Detalle_Pedido.ID_Pedido=Pedido.ID_Pedido
GROUP BY Detalle_Pedido.ID_Pedido,Pedido.Precio_Total
HAVING SUM(producto.Precio_venta*detalle_pedido.cantidad)!=Pedido.Precio_Total;

--2.0.- Dime el nombre del cliente (concatenando nombre y apellido)y cuantos productos ha comprado ( nombre y cantidad de cada uno)
--concatenar: CONCAT(tabla.campo, ' ', tabla.campo)
SELECT CONCAT(Cliente.Nombre,' ',Cliente.Apellido) AS 'Nombre', Producto.Nombre,Detalle_Pedido.Cantidad
FROM Cliente
INNER JOIN Pedido ON Cliente.ID_Cliente=Pedido.ID_Cliente
INNER JOIN Detalle_Pedido ON Pedido.ID_Pedido=Detalle_Pedido.ID_Pedido
INNER JOIN Producto ON Detalle_Pedido.ID_Producto=Producto.ID_Producto
ORDER BY Cliente.Nombre;

--3.0.- Dame el nombre del cliente y la cantidad total de productos que ha comprado 
--ordenandolos de mayor a menor
SELECT CONCAT(Cliente.Nombre,' ',Cliente.Apellido) AS 'Nombre',SUM(Detalle_Pedido.Cantidad)AS 'productos comprados'
FROM Cliente
INNER JOIN Pedido ON Cliente.ID_Cliente=Pedido.ID_Cliente
INNER JOIN Detalle_Pedido ON Pedido.ID_Pedido=Detalle_Pedido.ID_Pedido
GROUP BY CONCAT(Cliente.Nombre,' ',Cliente.Apellido)
ORDER BY SUM(Detalle_Pedido.Cantidad)DESC;

--4.0.- Dame los datos de los clientes que no han hecho pedidos
SELECT * 
FROM Cliente
LEFT JOIN Pedido ON Cliente.ID_Cliente=Pedido.ID_Cliente
WHERE Pedido.ID_Cliente IS NULL;

SELECT  DISTINCT ID_CLIENTE FROM PEDIDO

--5.0.- Obtener un listado con los alergenos que tiene cada pedido
SELECT * FROM Producto;
SELECT * FROM Pedido;

SELECT DISTINCT Detalle_Pedido.ID_Pedido, Producto.Alérgenos 
FROM Detalle_Pedido
INNER JOIN Producto ON Detalle_Pedido.ID_Producto=Producto.ID_Producto;

--6.0.- Obtener un listado con 3 productos mas vendidos
 
SELECT

--realizzamos cambios en el repositrio de un compañero.
select * from Cliente;
select * from Detalle_Pedido