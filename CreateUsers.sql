use billonary;
-- Crea el usuario con permisos de solo lectura
CREATE USER 'Coder'@'localhost' IDENTIFIED BY 'coderbeca';
-- Concede permisos de solo lectura en todas las tablas de la base billonary
GRANT SELECT ON billonary.* TO 'Coder'@'localhost';

-- Crea el usuario con permisos de inserción, lectura y modificación de datos de la base billonary
CREATE USER 'lucasALM'@'localhost' IDENTIFIED BY 'lucasabad';
-- Concede permisos de inserción, lectura y actualización en todas las tablas de billonary
GRANT INSERT, SELECT, UPDATE ON billonary.* TO 'lucasALM'@'localhost';

-- Restringe la capacidad de eliminar registros para ambos usuarios
REVOKE DELETE ON billonary.* FROM 'Coder'@'localhost';
REVOKE DELETE ON billonary.* FROM 'lucasALM'@'localhost';

SELECT User, Host FROM mysql.user;
SHOW GRANTS FOR 'Coder'@'localhost';
SHOW GRANTS FOR 'lucasALM'@'localhost';