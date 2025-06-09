# 🧱 Estructura del Proyecto - Diseño y Análisis

Este directorio contiene los documentos y recursos visuales que describen la arquitectura general y el diseño lógico del proyecto de Business Intelligence para el CIPFP Mislata.

---

## 📁 Archivos Recomendados

- **Diagrama.png**  
  Imagen que representa gráficamente el flujo completo del proyecto: desde la entrada de datos hasta la visualización final en Power BI.

- **README.md**  
  Este documento, con el propósito de describir el diseño propuesto y aprobado.

---

## 🧩 Componentes del Diseño

### 1. **Fuentes de Datos**
- CSV exportados desde **ITACA** (Alumnos, Calificaciones, Grupos, Módulos, etc.)
- CSV generados por el **equipo directivo** (Indicadores, Líneas PAA, Objetivos, Procesos)

### 2. **ETL con Apache NiFi**
- Recoge, transforma y limpia los datos.
- Separa flujos por tipo de entidad.
- Carga final en **MySQL AWS RDS**.

### 3. **Almacenamiento**
- Base de datos relacional MySQL estructurada por tablas limpias y normalizadas.
- Preparada para ser accedida por Power BI mediante conexión directa.

### 4. **Cuadro de Mando en Power BI**
- Visualiza indicadores clave: rendimiento académico, evolución por años, comparativas por curso, familia, turno, etc.
- Muestra procesos e indicadores del sistema de calidad del centro educativo.

---

## 🎯 Objetivos del Diseño

- **Escalabilidad**: preparado para la integración de futuros cursos académicos.
- **Flexibilidad**: adaptabilidad a nuevas estructuras o cambios en los CSV.
- **Automatización**: procesamiento de datos sin intervención manual gracias a NiFi.
- **Claridad visual**: dashboards en Power BI pensados para usuarios no técnicos.
