###BillonarioS

Autor: **LUCAS EMIR ABAD CANCINOS**

Profesor: Gabriel Almiñana

Tutor: Natalie Bassano – Ariel Annone

Comisión: 50050

Fecha de entrega: 22/1/2024


**Índice**
1. Introducción
2. Objetivo
3. Situación problemática
4. Modelo de negocio
5. Diagrama de entidad relación
6. Listado de tablas
7. Scripts de creación de objetos de la base de datos
   
   7.1 Script Funciones

   7.2 Script Stored Procedure

   7.3 Script Triggers

   7.4 Script Vistas

   7.5 Script Create tables

   7.6 Script Transacciones

   7.7Script System Users
   
9. Scripts de inserción de datos

   8.1 Script Inserción de datos en Billonarios

   8.2 Script Inserción de datos en CategoriasNegocio

   8.3 Script Inserción de datos en Estados

   8.4 Script Inserción de datos en Organizaciones

   8.5 Script Inserción de datos en Países

11. Informes generados
12. Herramientas y tecnologías usadas
13. Futuras líneas






####  **1) Introducción:**
En el transcurso de este apasionante proyecto, me sumerjo en el intrigante universo de los billonarios y su riqueza a nivel mundial. La esencia de esta investigación radica en el minucioso análisis de un conjunto de datos que comprende cinco tablas interrelacionadas. En cada una de estas tablas, se desglosan aspectos cruciales vinculados a los billonarios, sus países y estados de residencia, las categorías de negocio en las que prosperan y las organizaciones que han contribuido a su éxito.
Cada detalle cuenta. La "Tabla de Billonarios" se erige como un testimonio detallado de la personalidad de estos titanes financieros. Desde sus nombres completos hasta sus fechas de nacimiento, esta tabla revela no solo la esencia de su identidad, sino también su vinculación con categorías específicas de negocios y organizaciones clave. El apellido, el nombre, el título y el rango de cada billonario se entretejen en este tejido de información.

**En el mapa global**. La "Tabla de Países" se convierte en un compendio de datos económicos, desde el Índice de Precios al Consumidor hasta el Producto Interno Bruto, proporcionando un contexto crucial sobre los lugares de residencia de estos magnates. La relación entre los países y los billonarios se plasma en cifras, desde tasas de matriculación hasta la esperanza de vida, delineando un panorama más amplio de su entorno.

**Detalles regionales**. La "Tabla de Estados" ilumina los rincones específicos donde estos individuos excepcionales han elegido establecerse. Desde ciudades hasta coordenadas geoespaciales, cada detalle geográfico contribuye a la narrativa de su éxito.
El negocio detrás del éxito. La "Tabla de Categorías de Negocio" se adentra en los sectores donde estos billonarios han dejado su huella. Cada categoría, industria, y la autenticidad de haberse construido a sí mismos, se desglosan para ofrecer una visión completa de sus hazañas empresariales.

**Alianzas estratégicas**. La "Tabla de Organizaciones" revela las alianzas y empresas asociadas con estos líderes financieros. Desde la fuente de ingresos hasta el patrimonio neto, esta tabla arroja luz sobre las fuentes de su riqueza.

A lo largo de las páginas por venir, estas tablas no serán simples conjuntos de datos; serán la clave para desentrañar tendencias, relaciones y patrones fascinantes en la distribución global de la riqueza. Este proyecto no solo busca analizar números, sino también narrar las historias detrás de los billonarios, proporcionando una comprensión profunda de sus trayectorias excepcionales y del fascinante panorama que dibujan en el tejido económico mundial. ¡Bienvenidos a la exploración del exclusivo y enigmático mundo de los billonarios!

#### 2) Objetivo:
En el corazón de este proyecto se encuentra un ambicioso propósito: sumergirse en el vasto océano de datos sobre billonarios y, mediante el uso meticuloso de SQL, trazar un viaje de descubrimiento y aprendizaje en las profundidades de este exclusivo universo financiero.

La esencia de este proyecto se teje en la habilidad para aplicar una variedad de técnicas y herramientas en SQL, específicamente con el entorno de MySQL. Desde consultas básicas hasta funciones avanzadas, triggers, stored procedures y la creación de un modelo relacional sólido, cada aspecto de SQL se convierte en una llave maestra para desbloquear los secretos dentro de nuestro dataset.

El objetivo fundamental es utilizar SQL como una linterna, iluminando las interconexiones entre los billonarios y sus entornos. Desde consultas básicas que extraen información puntual hasta el diseño y aplicación de funciones que desglosan tendencias complejas, cada paso tiene como fin último el entendimiento más profundo de la riqueza global de estos individuos excepcionales.

No se trata solo de extraer datos; es también una oportunidad para esculpir la información en un modelo relacional sólido. La creación de tablas, relaciones y la implementación de triggers y stored procedures no solo facilitarán nuestras exploraciones, sino que también abrirán puertas a análisis más avanzados y perspicaces.
Este proyecto va más allá de la mera manipulación de datos, busca aprender de ellos y narrar las historias que se esconden detrás de los números.
A través de SQL, no solo analizaremos información, sino que también interpretaremos los patrones emergentes, las relaciones intrincadas y las oportunidades que revela el mundo de los billonarios.
Al abordar este proyecto, mi objetivo personal es alcanzar un entendimiento profundo de SQL y sus aplicaciones avanzadas en el ámbito de bases de datos. Más allá de la mera ejecución de consultas, aspiramos a la maestría, explorando cada rincón de la herramienta para perfeccionar nuestras habilidades y aplicarlas en futuros proyectos.
En resumen, este proyecto no es solo una exploración de datos; es un viaje educativo donde SQL se convierte en la brújula, guiándonos a través del intrincado paisaje de la riqueza global de los billonarios. 
A medida que avanzamos, no solo desciframos datos, sino que también forjamos habilidades que nos acompañarán en futuras travesías analíticas. ¡Bienvenidos a este emocionante viaje de aprendizaje!

#### 3) Situación Problemática: Desafíos y Soluciones en la Implementación del Proyecto

A lo largo de la ejecución de este proyecto, me encontré inmerso en diversos desafíos que, aunque inicialmente parecían obstáculos insalvables, se transformaron en oportunidades valiosas de aprendizaje y resolución. Estos contratiempos, en su mayoría relacionados con la importación de datos y la ejecución de consultas, pusieron a prueba mis habilidades y, al mismo tiempo, me proporcionaron una visión más profunda sobre la mecánica interna de MySQL.

