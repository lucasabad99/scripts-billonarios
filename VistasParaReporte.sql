
CREATE VIEW CantidadPorGenero AS SELECT Genero as "Género",COUNT(*) as "Cantidad"
FROM Billonarios WHERE Genero IS NOT NULL
GROUP BY Genero;
    
CREATE VIEW BILLONARIOSxPAIS AS
SELECT P.PaisResidencia, COUNT(PaisResidencia) as CantidadBillonariosXpais FROM paises P JOIN Billonarios B ON P.IdPais = B.IdPais
GROUP BY P.PaisResidencia order by CantidadBillonariosXpais  desc LIMIT 10;

CREATE VIEW PatrimonioPorOrganizacion as SELECT Organizacion, SUM(PatrimonioNeto) as TotalRiqueza,
 CONCAT(FORMAT((SUM(PatrimonioNeto) / (SELECT SUM(PatrimonioNeto) FROM organizaciones)) * 100, 2), '%') as PorcentajeRiqueza
FROM organizaciones GROUP BY Organizacion LIMIT 5;

create view PromedioRiqueza as
SELECT CONCAT('$', FORMAT(AVG(PatrimonioNeto), 2)) as PromedioRiquezaPorPersona
FROM organizaciones;