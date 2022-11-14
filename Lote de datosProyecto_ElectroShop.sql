---------------------------
--BASE DE DATOS I. LABORATORIO SQL.
--LOTE DE DATOS.
---------------------------
use  db_electro

---CIUDAD---

INSERT INTO ciudad (cod_ciudad, descripcion) VALUES (1, 'Corrientes')
INSERT INTO ciudad (cod_ciudad, descripcion) VALUES (2, 'Resistencia')

select*from ciudad

---CARGO---
INSERT INTO cargo(descripcion) VALUES ('Cajero')
INSERT INTO cargo(descripcion) VALUES ('Vendedor')
INSERT INTO cargo(descripcion) VALUES ('Repositor')
INSERT INTO cargo(descripcion) VALUES ('Gerente')

select * from cargo;

---Turno---
INSERT INTO turno_trabajo (descripcion) VALUES ('Manaña')
INSERT INTO turno_trabajo (descripcion) VALUES ('Tarde')

select * from turno_trabajo;

---Empleado---
INSERT INTO empleado(cod_emp,apellido,nombre,sexo,tel,fecnac,cod_cargo,cod_turno ) VALUES (1010,'Lorenzon', 'Eduardo', 'M','3576890654','19841209',1,1)
INSERT INTO empleado(cod_emp,apellido,nombre,sexo,tel,fecnac,cod_cargo,cod_turno ) VALUES (1011,'Morel', 'Lorena', 'F','37946890654','19890726',2,1)
INSERT INTO empleado(cod_emp,apellido,nombre,sexo,tel,fecnac,cod_cargo,cod_turno ) VALUES (1012,'Gomez', 'Julia', 'F','3346890654','19900330',1,2)
INSERT INTO empleado(cod_emp,apellido,nombre,sexo,tel,fecnac,cod_cargo,cod_turno ) VALUES (1013,'Aguirre', 'Eduardo', 'M','3777890654','19850805',3,2)
INSERT INTO empleado(cod_emp,apellido,nombre,sexo,tel,fecnac,cod_cargo,cod_turno ) VALUES (1014,'Alfonzo', 'Ezequiel', 'M','3576890987','19890625',3,1)
INSERT INTO empleado(cod_emp,apellido,nombre,sexo,tel,fecnac,cod_cargo,cod_turno) VALUES (1015,'Caballero', 'Marcos', 'M','3572345654','19910902',2,2)
INSERT INTO empleado(cod_emp,apellido,nombre,sexo,tel,fecnac,cod_cargo,cod_turno ) VALUES (1016,'Baez', 'Lucia', 'F','3575460987','19971125',4,1)
INSERT INTO empleado(cod_emp,apellido,nombre,sexo,tel,fecnac,cod_cargo,cod_turno ) VALUES (1019,'Caballero', 'Juan', 'M','3794576821','19980122',4,2)
INSERT INTO empleado(cod_emp,apellido,nombre,sexo,tel,fecnac,cod_cargo,cod_turno ) VALUES (1017,'Romero', 'Clarisa','F', '3782647397', '19800415',3,2)
INSERT INTO empleado(cod_emp,apellido,nombre,sexo,tel,fecnac,cod_cargo,cod_turno ) VALUES (1018,'Escalante', 'Javier Ramon','M', '3794576812', '19780305',1,2)
INSERT INTO empleado(cod_emp,apellido,nombre,sexo,tel,fecnac,cod_cargo,cod_turno) VALUES (1020,'Godoy', 'Nestor', 'M','3622675385','19970412',2,2)
select * from empleado;

---Sucursal---
INSERT INTO sucursal(cod_suc,cod_ciudad,direccion,tel) VALUES (1,1,'Las Heras 2523 ', '3762768952')
INSERT INTO sucursal(cod_suc,cod_ciudad,direccion,tel) VALUES (2,1, 'Junin 980', '3794227899')
INSERT INTO sucursal(cod_suc,cod_ciudad,direccion,tel) VALUES (3,2,'San Juan 2473 ', '3794278928')
INSERT INTO sucursal(cod_suc,cod_ciudad,direccion,tel) VALUES (4,2, 'Irigoyen 1670', '3794652947')