**Limitaciones en la Importación de Datos**

Al dar los primeros pasos en la carga de datos, me enfrenté a una limitación en la cantidad de registros que podía importar a través del Data Import Wizard de MySQL. Inicialmente, intenté cargar 2060 registros por tabla, pero me percaté de que solo se importaban 1000. Este problema residía en la configuración predeterminada, que limitaba la importación a 1000 filas. La solución fue ajustar esta configuración, permitiendo así la importación completa de todos los datos.

**Errores en una Función**

En una etapa más avanzada, me encontré con un dilema al descubrir que una función devolvía resultados incorrectos en ciertas condiciones. Después de una minuciosa revisión, identifiqué que el problema radicaba en una condición dentro de un bloque "if". Al cumplirse esta condición, la función no retornaba el valor esperado. La solución fue revisar y corregir la lógica condicional, asegurándome de que todas las ramificaciones fueran manejadas adecuadamente.

**Importación de Datos y Restricciones en el Modelo Relacional**

Una de las situaciones más complejas surgió al importar datos tabla por tabla, especialmente al intentar cargar datos en una tabla de dimensiones antes de haber llenado la tabla de hechos. Dado que el modelo relacional ya estaba establecido, las restricciones impidieron la inserción directa en la tabla de dimensiones. Para superar este obstáculo, opté por temporariamente desactivar las restricciones, permitiendo así ingresar datos uno por uno. Posteriormente, restablecí las restricciones y resolví este inconveniente al asegurarme de ingresar datos en orden, primero en la tabla de hechos y luego en las tablas de dimensiones.

**Lecciones Aprendidas y Perspectivas Futuras**

Estos desafíos no solo representaron momentos de frustración momentánea, sino también oportunidades cruciales de aprendizaje. Cada problema resuelto no solo mejoró la ejecución del proyecto, sino que también contribuyó al desarrollo de habilidades fundamentales en la administración de bases de datos utilizando SQL. A medida que avanzo, queda claro que estos desafíos son trampolines para el crecimiento y la mejora continua en la manipulación y gestión de datos mediante herramientas SQL.

#### 4) Modelo de Negocio: 

 **Núcleo de la Riqueza Empresarial**

En el corazón de nuestro análisis empresarial, la "Tabla de Billonarios" constituye el epicentro de la riqueza. Aquí, cada entrada representa un individuo excepcional, detallando elementos cruciales como su nombre completo, edad, género, fecha de nacimiento y, lo más significativo, su conexión con el mundo de los negocios. La categoría de negocio y la organización asociada son pilares fundamentales, arrojando luz sobre cómo estos individuos han estructurado sus empresas y relaciones comerciales. 

**El Contexto Económico y Geográfico**

A medida que exploramos el modelo de negocio, la "Tabla de Países" sirve como un atlas económico, revelando el entorno financiero y geográfico en el que estos billonarios operan. Índices cruciales, como el IPC y el PIB, junto con datos demográficos, proporcionan una perspectiva clara de los factores externos que influyen en las estrategias empresariales de estos individuos.

**Geografía Empresarial Detallada**

Al adentrarnos en los detalles regionales, la "Tabla de Estados" se convierte en un mapa detallado de las ubicaciones específicas que estos titanes de los negocios han elegido para establecerse. Desde la región hasta las coordenadas geoespaciales, esta tabla aporta información vital sobre la distribución geográfica de sus operaciones, vinculando directamente su presencia con estrategias empresariales específicas.

**Sectores Estratégicos de Crecimiento**

La riqueza de los billonarios está intrínsecamente vinculada a las áreas de negocio en las que han decidido participar. La "Tabla de Categorías de Negocio" desglosa detalladamente las categorías, industrias y otros aspectos relevantes que delinean cómo han construido y diversificado sus carteras empresariales. Este análisis nos permite identificar sectores estratégicos de crecimiento y las tendencias que impulsan su éxito.

**Asociaciones Empresariales Clave**

En nuestro modelo de negocio, la "Tabla de Organizaciones" emerge como un compendio de las asociaciones empresariales que respaldan la riqueza de estos individuos. Detalles como la fuente de ingresos, el patrimonio neto y la fuente de riqueza proporcionan una visión valiosa de las entidades empresariales clave. Al explorar esta tabla, trazamos las conexiones esenciales que impulsan el éxito y la influencia de estos billonarios.

**Conclusión del Modelo de Negocio**:

A medida que avanzamos a través de estas tablas, no solo estamos examinando datos; estamos narrando la historia detrás de la riqueza de los billonarios. Cada tabla, cada entrada, revela una parte crucial del modelo de negocio que ha permitido a estos individuos destacar en el mundo empresarial global. Este análisis no solo es una exploración de datos; es un viaje hacia la comprensión profunda de cómo se estructuran, operan y triunfan en el exclusivo mundo de los billonarios.

#### 5)  DIAGRAMA ENTIDAD RELACION

6) Listado de tablas
Tabla          Clave Primaria       Clave Foránea       Campo Abreviado       Nombre Completo           Tipo de Datos
---------------------------------------------------------------------------------------------------------------------
Billonarios   IdBillonario           -                   IdBillo               ID del Billonario        Entero
              -                      -                   Nombre Completo      Nombre completo          Texto
              -                      -                   Edad                 Edad del Billonario      Entero
              -                      -                   Género               Género del Billonario    Texto
              -                      -                   FechaCumpleaños      Fecha de Cumpleaños      Fecha
              Sí                     IdPaís              ID del País          ID del País de Residencia Entero
              Sí                     IdEstado            ID del Estado        ID del Estado de Residencia Entero
              Sí                     IdCategoriaNeg      ID de la Categoría de Negocio Entero
              Sí                     IdOrganizacion      ID de la Organización ID de la Organización     Entero
              -                      -                   Apellido             Apellido del Billonario   Texto
              -                      -                   Nombre               Nombre del Billonario     Texto

Países        Id País                -                   IdPaís               ID del País               Entero
              -                      IdEstado            ID del país          ID del país               Entero
              -                      -                   IPCPaís              IPC del País de Residencia Decimal
              -                      -                   PBIPaís              PBI del País de Residencia Decimal
              -                      -                   InscEduTerc          Tasa de Inscripción Terciaria Decimal
              -                      -                   MatEduPrim           Tasa de Matriculación Primaria Decimal
              -                      -                   EsperanzaVida        Esperanza de Vida         Decimal
              -                      -                   IngresosFiscales     Ingresos Fiscales         Decimal
              -                      -                   TasaImpositiva       Tasa Impositiva Total     Decimal
              -                      -                   PoblaciónPaís        Población del País         Entero
              -                      -                   PaísResidencia       Nombre del País de Residencia Texto

