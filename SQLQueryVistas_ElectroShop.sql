
------------VISTAS-----------

---Mostrar registros de los empleados y su cargo.
 CREATE VIEW ListaEmpleados
 as
 select empleado.cod_emp, empleado.nombre, empleado.apellido,
 cargo.descripcion as 'categoria'
 from empleado
 left join cargo
 on cargo.cod_cargo= empleado.cod_cargo


 select * from ListaEmpleados;
 
 EXEC sp_helptext ListaEmpleados; ---Procedimiento almacenado muestra el origen de las vistas---

 ---Vistas encriptadas---

 CREATE VIEW ListaEmpleados1 with encryption

 as
 select empleado.cod_emp, empleado.nombre, empleado.apellido,
 cargo.descripcion as 'categoria'
 from empleado
 left join cargo
 on cargo.cod_cargo= empleado.cod_cargo
 
 select * from ListaEmpleados1;

 EXEC sp_helptext ListaEmpleados; ---si encriptamos esto ultimo no va mostrar nada
 ---Vista creada para listar productos con su Tipo_categoria.
 
 CREATE VIEW ListaProductos
as
select producto.cod_prod, producto.nombre,
categoria_producto.descripcion as 'categoria'
from producto
left join categoria_producto
on categoria_producto.cod_categ= producto.cod_categ


---Ejeutamos vista ListaProductos----
select *from ListaProductos;


