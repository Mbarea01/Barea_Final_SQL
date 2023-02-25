-- Pruebas para usuario 

-- Puede ingresar un nuevo cliente y utilizar las SP a la que le dimos permiso

/* Nota: Si al hacer esta transaccion da error de CANNOT UPDATE CHILD ROW, chequear el numero de id
de cliente que esta en el SP de los detalles, puede haber quedado mal por las pruebas anteriores, se
puede volver al id haciendo ALTER TABLE a la tabla pedidos o bien poner el id correspondiente en los
SP. */

DELIMITER //
START TRANSACTION;
INSERT INTO clientes (ingresos,Anio_de_nacimiento,educacion,Estado_civil,Cantidad_niños,Cantidad_adolescentes) VALUES 
(NULL);


-- Opcion COMMIT;
-- COMMIT;

-- Opcion ROLLBACK;
-- ROLLBACK;

/* En el caso de hacer un ROLLBACK podemos hacer un ALTER TABLE de la tabla guitarras y volver el auto increment
al numero anterior gracias a que también le dimos permiso para eso. */

-- Puede actualizar el costo de un material y utilizar la SP a la que le dimos permiso
/* Cuando realicemos el movimiento podemos chequear que la actualización de precio quedo reflejada en la tabla
movimientos_materiales con el nuevo usuario. También se actualizaran los precios de los productos con id 5 y 21
gracias al funcionamiento del SP, que son las que utilizan este material. */


-- Opcion ROLLBACK
-- ROLBACK;

-- Puede hacer consultas de cualquier tipo a las tablas y vistas disponibles.

SELECT * FROM productos;
SELECT * FROM quejas;
SELECT * FROM cantidad_visitas;
SELECT * FROM clientes_vinculados;

