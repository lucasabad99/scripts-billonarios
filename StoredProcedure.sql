delimiter //
CREATE PROCEDURE actividad(IN fx VARCHAR(100)) -- Se escribe el nombre y automaticamente se inserta como nuevo registro y se muestra ccon un order by desc.
BEGIN
    DECLARE mensaje VARCHAR(100);

    IF fx <> '' THEN
        INSERT INTO billonarios (NombreCompleto) VALUES (fx);
    ELSE
        SET mensaje = 'ERROR: no se pudo crear el producto indicado';
    END IF;

    IF mensaje IS NOT NULL THEN
        SELECT mensaje AS Resultado;
    ELSE
    SET @consulta = 'SELECT * FROM billonarios ORDER BY IdBillonario DESC';

    PREPARE runsql FROM @consulta;
    EXECUTE runsql;
    DEALLOCATE PREPARE runsql;
    
    END IF;
END;


DELIMITER //
CREATE PROCEDURE OrdenarTabla (IN tabla VARCHAR(100), IN campo_ordenamiento VARCHAR(100), IN orden VARCHAR(50))
BEGIN   -- se escribe la tabla, campo y el tipo de orden by(asc o desc). Devuelve el select ordenado como le pasamos en el call().
    DECLARE ordenamiento VARCHAR(10);
    
    -- Determinar si el orden es ascendente o descendente
    IF orden = 'ascendente' OR orden = 'ASC' THEN
        SET ordenamiento := 'ASC';
    ELSEIF orden = 'descendente' OR orden = 'DESC' THEN
        SET ordenamiento := 'DESC';
    ELSE
        SELECT 'El tipo de orden no es válido. Debe ser "ascendente" o "descendente"' AS Error;
	
    END IF;
    -- Ejecutar la consulta con el campo de ordenamiento y el tipo de ordenamiento especificados
    SET @sql := CONCAT('SELECT * FROM ', tabla, ' ORDER BY ', campo_ordenamiento, ' ', ordenamiento);
    PREPARE runsql FROM @sql;
    EXECUTE runsql;
    DEALLOCATE PREPARE runsql;
END;



DELIMITER //
CREATE PROCEDURE MacroPais (IN pais CHAR(20)) -- se escribe el nombre de un pais y devuelve los datos de la macroeonomia como pbi, ipc impuestos etc...
BEGIN 
    DECLARE consulta VARCHAR(1000); 

    IF pais <> '' THEN
        SET consulta = CONCAT('SELECT IPCPais, PBIPais, EsperanzaVida, IngresosFiscales, TasaImpositiva, PoblacionPais FROM paises WHERE PaisResidencia = "', pais, '"');
      SET @sql = consulta;
        PREPARE runsql FROM @sql;
        EXECUTE runsql;
        DEALLOCATE PREPARE runsql;
    ELSE
        SELECT 'Vuelva a ingresar el país' AS message;
    END IF;
END;




DELIMITER //
CREATE PROCEDURE CalcularPromedio (IN TABLA VARCHAR(100), IN COLUMNA VARCHAR(100)) -- se escribe la tabla y columna y devuelve un promedio de dicha columna
BEGIN
    SET @promedio := 0;
    
    SET @consulta := CONCAT('SELECT ROUND(AVG(', COLUMNA, '), 2) INTO @promedio FROM ', TABLA);
    PREPARE runsql FROM @consulta;
    EXECUTE runsql;
    DEALLOCATE PREPARE runsql;
    
    SELECT CONCAT('El promedio de ', COLUMNA, ' en la tabla ', TABLA, ' es: ', @promedio) AS MESSAGE;
END;




