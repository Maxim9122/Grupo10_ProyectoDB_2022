

use db_electro

--- comando para dar acceso a la base de datos "db_electro"
sp_grantdbaccess 'usuario'

go
---- comando para dar permiso de crear tablas, modificar, y consultar en la BD
grant create table to usuario

drop table usuario.producto

go