Estados       Id Estado              -                   IdEstado             ID del Estado              Entero
              -                      -                   RegiónResidencia     Región de Residencia       Texto
              -                      -                   CiudadResidencia     Ciudad de Residencia       Texto
              -                      -                   Estado               Estado de Residencia       Texto
              -                      -                   LatitudPaísRes       Latitud del País de Residencia Decimal
              -                      -                   LongitudPaísRes      Longitud del País de Residencia Decimal

Categorías Negocio
              Id Categoría Negocio   -                   IdCatNegocio         ID de Categoría de Negocio Entero
              -                      -                   Categoría            Nombre de la Categoría      Texto
              -                      -                   Industria            Industria 


#### 7)  Scripts de creación de objetos de la base de datos

**7.1 SCRIPT DE FUNCIONES**

**FUNCION 1**

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

•	**Descripción**: Esta función retorna un objeto JSON que contiene el nombre completo y la edad de un billonario específico, identificado por su IdBillonario.

•	**Uso**: SELECT ObtenerEdadBillonario(1);

•	**Resultado Esperado**:{"NombreCompleto": "Nombre Apellido", "Edad": 45}

**FUNCION 2**

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

•	**Descripción**: La función devuelve un objeto JSON que asocia el nombre completo del billonario con el nombre de la organización a la que está vinculado.

•	**Uso**: SELECT ObtenerEmpresaCash(1);

•	**Resultado Esperado**: {"NombreCompleto": "Nombre Apellido", "Organizacion": "Nombre de la Empresa"}

**FUNCION 3**

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


•	**Descripción**: Retorna el nombre de la organización asociada al billonario identificado por su IdBillonario.

•	**Uso**: SELECT ObtenerOrganizacion(1);

•	**Resultado Esperado**: Nombre de la Empresa

**FUNCION 4**

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

•	**Descripción**: Esta función devuelve el patrimonio neto de la organización asociada a un billonario especificado por su IdBillonario.

•	**Uso**: SELECT ObtenerPatrimonioNeto(1);

•	**Resultado Esperado**: 100000000.00

**FUNCION 5**

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

•	**Descripción**: Determina si un país es inflacionario o no, basándose en su Índice de Precios al Consumidor (IPC). La función toma un IdPais como parámetro.

•	**Uso**: SELECT EstadoInflacionario(1);

•	**Resultado Esperado**: País Inflacionario

**FUNCION 6**

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

•	**Descripción**: Clasifica el nivel de riqueza de una organización según su patrimonio neto. Utiliza el IdOrganizacion como parámetro.

•	**Uso**: SELECT TipodeBILLO(1);

•	**Resultado Esperado**: TIENE MUCHISIMA PLATA


#### 7.2 SCRIPT DE STORED PROCEDURE

**1)	**
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

•	**Descripción**: Este procedimiento almacena una nueva actividad en la tabla billonarios con el nombre especificado en el parámetro fx. Luego, muestra todos los registros ordenados por IdBillonario de forma descendente.

•	**Uso**: CALL actividad('Nuevo Billonario');

•	**Resultado Esperado**:

Nuevo registro insertado correctamente 

| IdBillonario  | NombreCompleto     

| 5             | Nuevo Billonario 

| 4             | Billonario 4       

| 3             | Billonario 3       

| ...           | ...               

**2)**

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

•	**Descripción**: Ordena una tabla específica (tabla) por un campo de ordenamiento (campo_ordenamiento) en un tipo de orden específico (orden). Retorna un mensaje de error si el tipo de orden no es válido.

•	**Uso**: CALL OrdenarTabla('billonarios', 'Edad', 'descendente');

•	**Resultado Esperado**: 

| IdBillonario  | NombreCompleto   

| 5             | Nuevo Billonario 

| 4             | Billonario 4       

| 3             | Billonario 3      

| ...           | ...              

**3)**

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

•	**Descripción**: Retorna datos macroeconómicos para un país específico (pais). Muestra IPC, PBI, esperanza de vida, ingresos fiscales, tasa impositiva y población.

•	**Uso**: CALL MacroPais('Estados Unidos');

•	**Resultado Esperado**: 

| IPCPais| PBIPais  | EsperanzaVida  

| 2.5    | 21.4     | 76             

**4)**

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

•	**Descripción**: Calcula y muestra el promedio de una columna específica (COLUMNA) en una tabla específica (TABLA).

•	**Uso**: CALL CalcularPromedio('billonarios', 'Edad');

•	**Resultado Esperado**:

| MESSAGE                             

| El promedio de Edad en la tabla ... 

#### 7.3 SCRIPT DE TRIGGERS

create table bitacoc

( -- creacion de tabla bitacoc para guardar la bitacora de los datos

id int primary key auto_increment,

usuario varchar(20),

fecha date,

hora time

);

**Tabla bitacoc**:

•	**Descripción**: Esta tabla, llamada bitacoc, está diseñada para almacenar registros de bitácora que registran ciertas actividades relacionadas con los datos. Aquí tienes una descripción de cada columna en la tabla:

•	**id** (int, clave primaria, autoincremental): Un identificador único para cada registro en la tabla. Se incrementa automáticamente con cada nueva entrada.

•	**usuario** (varchar(20)): Almacena el nombre del usuario o la entidad asociada con la actividad registrada. En el contexto de los triggers proporcionados, esta columna podría contener el nombre de un billonario, una industria, o cualquier entidad relevante.

•	**fecha** (date): Registra la fecha en la que se llevó a cabo la actividad.

•	**hora** (time): Registra la hora exacta en la que se llevó a cabo la actividad.

•	**Uso**: Esta tabla se utiliza para realizar un seguimiento de actividades específicas, como inserciones o actualizaciones, y proporciona un historial que puede ser útil para auditorías, seguimiento de cambios, o simplemente para tener un registro de las 
acciones realizadas en la base de datos.

•	**Ejemplo de Registro**:

| id | usuario        | fecha      | hora     |

•	| 1  | Nuevo Billonario | 2024-01-15 | 12:30:00 |

•	| 2  | Antigua Industria | 2024-01-15 | 13:45:00 |

**Nota: Esta tabla se utilizará para almacenar información generada por los triggers billo_log y auditoria_billonario, como se describió anteriormente.**

