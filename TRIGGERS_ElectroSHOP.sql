 --Tabla nueva para guardar los datos del nuevo producto junto a la fecha de su creacion
 CREATE TABLE TR_Registro_Productos(
 cod_prod int primary key,
 cod_categ int,
 nombre varchar(100),
 cuit_prov varchar(50),
 Constraint FK_cuit_proved FOREIGN KEY (cuit_prov)  REFERENCES  proveedor (cuit_prov),
 Constraint FK_cod_categ FOREIGN KEY (cod_categ)  REFERENCES  categoria_producto (cod_categ),
 fecha_registro date
 )
 go

 --Trigger o disparador creado para guardar datos del producto registrado mas su fecha de creacion.
 --nombre del trigger
CREATE TRIGGER TR_nuevo_prod
--tabla sobre la que va actuar
on producto
--indico que el trigger actuara una ves terminado la insercion del nuevo producto( se puede hacer despues de la insercion(AFTER), o antes(BEFORE) o durante(FOR))
after insert
as
begin
--una ves insertado el prod crea una especie de copia del mismo con su fecha de creacion.(se puede hacer Insert, Update o Delete)
insert into TR_Registro_Productos(
cod_prod,
cod_categ,
nombre,
cuit_prov,
fecha_registro
) select cod_prod,cod_categ,nombre,cuit_prov,getdate()--inserta los datos rescatados(copia)
from inserted --desde el produto creado es que copia los datos para guardar en la tabla TR_Registro_Productos

end

--creo un producto y se activa el trigger
INSERT INTO producto (cod_categ,nombre,descripcion,cuit_prov) VALUES (1,'Samsung A8','162gb,camara frontral 62px',27402838234)

--inspeciono los datos rescatados y guardados del producto creado.
select * from TR_Registro_Productos