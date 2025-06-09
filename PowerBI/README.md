📊 InstituoGabriel - Informe Power BI
🏫 Descripción General
instituoGabriel.pbix es un informe desarrollado en Power BI que presenta el análisis académico y de calidad de un centro educativo. Está basado en datos extraídos de la base de datos institutos_itaca alojada en AWS RDS.

El informe se divide en dos paneles interactivos:

Panel Académico

Panel de Indicadores PAA

Cada uno permite filtrar por criterios específicos para obtener un análisis detallado de los resultados educativos y de los procesos de mejora del instituto.

🗂️ Fuente de Datos
Los datos se obtienen directamente de una instancia de MySQL en AWS RDS, desde la base de datos llamada institutos_itaca.

Tablas principales utilizadas:
Tabla	Descripción
alumnos	Datos del alumnado (NIA, curso, grupo, turno, familia).
notas_evaluaciones	Notas individuales y promedio por evaluación.
grupos	Información de estructura académica (curso, grupo, grado).
paa_procesos	Catálogo de procesos de autoevaluación.
paa_valores	Medición de valores de procesos por trimestre y anualmente.

📌 Panel Académico
Objetivo
Visualizar el rendimiento académico de los estudiantes y su distribución por grupo, grado, turno, etc.

Visualizaciones incluidas
% Aprobados vs No Aprobados (Gráfico circular)

Promedio de nota por evaluación (FI, 1ª, 2ª evaluación)

Promedio de nota por grupo y año (2021)

Recuento de NIA por turno (Día / Semana)

Comparativa de aprobados por grado (Radar: Medio, Superior, Especialización)

Filtros disponibles:
Familia profesional

Año académico

Grado

Turno

Grupo

📌 Panel Indicadores PAA
Objetivo
Evaluar los resultados de los procesos de autoevaluación y mejora continua del centro.

Visualizaciones incluidas
Promedio anual por curso (radar histórico desde 2016/17 hasta 2022/23)

Promedio por grupo (barra por objetivos PAA)

Promedio por trimestre (T1, T2, T3)

Promedio por escala del curso (tabla interactiva por código de proceso SQ)

Promedio de valor por proceso (barra apilada por trimestre)

Filtros disponibles:
Proceso/Descripción

Código PAA

Línea/Objetivo PAA

🔌 Conexión a la Base de Datos
Power BI se conecta a la base de datos mediante el conector MySQL/AWS Aurora con las siguientes configuraciones:

Servidor: ricardo.ctr6cqctznjl.us-east-1.rds.amazonaws.com

Base de datos: institutos_itaca

Puerto: 3306

Método de autenticación: Credenciales cifradas

🎯 Objetivo General del Informe
El informe busca proporcionar una herramienta de apoyo visual para la toma de decisiones en el ámbito educativo, enfocándose tanto en resultados académicos como en la autoevaluación institucional basada en procesos definidos por el PAA (Plan Anual de Autoevaluación).

✅ Requisitos Técnicos
Power BI Desktop (versión 2023 o superior) o Power BI Service

Acceso de lectura a institutos_itaca en AWS RDS

Configuración previa del origen de datos en Power BI (actualización necesaria al abrir el archivo .pbix por primera vez)


