-- Creación de la base de datos
CREATE DATABASE IF NOT EXISTS Billonary;
USE Billonary;

-- Creación de la tabla Países
CREATE TABLE IF NOT EXISTS Paises (
    IdPais INT PRIMARY KEY,
    IPCPais DECIMAL(10, 2),
    PBIPais DECIMAL(10, 2),
    InscEduTerc DECIMAL(5, 2),
    MatEduPrim DECIMAL(5, 2),
    EsperanzaVida DECIMAL(5, 2),
    IngresosFiscales DECIMAL(10, 2),
    TasaImpositiva DECIMAL(5, 2),
    PoblacionPais INT,
    PaisResidencia VARCHAR(255)
);

-- Creación de la tabla Estados
CREATE TABLE IF NOT EXISTS Estados (
    IdEstado INT PRIMARY KEY,
    IdPais INT,
    RegiónResidencia VARCHAR(255),
    CiudadResidencia VARCHAR(255),
    Estado VARCHAR(255),
    LatitudPaísRes DECIMAL(9, 6),
    LongitudPaísRes DECIMAL(9, 6),
    FOREIGN KEY (IdPais) REFERENCES Paises(IdPais)
);

-- Creación de la tabla Categorías de Negocio
CREATE TABLE IF NOT EXISTS CategoriasNegocio (
    IdCategoriaNegocio INT PRIMARY KEY,
    Categoria VARCHAR(255),
    Industria VARCHAR(255),
    HechoPorSiMismo BOOLEAN,
    Titulo VARCHAR(255),
    Rango VARCHAR(255)
);

-- Creación de la tabla Organizaciones
CREATE TABLE IF NOT EXISTS Organizaciones (
    IdOrganizacion INT PRIMARY KEY,
    FuenteIngreso VARCHAR(255),
    Organizacion VARCHAR(255),
    PatrimonioNeto DECIMAL(15, 2),
    FuenteRiqueza VARCHAR(255)
);

-- Creación de la tabla Billonarios
CREATE TABLE IF NOT EXISTS Billonarios (
    IdBillonario INT PRIMARY KEY,
    NombreCompleto VARCHAR(255),
    Edad INT,
    Genero VARCHAR(1),
    FechaCumpleanos DATE,
    IdPais INT,
    IdEstado INT,
    IdCategoriaNegocio INT,
    IdOrganizacion INT,
    Apellido VARCHAR(255),
    Nombre VARCHAR(255),
    FOREIGN KEY (IdPais) REFERENCES Paises(IdPais),
    FOREIGN KEY (IdEstado) REFERENCES Estados(IdEstado),
    FOREIGN KEY (IdCategoriaNegocio) REFERENCES CategoriasNegocio(IdCategoriaNegocio),
    FOREIGN KEY (IdOrganizacion) REFERENCES Organizaciones(IdOrganizacion)
);

-- Seleccionar la base de datos para futuras consultas
USE Billonary;
