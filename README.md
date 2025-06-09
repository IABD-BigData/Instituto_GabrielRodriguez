# 📊 Proyecto Big Data - Cuadro de Mando para Resultados Académicos

## 🧠 Enunciado

El CIPFP de Mislata ha solicitado la elaboración de un Cuadro de Mando Integral que permita analizar el rendimiento académico del alumnado. Los indicadores clave incluyen:

- % de aprobados y no aprobados
- Promedios por evaluación, grupo, año, grado y turno
- Indicadores de calidad relacionados con procesos del centro

El sistema debe estar preparado para la futura incorporación de nuevos cursos académicos, adaptándose dinámicamente al crecimiento del dataset.

---

## 🗂️ Estructura del Proyecto

```
├── Almacenamiento/
│   └── AWS RDS tables.sql      #Tablas que usa mi base de datos
│   └── README.md
├── Estructura/
│   ├── Diagrama.png           # Arquitectura general del sistema
│   └── README.md
├── Nifi/
│   ├── Gabriel_Rodriguez_Nifi.xml  # Plantilla ETL completa
│   └── README.md
├── PowerBI/
│   ├── instituoGabriel.pbix       # Cuadro de mando final
│   ├── Capturas de pantalla       # Vistas del dashboard
│   └── README.md
└── README.md                      # Este archivo
```

---

## ⚙️ Flujo de Datos

### 1. **Origen de los Datos**
Los datos provienen de dos fuentes:
- **ITACA**: CSV de alumnos, calificaciones, módulos, grupos, horas y cursos.
- **Equipo Directivo**: CSV de indicadores de calidad, procesos, líneas y objetivos.

### 2. **ETL con Apache NiFi**
- El flujo de NiFi importa todos los CSV, limpia y transforma los datos.
- Se exportan datasets limpios a una base de datos **MySQL en AWS RDS**.
- Se utiliza el controlador JDBC y el servicio `DBCPConnectionPool`.

### 3. **Almacenamiento**
Los datos limpios se cargan en una base de datos relacional:
```
MySQL - AWS RDS
Host: admin.ctr6cqctznjl.us-east-1.rds.amazonaws.com
Base de datos: institutos_itaca
```

### 4. **Visualización con Power BI**
- Archivo: `instituoGabriel.pbix`
- Dashboards desarrollados:
  - **Cuadro de Resultados Académicos**: filtros por grupo, año, familia, turno y grado.
  - **Cuadro de Indicadores de Calidad**: análisis de procesos por PAA y objetivo.

---

## 🧩 Herramientas Utilizadas

- **Apache NiFi** para la ingestión, limpieza y transformación de datos.
- **MySQL (AWS RDS)** como sistema de almacenamiento centralizado.
- **Power BI** para la visualización dinámica e interactiva.
- **CSV** como formato de entrada para los datos brutos.
- **GitHub** para versionado y colaboración.

---

## 📝 Entregables

- ✔️ Diseño del sistema y análisis de datos (`/Estructura`)
- ✔️ Flujo ETL completo en NiFi (`/Nifi`)
- ✔️ Cuadro de mando funcional en Power BI (`/PowerBI`)
- ✔️ Capturas de visualizaciones
- ✔️ Documentación en README

---