**1)** 

CREATE TRIGGER billo_log -- Actividad después de la inserción

AFTER INSERT ON billonarios -- Se activa después de una inserción en 'billonarios'

FOR EACH ROW 

INSERT INTO bitacoc (usuario, fecha, hora) 

VALUES (NEW.NombreCompleto, CURDATE(), CURTIME());

-- Inserta en 'bitacoc' el nombre del usuario insertado en 'billonarios', junto con la fecha y la hora actuales

•	**Descripción**: Este trigger se activa antes de una inserción en billonarios. Convierte el valor de NombreCompleto a mayúsculas antes de realizar la inserción.

•	**Uso**: INSERT INTO billonarios (NombreCompleto, Edad, ...) VALUES ('nuevo billonario', 30, ...);

•	**Resultado Esperado**: 

| NombreCompleto| Edad

| NUEVO BILLONARIO| 30  

**2)**

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

Trigger convertir_a_mayusculas:

•	**Descripción**: Este trigger se activa antes de una inserción en billonarios. Convierte el valor de NombreCompleto a mayúsculas antes de realizar la inserción.

•	**Uso**: INSERT INTO billonarios (NombreCompleto, Edad, ...) VALUES ('nuevo billonario', 30, ...);

•	**Resultado Esperado**: 

| NombreCompleto| Edad| 

| NUEVO BILLONARIO| 30  | 

**3)**

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

Trigger auditoria_billonario:

•	**Descripción**: Este trigger se activa antes de una actualización en la tabla categoriasnegocio. Registra en la tabla bitacoc información sobre la actualización en categoriasnegocio.

•	**Uso**: UPDATE categoriasnegocio SET Industria = 'Nueva Industria' WHERE IdCategoria = 1;

•	**Resultado Esperado**: 

| id | usuario        | fecha      | hora     

| 1  | Antigua Industria | 2024-01-15 | 13:45:00 

Estos triggers proporcionan funcionalidades como la creación de registros de bitácora (billo_log), la conversión de valores antes de la inserción (convertir_a_mayusculas) y la auditoría de actualizaciones en otra tabla (auditoria_billonario).

#### 7.4 SCRIPT DE VISTAS 

1.	CategTitu

•	**Objetivo**: Proporciona el nombre completo, categoría y título de los billonarios junto con las categorías de negocios correspondientes.

•	**Tablas involucradas**: billonarios y categoriasnegocio.

•	**Código:**  -- Nombre completo + categoria + titulo

create view CategTitu as select IdBillonario, NombreCompleto, Categoria, Titulo FROM billonarios as b join categoriasnegocio as cn on b.IdBillonario = cn.IdCategoriaNegocio;

2.	DatosPaises

•	**Objetivo**: Presenta información detallada sobre países, incluyendo país, población, estado, ciudad y región de residencia.

•	**Tablas involucradas**: paises y estados.

•	**Codigo**: -- pais + poblacion + estado + ciudad + región

create view DatosPaises as select PaisResidencia, PoblacionPais, estado, CiudadResidencia, RegiónResidencia from paises as p join estados as e on p.IdPais = e.IdPais;

3.	IngresoRango

•	**Objetivo**: Ofrece datos sobre el nombre completo, fuente de ingresos, patrimonio neto y rango de los billonarios en función de sus organizaciones y categorías de negocio.

•	**Tablas involucradas**: billonarios, organizaciones y categoriasnegocio.

•	**Código**: --Nombre Completo + Fuente Ingreso + Patrimonio Neto + Rango

create view IngresoRango as select idPais ,NombreCompleto,FuenteIngreso, PatrimonioNeto, Rango from billonarios as b join organizaciones as o on b.IdPais = o.IdOrganizacion  join categoriasnegocio as cn on o.IdOrganizacion = cn.IdCategoriaNegocio;

4.	MacroPaises

•	**Objetivo**: Esta vista proporciona datos macroeconómicos del país de residencia como la inflación, PBI, ingresos fiscales, tasa impositiva, latitud y longitud.

•	**Tablas involucradas**: países y estados.

•	**Codigo**: -- Pais de residencia + Inflacion + PBI + INGRESOS FISCALES + TASA IMPOSITIVA + LATITUD + LONGITUD DE PAIS  

Create view MacroPaises as select PaisResidencia, IPCPais, PBIPais, IngresosFiscales, TasaImpositiva, LatitudPaísRes, LongitudPaísRes from paises as p join estados as e on p.IdPais = e.IdEstado GROUP BY p.PaisResidencia;

5.	BilloDATOS

•	**Objetivo**: Presenta información detallada sobre el Nombre Completo, Título, Patrimonio Neto, País de Residencia y Ciudad del billonario, relacionando múltiples tablas.

•	**Tablas involucradas**: billonarios, organizaciones, categoriasnegocio, paises,estados.

•	**Codigo**: -- Nombre Completo + titulo + patrimonio + pais + ciudad

create view BilloDATOS as select NombreCompleto, Titulo, PatrimonioNeto, PaisResidencia, CiudadResidencia from billonarios as b  join organizaciones as o on b.IdPais = o.IdOrganizacion  join categoriasnegocio as cn on o.IdOrganizacion = cn.IdCategoriaNegocio join paises as p on p.IdPais= b.IdBillonario join estados as e on e.IdEstado = b.IdBillonario;

6.	PbiIPCpais

•	**Objetivo**: Muestra datos relevantes del país de residencia como el País, PBI e Inflación.

•	**Tablas involucradas**: paises.

•	**Código**: -- PAIS + PBI + INFLACION

create view PbiIPCpais as select PaisResidencia, PBIPais, IPCPais from paises group by PaisResidencia;

7.	PatrimonioEmpresa

•	**Objetivo**: Presenta la fuente de ingresos y el patrimonio neto de las organizaciones.

•	**Tablas involucradas**: organizaciones.

•	**Código**: -- EMPRESA + PATRIMONIO

create view PatrimonioEmpresa as select FuenteIngreso, PatrimonioNeto from organizaciones;

8.	CumpleañosNombre

•	**Objetivo**: muestra el Nombre Completo de los billonarios junto con su Fecha de Cumpleaños correspondiente. 

•	**Tablas involucradas**: billonarios.


•	**Código**: -- Nombre Completo – FechaCumpleanos

CREATE  VIEW BirthdayName as select NombreCompleto, FechaCumpleanos FROM billonarios;

9.	titulacion

