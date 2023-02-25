USE clientes_felices;

-- Script para chequear los usuarios
SELECT * FROM CLIENTES;

-- Generacion de usuario
CREATE USER 'clientesfelices'@'localhost' IDENTIFIED BY '123456';



/* Le damos permiso para que pueda ver, insertar, actualizar y borrar registros de la tabla pedidos_detalle, tambien
le damos permiso de ALTER para que si tiene un error pueda volver el auto increment al numero anterior. */
GRANT SELECT, INSERT, UPDATE, DELETE, ALTER ON cantidad_gastada_ult_2_años TO 'clientesfelices'@'localhost';

/* Le damos permiso para que pueda ver, insertar, actualizar y borrar registros de la tabla clientes, tambien
le damos permiso de ALTER para que si tiene un error pueda volver el auto increment al numero anterior. */
GRANT SELECT, INSERT, UPDATE, DELETE, ALTER ON cantidad_visitas TO 'clientesfelices'@'localhost';

/* Le damos permiso para que pueda ver, insertar, actualizar y borrar registros de la tabla direcciones_envio, tambien
le damos permiso de ALTER para que si tiene un error pueda volver el auto increment al numero anterior. */
GRANT SELECT, INSERT, UPDATE, DELETE, ALTER ON clientes TO 'clientesfelices'@'localhost'

/* Le damos permiso para que pueda ver, insertar, actualizar y borrar registros de la tabla movimientos_pedidos,
esto es necesario ya que si por ejemplo ingresara un pedido mal y quisiera hacer un ROLLBACK no podría porque también
estaría eliminando el registro guardado de la tabla de movimientos.*/;
GRANT SELECT, INSERT, UPDATE, DELETE, ALTER ON clientes_vinculados TO 'clientesfelices'@'localhost';

-- Le damos permiso para que pueda ver registros 
GRANT SELECT, INSERT, UPDATE, DELETE, ALTER ON productos TO 'clientesfelices'@'localhost';

-- Le damos permiso para que pueda hacer consultas a esta vista que nos facilita datos de pedidos
GRANT SELECT, INSERT, UPDATE, DELETE, ALTER ON promociones TO 'clientesfelices'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE, ALTER ON quejas TO 'clientesfelices'@'localhost';

-- Le damos permiso para que pueda usar algunas FX que le van a facilitar tareas
GRANT EXECUTE ON FUNCTION clientes_felices.cantidad_gastada_ult_2_años TO 'clientesfelices'@'localhost';
GRANT EXECUTE ON FUNCTION clientes_felices.cantidad_visitas TO 'clientesfelices'@'localhost';
GRANT EXECUTE ON FUNCTION clientes_felices.clientes TO 'clientesfelices'@'localhost';

-- Le damos permiso para que pueda usar algunos SP que le van a facilitar tareas
GRANT EXECUTE ON PROCEDURE fabrica_guitarras.sp_produtos TO 'clientesfelices'@'localhost';
GRANT EXECUTE ON PROCEDURE fabrica_guitarras.sp_promociones TO 'clientesfelices'@'localhost';
GRANT EXECUTE ON PROCEDURE fabrica_guitarras.sp_quejas TO 'clientesfelices'@'localhost';



-- Generacion de usuario de produccion de la fabrica
CREATE USER 'clientes_felices'@'localhost' IDENTIFIED BY '234567';

/* Le damos permiso para que pueda ver, insertar, actualizar y borrar registros de la tabla proveedores, tambien
le damos permiso de ALTER para que si tiene un error pueda volver el auto increment al numero anterior. */
GRANT SELECT, INSERT, UPDATE, DELETE, ALTER ON clientes_felices.clientes TO 'clientes_felices'@'localhost';

/* Le damos permiso para que pueda ver, insertar, actualizar y borrar registross, 
tambien le damos permiso de ALTER para que si tiene un error pueda volver el auto increment al numero anterior. */
GRANT SELECT, INSERT, UPDATE, DELETE, ALTER ON clientes_felices.quejas TO 'clientes_felices'@'localhost';

/* Le damos permiso para que pueda ver, insertar, actualizar y borrar registros , tambien
le damos permiso de ALTER para que si tiene un error pueda volver el auto increment al numero anterior. */
GRANT SELECT, INSERT, UPDATE, DELETE, ALTER ON clientes_felices.promociones TO 'clientes_felices'@'localhost';

/* Le damos permiso para que pueda ver, insertar, actualizar y borrar,
tambien le damos permiso de ALTER para que si tiene un error pueda volver el auto increment al numero anterior. */
GRANT SELECT, INSERT, UPDATE, DELETE, ALTER ON clientes_felices.clientes_vinculados TO 'clientes_felices'@'localhost';

/* Le damos permiso para que pueda ver, insertar, actualizar y borrar, tambien
le damos permiso de ALTER para que si tiene un error pueda volver el auto increment al numero anterior. */
GRANT SELECT, INSERT, UPDATE, DELETE, ALTER ON clientes_felices.promociones TO 'clientes_felices'@'localhost';

/* Le damos permiso para que pueda ver, insertar, actualizar y borrar registros de la tabla,
esto es necesario ya que si por ejemplo ingresara un material mal y quisiera hacer un ROLLBACK no podría porque también
estaría eliminando el registro guardado de la tabla de movimientos. */
GRANT SELECT, INSERT, UPDATE, DELETE, ALTER ON clientes_felices.clientes TO 'clientes_felices'@'localhost';

-- Le damos permiso para que pueda hacer consultas a estas vistas que nos facilitan algunos datos
GRANT SELECT ON clientes_felices.vs_clientes_vinculados  TO 'clientes_felices'@'localhost';
GRANT SELECT ON clientes_felices.vs_cantidad_gastada_ult_2_años TO 'clientes_felices'@'localhost';

-- Le damos permiso para que pueda usar algunos SP que le van a facilitar tareas
GRANT EXECUTE ON PROCEDURE fabrica_guitarras.sp_produtos TO 'clientesfelices'@'localhost';
GRANT EXECUTE ON PROCEDURE fabrica_guitarras.sp_promociones TO 'clientesfelices'@'localhost';
GRANT EXECUTE ON PROCEDURE fabrica_guitarras.sp_quejas TO 'clientesfelices'@'localhost';