---Categoria productos---
INSERT INTO categoria_producto(cod_categ, descripcion) VALUES (1,'Celulares')
INSERT INTO categoria_producto(cod_categ, descripcion) VALUES (2,'Tables y notbooks')
INSERT INTO categoria_producto(cod_categ, descripcion) VALUES (3,'Accesorios')
INSERT INTO categoria_producto(cod_categ, descripcion) VALUES (4,'Electrodomesticos')

select * from categoria_producto;

---Proveedores---

INSERT INTO  proveedor (cuit_prov,nombre,razonsocial,tel, email) VALUES (2740283,'EQUIPAR','S.A','3456098765','equipar.srl@gmail.com')

select * from proveedor;

---Productos---
INSERT INTO producto (cod_prod,cod_categ,nombre,descripcion,cuit_prov,precio_compra,precio_venta) VALUES (10001,1,'Samsung A51','162gb,camara frontral 62px',2740283, 41999,105799)
INSERT INTO producto (cod_prod,cod_categ,nombre,descripcion,cuit_prov,precio_compra,precio_venta) VALUES (10002,1,'Samsung A52','162gb,camara frontral 64px',2740283,43699,98999)
INSERT INTO producto (cod_prod,cod_categ,nombre,descripcion,cuit_prov,precio_compra,precio_venta) VALUES (10003,1,'Samsung A03','68gb,NFC',2740283,19999,39799)
INSERT INTO producto (cod_prod,cod_categ,nombre,descripcion,cuit_prov,precio_compra,precio_venta) VALUES (30001,3,'Auriculares airpod','bluetooth',2740283,2399,5599)
INSERT INTO producto (cod_prod,cod_categ,nombre,descripcion,cuit_prov,precio_compra,precio_venta) VALUES (30002,3,'Auriculares samsungA','bluetooth 2.0',2740283,1899,4799)
INSERT INTO producto (cod_prod,cod_categ,nombre,descripcion,cuit_prov,precio_compra,precio_venta) VALUES (30003,3,'Funda para tablet', '12",Rosa',2740283,2399,4899)
INSERT INTO producto (cod_prod,cod_categ,nombre,descripcion,cuit_prov,precio_compra,precio_venta) VALUES (30004,3,'Funda para nootbook','16", azul',2740283,3599,6899)
INSERT INTO producto (cod_prod,cod_categ,nombre,descripcion,cuit_prov,precio_compra,precio_venta) VALUES (30005,3,'Pendrive','8gb',2740283,1599,3209)
INSERT INTO producto (cod_prod,cod_categ,nombre,descripcion,cuit_prov,precio_compra,precio_venta) VALUES (30006,3,'Pendrive','4gb',2740283,999,1989)
INSERT INTO producto (cod_prod,cod_categ,nombre,descripcion,cuit_prov,precio_compra,precio_venta) VALUES (20001,2,'Nootbook Hp','disco solido 120gb',2740283,48799,97899)
INSERT INTO producto (cod_prod,cod_categ,nombre,descripcion,cuit_prov,precio_compra,precio_venta) VALUES (20002,2,'Nootbook Hp','disco rigido 1 tb',2740283,94899,19899)
INSERT INTO producto (cod_prod,cod_categ,nombre,descripcion,cuit_prov,precio_compra,precio_venta) VALUES (20003,2,'Tablet Samsumg Galaxy 03','4 gb de ram',2740283,28999,60210)
INSERT INTO producto (cod_prod,cod_categ,nombre,descripcion,cuit_prov,precio_compra,precio_venta) VALUES (40001,4,'Smart tv sonic','52"',2740283,31699,65899)
INSERT INTO producto (cod_prod,cod_categ,nombre,descripcion,cuit_prov,precio_compra,precio_venta) VALUES (40002,4,'Smart tv panasonic','29"',2740283,26499,52699)
INSERT INTO producto (cod_prod,cod_categ,nombre,descripcion,cuit_prov,precio_compra,precio_venta) VALUES (40003,4,'Smart tv samsumg','62" ',2740283,36777,71555)
INSERT INTO producto (cod_prod,cod_categ,nombre,descripcion,cuit_prov,precio_compra,precio_venta) VALUES (40004,4,'Aire acondicionado','3000fb',2740283,41799,85999)
INSERT INTO producto (cod_prod,cod_categ,nombre,descripcion,cuit_prov,precio_compra,precio_venta) VALUES (10004,1,'Samsung A53','162gb,camara frontral 64px',2740283,46799,102999)
INSERT INTO producto (cod_prod,cod_categ,nombre,descripcion,cuit_prov,precio_compra,precio_venta) VALUES (10005,1,'Samsung A8','162gb,camara frontral 22px',2740283,12999,25899)