•	**Objetivo**: Ofrece el nombre completo y el título de los billonarios.

•	**Tablas involucradas**: billonarios y categoriasnegocio.

•	**Código**: -- Nombre completo + titulo

create view titulacion as select NombreCompleto, titulo from billonarios as b join categoriasnegocio as cn on b.IdBillonario = cn.IdCategoriaNegocio;

#### 7.5 SCRIPT DE CREATE TABLES  

**Tabla Paises**:

•	**Creación**: 

-- Creación de la tabla Países

CREATE TABLE IF NOT EXISTS Paises (

    IdPais INT PRIMARY KEY,

 IdEstado INT,
 
    IPCPais DECIMAL(20, 2) NULL,
    
    PBIPais DECIMAL(20, 2) NULL,
    
    InscEduTerc DECIMAL(6, 2) NULL,
    
    MatEduPrim DECIMAL(6, 2) NULL,
    
    EsperanzaVida DECIMAL(6, 2) NULL,
    
    IngresosFiscales DECIMAL(20, 2) NULL,
    
    TasaImpositiva DECIMAL(6, 2) NULL,
    
    PoblacionPais INT NULL,
    
    PaisResidencia VARCHAR(255) NULL

);

•	**Tipo de Datos**:

•	**IdPais**: INT (Clave primaria, autoincremental)

•	**IPCPais, PBIPais, InscEduTerc, MatEduPrim, EsperanzaVida, IngresosFiscales, TasaImpositiva**: DECIMAL(20, 2)

•	**PoblacionPais**: INT

•	**PaisResidencia**: VARCHAR(255)

**Tabla Estados**:

•	**Creación**: 

-- Creación de la tabla Estados

CREATE TABLE IF NOT EXISTS Estados (

    IdEstado INT PRIMARY KEY,
    
    RegiónResidencia VARCHAR(255) NULL,
    
    CiudadResidencia VARCHAR(255) NULL,
    
    Estado VARCHAR(255) NULL,
    
    LatitudPaísRes DECIMAL(9, 6) NULL,
    
    LongitudPaísRes DECIMAL(9, 6) NULL,
    
    FOREIGN KEY (IdPais) REFERENCES Paises(IdPais)

);

•	**Tipo de Datos**:

•	**IdEstado**: INT (Clave primaria)

•	**RegiónResidencia, CiudadResidencia, Estado**: VARCHAR(255)

•	**LatitudPaísRes, LongitudPaísRes**: DECIMAL(9, 6)

•	**IdPais**: INT (Clave foránea referenciando a Paises)

**Tabla CategoriasNegocio**:

•	**Creación**: 

-- Creación de la tabla Categorías de Negocio

CREATE TABLE IF NOT EXISTS CategoriasNegocio (

    IdCategoriaNegocio INT PRIMARY KEY,

    Categoria VARCHAR(255) NULL,
    
    Industria VARCHAR(255) NULL,
    
    HechoPorSiMismo BOOLEAN NULL,
    
    Titulo VARCHAR(255) NULL,
    
    Rango VARCHAR(255) NULL

);

•	**Tipo de Datos**:

•	**IdCategoriaNegocio**: INT (Clave primaria)

•	**Categoria, Industria, Titulo, Rango**: VARCHAR(255)

•	**HechoPorSiMismo**: BOOLEAN

**Tabla Organizaciones**:

•	**Creación**: 

-- Creación de la tabla Organizaciones

CREATE TABLE IF NOT EXISTS Organizaciones (

    IdOrganizacion INT PRIMARY KEY,
    
    FuenteIngreso VARCHAR(255) NULL,
    
    Organizacion VARCHAR(255) NULL,
    
    PatrimonioNeto DECIMAL(15, 2) NULL,
    
    FuenteRiqueza VARCHAR(255) NULL

);


•	**Tipo de Datos**:

•	**IdOrganizacion**: INT (Clave primaria)

•	**FuenteIngreso, Organizacion, FuenteRiqueza**: VARCHAR(255)

•	**PatrimonioNeto**: DECIMAL(15, 2)

**Tabla Billonarios**:

•	**Creación**: 

-- Creación de la tabla Billonarios

CREATE TABLE IF NOT EXISTS Billonarios (

    IdBillonario INT PRIMARY KEY,
    
    NombreCompleto VARCHAR(255) NULL,
    
    Edad INT NULL,
    
    Genero VARCHAR(1) NULL,
    
    FechaCumpleanos DATE NULL,
    
    IdPais INT NULL,
    
    IdEstado INT NULL,
    
    IdCategoriaNegocio INT NULL,
    
    IdOrganizacion INT NULL,
    
    Apellido VARCHAR(255) NULL,
    
    Nombre VARCHAR(255) NULL,
    
    FOREIGN KEY (IdPais) REFERENCES Paises(IdPais),
    
    FOREIGN KEY (IdEstado) REFERENCES Estados(IdEstado),
    
    FOREIGN KEY (IdCategoriaNegocio) REFERENCES CategoriasNegocio(IdCategoriaNegocio),
    
    FOREIGN KEY (IdOrganizacion) REFERENCES Organizaciones(IdOrganizacion)

);

•	**Tipo de Datos**:

•	**IdBillonario**: INT (Clave primaria)

•	**NombreCompleto, Genero, FechaCumpleanos, Apellido, Nombre**: VARCHAR(255)

•	**Edad**: INT

•	**IdPais, IdEstado, IdCategoriaNegocio, IdOrganizacion**: INT (Claves foráneas referenciando a tablas relacionadas)

**Selección de Base de Datos Billonary**:

•	**Creación**: 

-- Seleccionar la base de datos para futuras consultas

USE Billonary;

•	**Nota: Selecciona la base de datos Billonary para futuras consultas.**

#### 7.6 SCRIPT DE TRANSACCIONES

START TRANSACTION;

DELETE FROM Billonarios WHERE IdBillonario IN (1, 2, 3);

SELECT * FROM Billonarios WHERE IdBillonario IN (1, 2, 3);

-- -- ROLLBACK;

-- -- COMMIT; 

**Eliminar Registros de la Tabla Billonarios**:

•	START TRANSACTION;: Inicia una nueva transacción.

•	DELETE FROM Billonarios WHERE IdBillonario IN (1, 2, 3);: Elimina los registros con ID 1, 2 y 3 de la tabla Billonarios.

•	SELECT * FROM Billonarios WHERE IdBillonario IN (1, 2, 3);: Valida que los registros eliminados no estén presentes en la tabla.

