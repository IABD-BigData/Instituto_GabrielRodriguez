# 📊 Power BI - Cuadro de Mando

Este directorio contiene el informe final desarrollado con Power BI para el análisis de los resultados académicos del CIPFP de Mislata.

---

## 📁 Archivos Incluidos

- **instituoGabriel.pbix**  
  Archivo principal del cuadro de mando. Contiene todas las visualizaciones, KPIs e informes dinámicos vinculados a los datos procesados.

- **Capturas de pantalla/**  
  Carpeta con imágenes de ejemplo de las diferentes páginas del dashboard.

---

## 🧩 Características del Dashboard

- **Interactividad**: filtros por curso, grupo, familia profesional, turno, año académico y tipo de formación.
- **Indicadores clave**:
  - Porcentaje de aprobados y suspensos
  - Evolución histórica del rendimiento
  - Alumnos evaluables y promociones
  - Indicadores del PAA y procesos de calidad
- **Páginas**:
  - Resumen global de resultados
  - Análisis por grupo y módulo
  - Seguimiento de objetivos del PAA
  - Panel de procesos de calidad

---

## 🔌 Conexión de Datos

Los datos visualizados en este informe provienen de una base de datos **MySQL alojada en AWS RDS**, cargada mediante Apache NiFi. Power BI está configurado para conectarse directamente mediante la fuente de datos MySQL.

---

## ✅ Buenas Prácticas

- Tablas y relaciones correctamente normalizadas
- Transformaciones mínimas dentro de Power BI (la limpieza se realizó en NiFi)
- Uso de medidas DAX para los KPIs
- Segmentadores claros para facilitar la exploración de los datos

---

## 📝 Notas

- El archivo `.pbix` está preparado para ser actualizado automáticamente cuando se refresquen los datos en la base de datos.
- Si deseas modificar las visualizaciones, asegúrate de mantener la integridad de los modelos de datos cargados.

---
