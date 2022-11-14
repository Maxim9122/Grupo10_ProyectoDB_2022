
--Creacion de base de datos.

CREATE DATABASE db_electro

go

USE db_electro; ---me posiciona en la base de datos .
go

-------------------si ya  existe una tabla con valores elimina.
if object_id('sucursal') is not null DROP TABLE sucursal;
go
-------------------
if object_id('ciudad') is not null DROP TABLE ciudad;
go
---------------------
if object_id('empleado') is not null DROP TABLE empleado;
go
---------------------
if object_id('cargo') is not null DROP TABLE cargo;
go
---------------------
if object_id('turno_trabajo') is not null DROP TABLE turno_trabajo
go
---------------------
if object_id('zona') is not null DROP TABLE zona;
go
---------------------
if object_id('categoria_producto') is not null DROP TABLE categoria_producto;
go
---------------------
if object_id('proveedor') is not null DROP TABLE proveedor;
go
---------------------
if object_id('producto') is not null DROP TABLE producto;
go
---------------------
if object_id('sucursal_stock') is not null DROP TABLE sucursal_stock;
go
---------------------
if object_id('venta_cabecera') is not null DROP TABLE venta_cabecera;
go
---------------------
if object_id('Tipo_Pago') is not null DROP TABLE Tipo_Pago;
go
---------------------
if object_id('venta_detalle') is not null DROP TABLE venta_detalle;
go
---------------------
if object_id('compra_cabecera') is not null DROP TABLE compra_cabecera;
go
---------------------
if object_id('compra_detalle') is not null DROP TABLE compra_detalle;
go
---------------------


--Creamos las tablas de la base de datos.

CREATE TABLE ciudad(
cod_ciudad int primary key, 
descripcion varchar(50))
GO
---------------------------------------------

CREATE TABLE cargo(
cod_cargo int PRIMARY KEY IDENTITY,
descripcion varchar(50))
GO
---------------------------------------------

CREATE TABLE turno_trabajo(
cod_turno int IDENTITY primary key , 
descripcion varchar(30))
GO
---------------------------------------------

CREATE TABLE empleado(
cod_emp int primary key,
apellido varchar(50) NOT NULL,
nombre varchar(50) NOT NULL,
sexo varchar(1) NOT NULL,
tel varchar(50) NOT NULL,
fecnac date,
cod_cargo int, 
cod_turno int,
CONSTRAINT CK_sexo CHECK (sexo IN ('F', 'M')), --restrincion ,permite valores en ese formato
Constraint FK_cod_cargo FOREIGN KEY (cod_cargo)  REFERENCES cargo (cod_cargo),
Constraint FK_cod_turno FOREIGN KEY (cod_turno)  REFERENCES turno_trabajo (cod_turno))
GO
---------------------------------------------
CREATE TABLE sucursal(
cod_suc int primary key,
cod_ciudad int,
direccion varchar(230)NOT NULL,
tel varchar(50),
Constraint FK_cod_ciudad FOREIGN KEY (cod_ciudad)  REFERENCES ciudad (cod_ciudad)
)
GO
---------------------------------------------

CREATE TABLE categoria_producto(
 cod_categ int primary key,
 descripcion varchar(50),
)
 GO
 ---------------------------------------------

CREATE TABLE proveedor(
cuit_prov int primary key,
razonsocial  varchar(50),
nombre varchar (20),
tel varchar(50),
email  varchar(50))
GO
---------------------------------------------

CREATE TABLE producto(
 cod_prod int primary key,
 cod_categ int,
 nombre varchar(100),
 descripcion varchar(100),
 cuit_prov int,
 precio_compra int,
 precio_venta int,
 Constraint FK_cuit_prove FOREIGN KEY (cuit_prov)  REFERENCES  proveedor (cuit_prov),
 Constraint FK_cod_cate FOREIGN KEY (cod_categ)  REFERENCES  categoria_producto (cod_categ),
 )
 GO
 ---------------------------------------------
 
 CREATE TABLE seguimiento_stock(
 cod_suc int ,
 cod_prod int,
 cantidad int,
 stock_min int, ---cantidad minima de mercaderias---
 Constraint PK_sucursal_stock PRIMARY KEY ( cod_suc, cod_prod))
 GO
 ---------------------------------------------

CREATE TABLE Tipo_Pago (
  cod_pago int PRIMARY KEY,
  descripcion varchar(50)
 )
  GO
  ---------------------------------------------
 
 CREATE TABLE cliente (
 cod_cliente int primary key,
 apellido varchar(50), 
 nombre varchar(50), 
 tel varchar(10), 
 direccion varchar(100)
)
go
  --------------------------------------------

CREATE TABLE venta_cabecera(
  cod_venta int primary key ,
  cod_suc int,
  cod_emp int,
  cod_pago int,
  fecha date,
  cod_cliente int,
  Constraint FK_cod_suc FOREIGN KEY (cod_suc)  REFERENCES sucursal ( cod_suc),
  Constraint FK_cod_emp FOREIGN KEY (cod_emp)  REFERENCES empleado (cod_emp),
  Constraint FK_cod_pago FOREIGN KEY (cod_pago)  REFERENCES Tipo_Pago (cod_pago),
  Constraint FK_cod_cliente FOREIGN KEY (cod_cliente)  REFERENCES cliente (cod_cliente)
  )
  GO
  ---------------------------------------------

CREATE TABLE venta_detalle(
nroLinea int identity,
cod_venta int,
cod_prod int,
cantidad int,
Constraint PK_venta_detalle PRIMARY KEY ( nroLinea,cod_venta),
Constraint FK_cod_prod FOREIGN KEY (cod_prod)  REFERENCES producto (cod_prod)
)
GO
---------------------------------------------

CREATE TABLE compra_cabecera(
cod_compra int primary key,
cod_suc int,
cuit_prov int,
cod_emp int,
fecha date,
Constraint FK_codsuc FOREIGN KEY (cod_suc)  REFERENCES sucursal (cod_suc),
Constraint FK_cuit_prov FOREIGN KEY (cuit_prov)  REFERENCES proveedor (cuit_prov),
Constraint FK_cod_empl FOREIGN KEY (cod_emp)  REFERENCES empleado (cod_emp)
)
GO
---------------------------------------------

CREATE TABLE compra_detalle(     
cod_compra int,
nro_linea int,
cod_prod int,
cantidad int,
Constraint PK_compra_detalle PRIMARY KEY ( cod_compra, nro_linea),
Constraint FK_cod_produ FOREIGN KEY (cod_prod)  REFERENCES producto (cod_prod),
)V
GO

--creamos las claves (PK y FK)y relacionamos las tablas
