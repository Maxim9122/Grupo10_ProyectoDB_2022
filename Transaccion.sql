--Ejemplo de error, intentamos cargar un producto que ya se encuentra registrado y no nos permite hacer la transaccion. 

declare @Error int

begin tran
update producto set cod_prod = 10002
where nombre = 'Samsung A52'

INSERT INTO producto(cod_prod,cod_categ,nombre,descripcion,cuit_prov,precio_compra,precio_venta) 
VALUES (10002,1,'Samsung A90','162gb,camara frontral 64px',2740283,43699,98999);


set @Error = @@ERROR
  if  (@Error <>0)
    begin
        rollback tran
        print 'Error en la transacción: Producto ya existente '
    end
    else
    commit