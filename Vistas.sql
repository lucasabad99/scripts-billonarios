-- Nombre completo + categoria + titulo
create view CategTitu as select IdBillonario, NombreCompleto, Categoria, Titulo 
FROM billonarios as b join categoriasnegocio as cn 
on b.IdBillonario = cn.IdCategoriaNegocio;

-- pais + poblacion + estado + ciudad + region
create view DatosPaises as select PaisResidencia, PoblacionPais, estado, CiudadResidencia, RegiónResidencia
from paises as p join estados as e on p.IdPais = e.IdPais;

-- Nombre Completo + Fuente Ingreso + Patrimonio Neto + Rango
create view IngresoRango as 
select idPais ,NombreCompleto, FuenteIngreso, PatrimonioNeto, Rango 
from billonarios as b 
join organizaciones as o on b.IdPais = o.IdOrganizacion 
join categoriasnegocio as cn on o.IdOrganizacion = cn.IdCategoriaNegocio;

-- Pais de residencia + Inflacion + PBI + INGRESOS FISCALES + TASA IMPOSITIVA + LATITUD + LONGITUD DE PAIS
Create view MacroPaises as select PaisResidencia, IPCPais, PBIPais, IngresosFiscales, TasaImpositiva, LatitudPaísRes, LongitudPaísRes
from paises as p join estados as e on p.IdPais = e.IdEstado GROUP BY p.PaisResidencia;

-- Nombre Completo + titulo + patrimonio + pais + ciudad
create view BilloDATOS as select NombreCompleto, Titulo, PatrimonioNeto, PaisResidencia, CiudadResidencia
from billonarios as b 
join organizaciones as o on b.IdPais = o.IdOrganizacion 
join categoriasnegocio as cn on o.IdOrganizacion = cn.IdCategoriaNegocio
join paises as p on p.IdPais= b.IdBillonario
join estados as e on e.IdEstado = b.IdBillonario;

-- PAIS + PBI + INFLACION
create view PbiIPCpais as 
select PaisResidencia, PBIPais, IPCPais 
from paises group by PaisResidencia;

-- EMPRESA + PATRIMONIO
create view PatrimonioEmpresa 
as 
select FuenteIngreso, PatrimonioNeto 
from organizaciones;

-- Nombre Completo -- FechaCumpleanos
CREATE  VIEW BirthdayName as select NombreCompleto, FechaCumpleanos FROM billonarios;
 
-- Nombre completo + titulo
create view titulacion as select NombreCompleto, titulo 
from billonarios as b 
join categoriasnegocio as cn 
on b.IdBillonario = cn.IdCategoriaNegocio;