select * from producto;

---Tipo de pago---
INSERT INTO Tipo_pago (cod_pago,descripcion) VALUES (1,'DEBITO')
INSERT INTO Tipo_pago (cod_pago,descripcion) VALUES (2,'CREDITO')
INSERT INTO Tipo_pago (cod_pago,descripcion) VALUES (3,'EFECTIVO')

select * from Tipo_pago;

---seguimiento_stock---
INSERT INTO seguimiento_stock (cod_suc, cod_prod, cantidad, stock_min) VALUES (1,1,125,1)
INSERT INTO seguimiento_stock(cod_suc, cod_prod, cantidad, stock_min) VALUES (2,1,125,1)
INSERT INTO seguimiento_stock (cod_suc, cod_prod, cantidad, stock_min) VALUES (3,2,10,1)
INSERT INTO seguimiento_stock (cod_suc, cod_prod, cantidad, stock_min) VALUES (4,2,21,1)
INSERT INTO seguimiento_stock (cod_suc, cod_prod, cantidad, stock_min) VALUES (1,3,125,1)
INSERT INTO seguimiento_stock (cod_suc, cod_prod, cantidad, stock_min) VALUES (2,4,125,1)
INSERT INTO seguimiento_stock (cod_suc, cod_prod, cantidad, stock_min) VALUES (4,5,125,1)
INSERT INTO seguimiento_stock (cod_suc, cod_prod,cantidad, stock_min) VALUES (4,6,125,1)
INSERT INTO seguimiento_stock (cod_suc, cod_prod, cantidad, stock_min) VALUES (1,6,125,1)
INSERT INTO seguimiento_stock (cod_suc, cod_prod, cantidad, stock_min) VALUES (3,7,125,1)
INSERT INTO seguimiento_stock (cod_suc, cod_prod, cantidad, stock_min) VALUES (1,7,125,1)
INSERT INTO seguimiento_stock (cod_suc, cod_prod, cantidad, stock_min) VALUES (2,8,125,1)
INSERT INTO seguimiento_stock (cod_suc, cod_prod, cantidad, stock_min) VALUES (1,8,12,1)
INSERT INTO seguimiento_stock (cod_suc, cod_prod, cantidad, stock_min) VALUES (1,9,6,1)
INSERT INTO seguimiento_stock (cod_suc, cod_prod, cantidad, stock_min) VALUES (3,10,2,1)
INSERT INTO seguimiento_stock (cod_suc, cod_prod, cantidad, stock_min) VALUES (1,11,45,1)
INSERT INTO seguimiento_stock (cod_suc, cod_prod, cantidad, stock_min) VALUES (2,11,15,1)
INSERT INTO seguimiento_stock (cod_suc, cod_prod, cantidad, stock_min) VALUES (1,12,25,1)
INSERT INTO seguimiento_stock (cod_suc, cod_prod, cantidad, stock_min) VALUES (4,12,12,1)

select * from seguimiento_stock;

---venta_cabecera---1020-1015-1011

