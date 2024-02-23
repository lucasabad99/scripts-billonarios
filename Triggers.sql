create table bitacoc
( -- creacion de tabla bitacoc para guardar la bitacora de los datos
id int primary key auto_increment,
usuario varchar(20),
fecha date,
hora time
);



CREATE TRIGGER billo_log -- Actividad después de la inserción
AFTER INSERT ON billonarios -- Se activa después de una inserción en 'billonarios'
FOR EACH ROW 
INSERT INTO bitacoc (usuario, fecha, hora) 
VALUES (NEW.NombreCompleto, CURDATE(), CURTIME());
-- Inserta en 'bitacoc' el nombre del usuario insertado en 'billonarios', junto con la fecha y la hora actuales


DELIMITER //
CREATE TRIGGER convertir_a_mayusculas
BEFORE INSERT ON billonarios
FOR EACH ROW
BEGIN
    -- Convierte el valor de 'NombreCompleto' a mayúsculas antes de la inserción
    SET NEW.NombreCompleto = UPPER(NEW.NombreCompleto);
END;
//
DELIMITER ;


DELIMITER //
CREATE TRIGGER auditoria_billonario
BEFORE UPDATE ON categoriasnegocio
FOR EACH ROW
BEGIN
    -- Registra en 'bitacoc' información sobre la actualización en 'categoriasnegocio'
    INSERT INTO bitacoc (usuario, fecha, hora)
    VALUES (OLD.Industria, CURDATE(), CURTIME());
END;
//
DELIMITER ;