•	-- ROLLBACK;: Comentario para prevenir una reversión accidental.

•	-- COMMIT;: Comentario para prevenir una confirmación accidental.

START TRANSACTION;

SAVEPOINT before4;

INSERT INTO Organizaciones (FuenteIngreso, Organizacion, PatrimonioNeto, FuenteRiqueza) 

VALUES ('Fuente1', 'Organizacion1', 848584, 'Riqueza1'),

('Fuente2', 'Organizacion2', 745222, 'Riqueza2'),

('Fuente3', 'Organizacion3', 754545, 'Riqueza3'),

('Fuente4', 'Organizacion4', 554545, 'Riqueza4');

SAVEPOINT after4;

INSERT INTO Organizaciones (FuenteIngreso, Organizacion, PatrimonioNeto, FuenteRiqueza) VALUES

  ('Fuente6', 'Organizacion6',12323, 'Riqueza6'),
  
  ('Fuente7', 'Organizacion7',21323 , 'Riqueza7'),
  
  ('Fuente8', 'Organizacion8',321321, 'Riqueza8'),
  
  ('Fuente9', 'Organizacion9', 213213, 'Riqueza9');

-- elimina el savepoint de los primeros 4 registros insertados

-- RELEASE SAVEPOINT before4;

-- elimina el savepoint de los ultimos 4 registros insertados

-- RELEASE SAVEPOINT after4;

-- ROLLBACK; -- Descomenta para revertir la transacción

-- COMMIT; -- Descomenta para confirmar la transacción

**Insertar Registros en la Tabla Organizaciones**:

•	START TRANSACTION;: Inicia una nueva transacción.

•	SAVEPOINT before4;: Crea un punto de guardado antes de la inserción de los primeros 4 registros.

•	INSERT INTO Organizaciones (...);: Inserta 8 registros en total en la tabla Organizaciones.

•	SAVEPOINT after4;: Crea un segundo punto de guardado después de la inserción de los primeros 4 registros.

•	-- RELEASE SAVEPOINT before4;: Comentario, si se descomenta, libera el punto de guardado antes de los primeros 4 registros.

•	-- RELEASE SAVEPOINT after4;: Comentario, si se descomenta, libera el punto de guardado después de los primeros 4 registros.

•	-- ROLLBACK;: Comentario para prevenir una reversión accidental.

•	-- COMMIT;: Comentario para prevenir una confirmación accidental.


#### 7.8 SCRIPT DE CREATE USERS

Crear Usuario 'Coder' con Permisos de Solo Lectura:

CREATE USER 'Coder'@'localhost' IDENTIFIED BY 'coderbeca'; GRANT SELECT ON billonary.* TO 'Coder'@'localhost'; REVOKE DELETE ON billonary.* FROM 'Coder'@'localhost'; 

•	**Crea un usuario llamado 'Coder' con contraseña 'coderbeca'**.

•	**Le concede permisos de lectura (SELECT) en todas las tablas de la base de datos billonary**.

•	**Revoca el permiso de eliminar registros (DELETE)**.

Crear Usuario 'lucasALM' con Permisos de Inserción, Lectura y Actualización:

CREATE USER 'lucasALM'@'localhost' IDENTIFIED BY 'lucasabad'; GRANT INSERT, SELECT, UPDATE ON billonary.* TO 'lucasALM'@'localhost'; REVOKE DELETE ON billonary.* FROM 'lucasALM'@'localhost'; 

•	**Crea un usuario llamado 'lucasALM' con contraseña 'lucasabad'**.

•	**Le concede permisos de inserción (INSERT), lectura (SELECT) y actualización (UPDATE) en todas las tablas de la base de datos billonary**.

•	**Revoca el permiso de eliminar registros (DELETE)**.

**Visualizar Usuarios y sus Permisos**:

SELECT User, Host FROM mysql.user;

SHOW GRANTS FOR 'Coder'@'localhost';

SHOW GRANTS FOR 'lucasALM'@'localhost';

•	**Muestra la lista de usuarios en el sistema MySQL**.

•	**Muestra los permisos concedidos al usuario 'Coder'@'localhost'**.

•	**Muestra los permisos concedidos al usuario 'lucasALM'@'localhost'**.


•	**Este código configura dos usuarios con diferentes conjuntos de permisos en la base de datos billonary**.

#### 8) SCRIPT DE INSERT

   **8.1 Script Inserción de datos en Billonarios**

INSERT INTO billonary.billonarios (IdBillonario, NombreCompleto, Edad, Genero, FechaCumpleanos, IdPais, IdEstado, IdCategoriaNegocio, IdOrganizacion, Apellido, Nombre)

VALUES

(1, 'Bernard Arnault & family', 74, 'M', '1949-05-03', 1, 1, 1, 1, 'Arnault', 'Bernard'),

(2, 'Elon Musk', 51, 'M', '1971-06-28', 2, 2, 2, 2, 'Musk', 'Elon'),

(3, 'Jeff Bezos', 59, 'M', '1964-12-01', 3, 3, 3, 3, 'Bezos', 'Jeff'),

(4, 'Larry Ellison', 78, 'M', '1944-08-17', 4, 4, 4, 4, 'Ellison', 'Larry'),

(5, 'Warren Buffett', 92, 'M', '1930-08-30', 5, 5, 5, 5, 'Buffett', 'Warren'),

(6, 'Bill Gates', 67, 'M', '1955-10-28', 6, 6, 6, 6, 'Gates', 'Bill'),

(7, 'Michael Bloomberg', 81, 'M', '1942-02-14', 7, 7, 7, 7, 'Bloomberg', 'Michael'),

(8, 'Carlos Slim Helu & family', 83, 'M', '1940-01-28', 8, 8, 8, 8, 'Slim Helu', 'Carlos'),

(9, 'Mukesh Ambani', 65, 'M', '1957-04-19', 9, 9, 9, 9, 'Ambani', 'Mukesh'),

(10, 'Steve Ballmer', 67, 'M', '1956-03-24', 10, 10, 10, 10, 'Ballmer', 'Steve'),

(11, 'Francoise Bettencourt Meyers & family', 69, 'F', '1953-10-07', 11, 11, 11, 11, 'Bettencourt Meyers', 'Francoise');

**8.2 Script Inserción de datos en CategoriasNegocio**

INSERT INTO billonary.CategoriasNegocio (IdCategoriaNegocio, Categoria, Industria, HechoPorSiMismo, Titulo, Rango)

