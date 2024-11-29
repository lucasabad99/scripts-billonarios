# 💼 **Proyecto Billonarios**

## 📄 **Información del Proyecto**
- **Autor**: LUCAS EMIR ABAD CANCINOS  
- **Profesor**: Gabriel Almiñana  
- **Tutor**: Natalie Bassano – Ariel Annone  
- **Comisión**: 50050  
- **Fecha de entrega**: 22/1/2024  

---

## 📖 **Índice**
1. [Introducción](#1-introducción)  
2. [Objetivo](#2-objetivo)  
3. [Situación Problemática](#3-situación-problemática)  
4. [Modelo de Negocio](#4-modelo-de-negocio)  
5. [Diagrama de Entidad Relación](#5-diagrama-de-entidad-relación)  
6. [Listado de Tablas](#6-listado-de-tablas)  
7. [Scripts de Creación](#7-scripts-de-creación)  
    - 7.1 [Funciones](#71-funciones)  
    - 7.2 [Procedimientos Almacenados](#72-procedimientos-almacenados)  
    - 7.3 [Triggers](#73-triggers)  
    - 7.4 [Vistas](#74-vistas)  
    - 7.5 [Creación de Tablas](#75-creación-de-tablas)  
    - 7.6 [Transacciones](#76-transacciones)  
    - 7.7 [Usuarios del Sistema](#77-usuarios-del-sistema)  
8. [Scripts de Inserción](#8-scripts-de-inserción)  
9. [Informes Generados](#9-informes-generados)  
10. [Herramientas y Tecnologías Usadas](#10-herramientas-y-tecnologías-usadas)  
11. [Futuras Líneas de Trabajo](#11-futuras-líneas-de-trabajo)  

---

## 🌟 **1) Introducción**
El proyecto **Billonariosgit a  ** explora el universo de los individuos más ricos del mundo mediante un análisis exhaustivo de datos. Se utilizan cinco tablas clave para detallar información personal, económica y empresarial, proporcionando una narrativa completa del éxito financiero global.  

---

## 🎯 **2) Objetivo**
Utilizar **SQL** como herramienta principal para:  
- Crear y analizar modelos relacionales sólidos.  
- Desarrollar funciones avanzadas, triggers y procedimientos almacenados.  
- Comprender las conexiones entre los billonarios, sus industrias y sus ubicaciones.  

---

## 🛠️ **3) Situación Problemática**
### 🛑 **Desafíos**  
1. **Límite en la importación de datos**: Se ajustaron configuraciones para permitir una carga completa.  
2. **Errores en funciones**: Se corrigieron errores de lógica en condiciones `IF`.  
3. **Restricciones relacionales**: Se gestionaron restricciones temporales para asegurar la consistencia de los datos.  

---

## 💼 **4) Modelo de Negocio**
El análisis se centra en cinco tablas principales:  
- **Billonarios**: Datos personales y conexiones empresariales.  
- **Países**: Contexto económico y social.  
- **Estados**: Detalles geográficos específicos.  
- **Categorías de Negocio**: Sectores clave de éxito.  
- **Organizaciones**: Alianzas estratégicas y fuentes de riqueza.  

Cada tabla aporta información crucial para entender las estrategias y tendencias que impulsan la riqueza global.  

---

## 📐 **5) Diagrama de Entidad Relación**
Se diseñó un modelo ER que muestra las relaciones entre las tablas principales y cómo se conectan mediante claves primarias y foráneas.  

---

## 📋 **6) Listado de Tablas**
- **Billonarios**: Información personal y empresarial.  
- **Países**: Indicadores macroeconómicos.  
- **Estados**: Detalles geográficos específicos.  
- **Categorías de Negocio**: Sectores industriales.  
- **Organizaciones**: Fuentes de riqueza y asociaciones clave.  

---

## 🔧 **7) Scripts de Creación**
### 📜 **7.1 Funciones**
- **ObtenerEdadBillonario**: Devuelve nombre completo y edad en formato JSON.  
- **ObtenerEmpresaCash**: Relaciona el nombre del billonario con su organización.  
- **TipodeBILLO**: Clasifica el nivel de riqueza según el patrimonio.  

### 🔄 **7.2 Procedimientos Almacenados**
- **Actividad**: Registra un nuevo billonario en la base de datos.  
- **OrdenarTabla**: Ordena dinámicamente cualquier tabla por un campo especificado.  

### 🛠️ **7.3 Triggers**
- **billo_log**: Registra la actividad de inserción en la tabla `billonarios`.  
- **auditoria_billonario**: Guarda los cambios realizados en `categoriasnegocio`.  

### 👁️‍🗨️ **7.4 Vistas**
- **CantidadPorGenero**: Analiza la distribución de género entre los billonarios.  
- **BILLONARIOSxPAIS**: Muestra los países con más billonarios.  
- **PatrimonioPorOrganizacion**: Distribución del patrimonio entre organizaciones.  

### 🏗️ **7.5 Creación de Tablas**
Se crearon tablas para cada entidad principal con claves primarias, foráneas y restricciones para garantizar la integridad de los datos.  

### 💾 **7.6 Transacciones**
Implementación de puntos de guardado y transacciones completas para asegurar la consistencia durante operaciones complejas.  

### 👥 **7.7 Usuarios del Sistema**
Se definieron permisos específicos para diferentes usuarios:  
- **Coder**: Solo lectura.  
- **lucasALM**: Inserción, actualización y lectura.  

---

## 📊 **8) Scripts de Inserción**
- **Billonarios**: Datos de los principales millonarios, como Bernard Arnault, Elon Musk y Jeff Bezos.  
- **Categorías de Negocio**: Clasificaciones industriales como tecnología y finanzas.  
- **Países**: Indicadores como PIB e IPC.  

---

## 📝 **9) Informes Generados**
- **CantidadPorGenero**: Proporción de género entre billonarios.  
- **PromedioRiqueza**: Valor promedio del patrimonio neto.  
- **PatrimonioPorOrganizacion**: Porcentaje de riqueza por organización.  

---

## 💻 **10) Herramientas y Tecnologías Usadas**
- **MySQL**: Gestión de la base de datos.  
- **Excel**: Análisis y transformación inicial de datos.  
- **GitHub**: Control de versiones y almacenamiento del proyecto.  
- **draw.io**: Diseño del modelo entidad-relación.  

---

## 🔮 **11) Futuras Líneas de Trabajo**
- **Implementación de Backups**: Automatización de copias de seguridad para proteger los datos.  
- **Optimización**: Mejorar las consultas SQL para análisis más rápidos y eficientes.  
- **Ampliación del Modelo**: Incorporar nuevas tablas y relaciones para enriquecer el análisis.  

---

¡Gracias por explorar este proyecto! 🚀
