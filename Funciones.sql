delimiter //
CREATE FUNCTION `ObtenerEdadBillonario`(billonario_id INT) -- obtiene la edad del billonario junto con su nombrecompleto
RETURNS json
    READS SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE info JSON;

    SELECT JSON_OBJECT(NombreCompleto, Edad )
    INTO info
    FROM billonarios
    WHERE IdBillonario = billonario_id;

    RETURN info;
END






delimiter // -- esta funcion obtiene nombre de la organizacion junto con el nombre completo del billonario
CREATE FUNCTION `ObtenerEmpresaCash`(billonario_id INT) RETURNS json
    READS SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE info JSON;

    SELECT JSON_OBJECT( b.NombreCompleto, o.Organizacion)
    INTO info
    FROM billonarios AS b
    JOIN organizaciones AS o ON b.IdOrganizacion = o.IdOrganizacion
    WHERE b.IdBillonario = billonario_id;

    RETURN info;
END




delimiter // -- devuelve el nombre de la organizacon
CREATE FUNCTION `ObtenerOrganizacion`(billonario_id INT) RETURNS varchar(255) 
    READS SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE nombre_organizacion VARCHAR(255);  -- Ajusta el tipo de dato según la columna 'Organización'

    SELECT Organizacion  -- Reemplaza 'Organizacion' con el nombre de la columna que almacena la organización
    INTO nombre_organizacion
    FROM Organizaciones
    WHERE IdOrganizacion = billonario_id;

    RETURN nombre_organizacion;
END





DELIMITER // -- esta funcion obtiene el patrimonio de la empresa del usuario(billonario)
CREATE FUNCTION `ObtenerPatrimonioNeto`(billonario_id INT) 
    RETURNS decimal(10,2)
    READS SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE patrimonio_neto DECIMAL(10, 2);  -- Ajusta el tipo de dato según la columna 'PatrimonioNeto'

    SELECT PatrimonioNeto  -- Reemplaza 'PatrimonioNeto' con el nombre de la columna que almacena el patrimonio neto
    INTO patrimonio_neto
    FROM Organizaciones
    WHERE IdOrganizacion = billonario_id;

    RETURN patrimonio_neto;
END



DELIMITER //
CREATE FUNCTION EstadoInflacionario(IdPais INT) 
RETURNS VARCHAR(50)
READS SQL DATA
BEGIN
    DECLARE ipc_pais DECIMAL(5,2);
    DECLARE resultado VARCHAR(50);
    -- Obtenemos el IPC del país con el ID proporcionado
    SELECT IPCPais INTO ipc_pais 
    FROM paises
    WHERE IdPais = IdPais 
    LIMIT 1;
    -- Verificamos si el IPC es mayor o igual a 100 y asignamos el resultado a la variable resultado
    IF ipc_pais >= 100 THEN
        SET resultado = 'País Inflacionario';
    ELSEIF ipc_pais <= 100 THEN
      SET resultado = 'No es País Inflacionario';
    END if;

    RETURN resultado; -- Retornamos el valor almacenado en la variable resultado
END //




DELIMITER //
CREATE FUNCTION TipodeBILLO (IdOrganizacion INT) 
    RETURNS varchar(50)
    READS SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE patrimonio_neto DECIMAL(10,2); -- Asegúrate de definir el tipo de dato correcto
    DECLARE resultado VARCHAR(50);
    
    SELECT PatrimonioNeto
    INTO patrimonio_neto
    FROM Organizaciones
    WHERE IdOrganizacion = IdOrganizacion -- Utiliza el parámetro que estás recibiendo
    limit 1; 
    
    IF patrimonio_neto >= 4600 THEN
        SET resultado = 'TIENE MUCHISIMA PLATA';
    ELSE
        SET resultado = 'Es normalito';
    END IF;

    RETURN resultado;
END//
DELIMITER ;