VALUES

(1, 'Fashion & Retail', 'Fashion & Retail', FALSE, 'Chairman and CEO', '1'),

(2, 'Automotive', 'Automotive', TRUE, 'CEO', '2'),

(3, 'Technology', 'Technology', TRUE, 'Chairman and Founder', '3'),

(4, 'Technology', 'Technology', TRUE, 'CTO and Founder', '4'),

(5, 'Finance & Investments', 'Finance & Investments', TRUE, 'CEO', '5'),

(6, 'Technology', 'Technology', TRUE, 'Cochair', '6'),

(7, 'Media & Entertainment', 'Media & Entertainment', TRUE, 'CEO', '7'),

(8, 'Telecom', 'Telecom', TRUE, 'Honorary Chairman', '8'),

(9, 'Diversified', 'Diversified', FALSE, 'Founder and Chairman', '9'),

(10, 'Technology', 'Technology', TRUE, 'Owner', '10'),

(11, 'Fashion & Retail', 'Fashion & Retail', FALSE, NULL, '11');

 **8.3 Script Inserción de datos en Estados**

INSERT INTO billonary.Estados (IdEstado, IdPais, RegiónResidencia, CiudadResidencia, Estado, LatitudPaísRes, LongitudPaísRes)

VALUES

(1, NULL, NULL, 'Paris', NULL, '46.227.638', '2.213.749'),

(2, NULL, 'South', 'Austin', 'Texas', '3.709.024', '-95.712.891'),

(3, NULL, 'West', 'Medina', 'Washington', '3.709.024', '-95.712.891'),

(4, NULL, 'West', 'Lanai', 'Hawaii', '3.709.024', '-95.712.891'),

(5, NULL, 'Midwest', 'Omaha', 'Nebraska', '3.709.024', '-95.712.891'),

(6, NULL, 'West', 'Medina', 'Washington', '3.709.024', '-95.712.891'),

(7, NULL, 'Northeast', 'New York', 'New York', '3.709.024', '-95.712.891'),

(8, NULL, NULL, 'Mexico City', NULL, '23.634.501', '-102.552.784'),

(9, NULL, NULL, 'Mumbai', NULL, '20.593.684', '7.896.288'),

(10, NULL, 'West', 'Hunts Point', 'Washington', '3.709.024', '-95.712.891'),

(11, NULL, NULL, 'Paris', NULL, '46.227.638', '2.213.749');

   
   **8.4 Script Inserción de datos en Organizaciones**

INSERT INTO billonary.Organizaciones (IdOrganizacion, FuenteIngreso, Organizacion, PatrimonioNeto, FuenteRiqueza)

VALUES

(1, 'LVMH', 'LVMH Moët Hennessy Louis Vuitton', 211000.00, 'U'),

(2, 'Tesla, SpaceX', 'Tesla', 180000.00, 'D'),

(3, 'Amazon', 'Amazon', 114000.00, 'D'),

(4, 'Oracle', 'Oracle', 107000.00, 'U'),

(5, 'Berkshire Hathaway', 'Berkshire Hathaway Inc. (Cl A)', 106000.00, 'D'),

(6, 'Microsoft', 'Bill & Melinda Gates Foundation', 104000.00, 'D'),

(7, 'Bloomberg LP', 'Bloomberg', 94500.00, 'U'),

(8, 'Telecom', 'América Móvil', 93000.00, 'U'),

(9, 'Diversified', 'Reliance Industries', 83400.00, 'D'),

(10, 'Microsoft', 'Los Angeles Clippers', 80700.00, 'D'),

(11, 'L\'Oréal', NULL, 80500.00, 'U');

  **8.5 Script Inserción de datos en Países**

INSERT INTO billonary.Paises (IdPais, IPCPais, PBIPais, InscEduTerc, MatEduPrim, EsperanzaVida, IngresosFiscales, TasaImpositiva, PoblacionPais, PaisResidencia)

VALUES (1, '110.05', '2,715,518,274,227', 65.6, 102.5, 82.5, 24.2, 60.7, 67059467, 'France'),

(2, '117.24', '21,427,700,000,000', 46.2, 101.8, 78.5, 9.6, 36.6, 328239523, 'United States'),

(3, '117.24', '21,427,700,000,000', 46.2, 101.8, 78.5, 9.6, 36.6, 328239523, 'United States'),

(4, '117.24', '21,427,700,000,000', 46.2, 101.8, 78.5, 9.6, 36.6, 328239523, 'United States'),

(5, '117.24', '21,427,700,000,000', 46.2, 101.8, 78.5, 9.6, 36.6, 328239523, 'United States'),

(6, '117.24', '21,427,700,000,000', 46.2, 101.8, 78.5, 9.6, 36.6, 328239523, 'United States'),

(7, '117.24', '21,427,700,000,000', 46.2, 101.8, 78.5, 9.6, 36.6, 328239523, 'United States'),

(8, '141.54', '1,258,286,717,125', 40.2, 105.8, 75, 13.1, 55.1, 126014024, 'Mexico'),

(9, '180.44', '2,611,000,000,000', 28.1, 113, 69.4, 11.2, 49.7, 1366417754, 'India'),

(10, '117.24', '21,427,700,000,000', 46.2, 101.8, 78.5, 9.6, 36.6, 328239523, 'United States'),

(11, '110.05', '2,715,518,274,227', 65.6, 102.5, 82.5, 24.2, 60.7, 67059467, 'France');

**9) Informes generados en base a la información**

**Vista 1**: CantidadPorGenero

CREATE VIEW CantidadPorGenero AS 

SELECT Genero as "Género", COUNT(*) as "Cantidad"

FROM Billonarios 

WHERE Genero IS NOT NULL

GROUP BY Genero;

**Finalidad para el análisis**:

•	Proporciona una visión de la distribución de billonarios según su género.

•	Facilita el análisis de la representación de género en la lista de billonarios.

**Vista 2**: BILLONARIOSxPAIS

CREATE VIEW BILLONARIOSxPAIS AS

SELECT P.PaisResidencia, COUNT(PaisResidencia) as CantidadBillonariosXpais 

FROM paises P 

JOIN Billonarios B ON P.IdPais = B.IdPais

GROUP BY P.PaisResidencia 

ORDER BY CantidadBillonariosXpais DESC 

LIMIT 10;

**Finalidad para el análisis**:

•	Ofrece información sobre la distribución geográfica de billonarios.

•	Identifica los países con el mayor número de billonarios.