INSERT INTO venta_cabecera (cod_venta,cod_suc,cod_emp,cod_pago,fecha,cod_cliente) VALUES (101,1,1011,2,'20220809' ,1)
INSERT INTO venta_cabecera (cod_venta,cod_suc,cod_emp,cod_pago,fecha,cod_cliente) VALUES (102,2,1020,3,'20211101',2)
INSERT INTO venta_cabecera (cod_venta,cod_suc,cod_emp,cod_pago,fecha,cod_cliente) VALUES (103,1,1015,1,'20220504' ,3)
INSERT INTO venta_cabecera (cod_venta,cod_suc,cod_emp,cod_pago,fecha,cod_cliente) VALUES (104,1,1011,1, '20210308',4)
INSERT INTO venta_cabecera (cod_venta,cod_suc,cod_emp,cod_pago,fecha,cod_cliente) VALUES (105,1,1020,1,'20191222' ,5)
INSERT INTO venta_cabecera (cod_venta,cod_suc,cod_emp,cod_pago,fecha,cod_cliente) VALUES (106,2,1015,2, '20221130',6)
INSERT INTO venta_cabecera (cod_venta,cod_suc,cod_emp,cod_pago,fecha,cod_cliente) VALUES (107,2,1011,2,'20190212' ,7)
INSERT INTO venta_cabecera (cod_venta,cod_suc,cod_emp,cod_pago,fecha,cod_cliente) VALUES (108,2,1020,2, '20211017',8)
INSERT INTO venta_cabecera (cod_venta,cod_suc,cod_emp,cod_pago,fecha,cod_cliente) VALUES (109,3,1015,3,'20210714' ,9)
INSERT INTO venta_cabecera (cod_venta,cod_suc,cod_emp,cod_pago,fecha,cod_cliente) VALUES (110,3,1011,3,'20220418' ,10)
INSERT INTO venta_cabecera (cod_venta,cod_suc,cod_emp,cod_pago,fecha,cod_cliente) VALUES (112,3,1020,2, '20211028',1)
INSERT INTO venta_cabecera (cod_venta,cod_suc,cod_emp,cod_pago,fecha,cod_cliente) VALUES (113,4,1015,3,'20190619' ,2)
INSERT INTO venta_cabecera (cod_venta,cod_suc,cod_emp,cod_pago,fecha,cod_cliente) VALUES (114,4,1011,1, '20190929',3)
INSERT INTO venta_cabecera (cod_venta,cod_suc,cod_emp,cod_pago,fecha,cod_cliente) VALUES (115,4,1020,2, '20221223',4)
INSERT INTO venta_cabecera (cod_venta,cod_suc,cod_emp,cod_pago,fecha,cod_cliente) VALUES (116,4,1015,1, '20211008',5)
INSERT INTO venta_cabecera (cod_venta,cod_suc,cod_emp,cod_pago,fecha,cod_cliente) VALUES (117,2,1011,3, '20221223',6)
INSERT INTO venta_cabecera (cod_venta,cod_suc,cod_emp,cod_pago,fecha,cod_cliente) VALUES (118,3,1020,3, '20210904',7)
INSERT INTO venta_cabecera (cod_venta,cod_suc,cod_emp,cod_pago,fecha,cod_cliente) VALUES (120,2,1015,3, '20181230',8)
INSERT INTO venta_cabecera (cod_venta,cod_suc,cod_emp,cod_pago,fecha,cod_cliente) VALUES (119,3,1011,1, '20181209',9)
INSERT INTO venta_cabecera (cod_venta,cod_suc,cod_emp,cod_pago,fecha,cod_cliente) VALUES (120,2,1020,2, '20181217',10)


select * from venta_cabecera;

---venta_detalle--- precio_compra precio venta en producto
INSERT INTO venta_detalle (cod_venta,cod_prod,cantidad) VALUES (101,10002,1)
INSERT INTO venta_detalle (cod_venta,cod_prod,cantidad) VALUES (102,10001,2)
INSERT INTO venta_detalle (cod_venta,cod_prod,cantidad) VALUES (103,40001,3)
INSERT INTO venta_detalle (cod_venta,cod_prod,cantidad) VALUES (104,20001,1)
INSERT INTO venta_detalle (cod_venta,cod_prod,cantidad) VALUES (105,30002,1)
INSERT INTO venta_detalle (cod_venta,cod_prod,cantidad) VALUES (106,20002,1)
INSERT INTO venta_detalle (cod_venta,cod_prod,cantidad) VALUES (109,10005,2)
INSERT INTO venta_detalle (cod_venta,cod_prod,cantidad) VALUES (110,30006,1)
INSERT INTO venta_detalle (cod_venta,cod_prod,cantidad) VALUES (111,30005,2)
INSERT INTO venta_detalle (cod_venta,cod_prod,cantidad) VALUES (112,30003,1)
INSERT INTO venta_detalle (cod_venta,cod_prod,cantidad) VALUES (113,40002,3)
INSERT INTO venta_detalle (cod_venta,cod_prod,cantidad) VALUES (114,10004,1)
INSERT INTO venta_detalle (cod_venta,cod_prod,cantidad) VALUES (115,40004,1)
INSERT INTO venta_detalle (cod_venta,cod_prod,cantidad) VALUES (116,30004,1)
INSERT INTO venta_detalle (cod_venta,cod_prod,cantidad) VALUES (117,30001,1)
INSERT INTO venta_detalle (cod_venta,cod_prod,cantidad) VALUES (118,40003,1)
INSERT INTO venta_detalle (cod_venta,cod_prod,cantidad) VALUES (119,10003,1)
INSERT INTO venta_detalle (cod_venta,cod_prod,cantidad) VALUES (120,20003,1)