**Vista 3**: PatrimonioPorOrganizacion

CREATE VIEW PatrimonioPorOrganizacion AS 

SELECT Organizacion, 

    SUM(PatrimonioNeto) as TotalRiqueza,
    
    CONCAT(FORMAT((SUM(PatrimonioNeto) / (SELECT SUM(PatrimonioNeto) FROM organizaciones)) * 100, 2), '%') as PorcentajeRiqueza

FROM organizaciones 

GROUP BY Organizacion 

LIMIT 5;

**Finalidad para el análisis**:

•	Proporciona una visión de la distribución del patrimonio neto entre las organizaciones.

•	Ayuda a identificar las organizaciones con mayor contribución al total de riqueza.

•	El límite (LIMIT) se utiliza para enfocarse en las primeras 5 organizaciones más ricas.

**Vista 4**: PromedioRiqueza

CREATE VIEW PromedioRiqueza AS

SELECT CONCAT('$', FORMAT(AVG(PatrimonioNeto), 2)) as PromedioRiquezaPorPersona

FROM organizaciones;

**Finalidad para el análisis**:

•	Proporciona el promedio del patrimonio neto por persona en la tabla de organizaciones.

•	Presenta el resultado en un formato más legible con dos decimales y el símbolo de pesos.

Estas vistas proporcionan una variedad de perspectivas y métricas que pueden ser útiles para el análisis financiero y la comprensión de la distribución de la riqueza en el conjunto de datos.

#### 10) Herramientas y tecnologías usadas

**MySQL**:

**Descripción**: En mi proyecto, utilicé MySQL como el motor de base de datos principal. Este sistema de gestión de bases de datos relacional de código abierto fue esencial para almacenar y administrar eficientemente los datos del proyecto. Me permitió ejecutar 

consultas SQL para interactuar con la base de datos, realizando operaciones como inserción, actualización, eliminación y consulta de datos.

**Uso en el proyecto**: Empleé MySQL como la columna vertebral de la gestión de datos en mi proyecto. Las consultas SQL se convirtieron en herramientas esenciales para llevar a cabo operaciones diversas en la base de datos.

**Excel**: 

**Descripción**: Microsoft Excel fue una herramienta fundamental en mi proyecto. Esta hoja de cálculo ampliamente utilizada facilitó la manipulación y el análisis de datos, permitiendo importar, transformar y visualizar información de manera eficiente.

**Uso en el proyecto**: Excel desempeñó un papel crucial al abrir y manipular el dataset inicial en formato CSV. Su capacidad para importar, transformar y analizar datos fue de gran utilidad, especialmente en las etapas de análisis preliminares antes de cargar los 

datos en MySQL.

**Word**:

**Descripción**: Microsoft Word fue mi elección para la creación de documentos detallados en el proyecto. Este procesador de texto ampliamente utilizado proporcionó las herramientas necesarias para elaborar documentación, desde la introducción y los objetivos hasta la 

descripción de la situación problemática y otros aspectos importantes del proyecto.

**Uso en el proyecto**: Word fue mi aliado para plasmar la documentación detallada del proyecto, brindando un formato estructurado para aspectos clave del trabajo.

**GitHub**:                     

**Descripción**: GitHub se convirtió en mi plataforma principal para la gestión de versiones y la colaboración. Al utilizar el sistema de control de versiones Git, GitHub permitió almacenar y colaborar eficazmente en proyectos de software, incluyendo scripts SQL y 

otros documentos del proyecto.

**Uso en el proyecto**: GitHub fue la base para alojar y gestionar repositorios del proyecto, proporcionando un entorno propicio para el seguimiento de cambios, la colaboración y el versionamiento del código y otros documentos.

**draw.io**:
 
**Descripción**: draw.io, una herramienta de diagramación en línea, se destacó en mi proyecto al permitir la creación de diversos tipos de diagramas, incluyendo modelos entidad-relación (ER).

**Uso en el proyecto**: draw.io fue la herramienta elegida para diseñar el modelo entidad-relación (ER) del proyecto. Este tipo de diagrama se convirtió en un recurso invaluable para visualizar la estructura de la base de datos y comprender las relaciones entre las 

entidades.

Cada una de estas herramientas desempeñó un papel esencial en diferentes etapas de mi proyecto, contribuyendo a su desarrollo de manera eficiente y organizada. La integración de estas herramientas fue clave para el éxito y la claridad en la gestión de datos y 

documentación

#### 11) Futuras Líneas

**Implementación de Backup y Recuperación**:  

La seguridad y resiliencia de la base de datos son aspectos críticos para garantizar la continuidad de nuestro proyecto. He diseñado un plan de backup y recuperación para mitigar posibles pérdidas de datos y garantizar la rápida restauración en caso de incidentes.

**Estrategia de Backup**:

**Frecuencia de Copias de Seguridad**:

•	Implementaré copias de seguridad diarias de la base de datos de billonarios para garantizar la captura regular de los cambios.

**Tipos de Backup**:

•	Realizaré backups completos diarios, respaldando toda la base de datos.

•	Además, llevaré a cabo backups incrementales durante la semana para reducir el tiempo y el espacio de almacenamiento requerido.

   Almacenamiento de Copias de Seguridad:

•Las copias de seguridad se almacenarán en un servidor dedicado con redundancia para evitar la pérdida de datos por fallos en un único punto.

**Proceso de Recuperación**:

1.	**Procedimiento de Restauración**:

•	En caso de pérdida de datos o fallo del sistema, activaré inmediatamente el procedimiento de restauración.

2.	**Pruebas Periódicas de Recuperación**:

•	Realizaré pruebas periódicas de recuperación para garantizar la efectividad del proceso y la integridad de los datos restaurados.

3.	**Registros Detallados de Recuperación**:

•	Mantendré registros detallados de cada proceso de recuperación, indicando fechas, horas y acciones realizadas.

**Consideraciones Específicas para la Base de Datos de Billonarios**:

1.	**Datos Sensibles y Críticos**:

•	Dado que nuestra base de datos de billonarios puede contener información sensible y crítica, prestaré especial atención a la seguridad y privacidad durante los procesos de backup y recuperación.

2.	**Consistencia de Datos**:

•	Implementaré mecanismos para garantizar la consistencia de los datos durante las operaciones de backup y recuperación.

3.	**Automatización de Procesos**:

•	Automatizaré los procesos de backup y recuperación para minimizar la intervención humana y reducir la posibilidad de errores.