select * from venta_detalle;

---compra_cabecera---

INSERT INTO compra_cabecera (cod_suc,cuit_prov,cod_emp,fecha) VALUES (1,2740283,1016,'20221110')
INSERT INTO compra_cabecera (cod_suc,cuit_prov,cod_emp,fecha) VALUES (3,2740283,1019,'20221110')
INSERT INTO compra_cabecera (cod_suc,cuit_prov,cod_emp,fecha) VALUES (2,2740283,1016,'20221112')
INSERT INTO compra_cabecera (cod_suc,cuit_prov,cod_emp,fecha) VALUES (4,2740283,1019,'20221113')

select * from compra_cabecera;

---compra_detalle---
INSERT INTO compra_detalle(cod_compra,cod_prod,cantidad) VALUES (101,10001,10)
INSERT INTO compra_detalle(cod_compra,cod_prod,cantidad) VALUES (102,30002,5)
INSERT INTO compra_detalle(cod_compra,cod_prod,cantidad) VALUES (103,10004,15)
INSERT INTO compra_detalle(cod_compra,cod_prod,cantidad) VALUES (104,40002,12)

select * from compra_detalle;

--cliente
INSERT INTO cliente(cod_cliente,apellido,nombre,tel,direccion) VALUES(1,'Esnaola','Pedro','1234567891','las heras 5678')
INSERT INTO cliente(cod_cliente,apellido,nombre,tel,direccion) VALUES(2,'Perez','Juan','1234567891','las piedras 578')
INSERT INTO cliente(cod_cliente,apellido,nombre,tel,direccion) VALUES(3,'Ortiz','Manuel','1234867891','paraguay 568')
INSERT INTO cliente(cod_cliente,apellido,nombre,tel,direccion) VALUES(4,'Villalba','Luciana','1234564891','EE.UU 567')
INSERT INTO cliente(cod_cliente,apellido,nombre,tel,direccion) VALUES(5,'Jara','Nehuen','1234567881','italia 888')
INSERT INTO cliente(cod_cliente,apellido,nombre,tel,direccion) VALUES(6,'Paniagua','Jacinto','1234567591','santa ana 5558')
INSERT INTO cliente(cod_cliente,apellido,nombre,tel,direccion) VALUES(7,'Ortigoza','Pedro','6234565891','solary 5878')
INSERT INTO cliente(cod_cliente,apellido,nombre,tel,direccion) VALUES(8,'Trisher','Francisco','2234565851','catedral 8 1178')
INSERT INTO cliente(cod_cliente,apellido,nombre,tel,direccion) VALUES(9,'Lowin','Luna','4234467891','primera junta 1418')
INSERT INTO cliente(cod_cliente,apellido,nombre,tel,direccion) VALUES(10,'Fernandez','Maria','3234537831','independencia 5741')

select * from clinte;
SELECT count(*) FROM [dbo].[ciudad];
SELECT count(*) FROM [dbo].[sucursal];
SELECT count(*) FROM [dbo].[seguimiento_stock];
SELECT count(*) FROM [dbo].[turno_trabajo];
SELECT count(*) FROM [dbo].[proveedor];
SELECT count(*) FROM [dbo].[cargo];
SELECT count(*) FROM [dbo].[categoria_producto];
SELECT count(*) FROM [dbo].[compra_cabecera];
SELECT count(*) FROM [dbo].[compra_detalle];
SELECT count(*) FROM [dbo].[Tipo_pago];
SELECT count(*) FROM [dbo].[venta_cabecera];
SELECT count(*) FROM [dbo].[venta_detalle];
SELECT count(*) FROM [dbo].[cliente];