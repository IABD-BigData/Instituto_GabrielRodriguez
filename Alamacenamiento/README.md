# 🗄️ Almacenamiento de Datos - MySQL en AWS RDS

Este directorio documenta la arquitectura de almacenamiento del proyecto de análisis académico, centrado en el uso de una base de datos relacional en la nube (AWS RDS con MySQL).

---

## 🧱 Arquitectura del Almacenamiento

Los datos limpios generados por el flujo ETL en Apache NiFi son almacenados en una base de datos MySQL hospedada en **Amazon RDS**, lo que garantiza:

- Acceso remoto desde Power BI
- Escalabilidad para más cursos
- Seguridad y respaldo gestionados por AWS

---

## 🔐 Detalles de la Base de Datos

```
Tipo:       MySQL
Hosting:    Amazon RDS
Host:       admin.ctr6cqctznjl.us-east-1.rds.amazonaws.com
Puerto:     3306
Base de datos: institutos_itaca
Usuario:    admin
```

*Nota: La contraseña y detalles sensibles se mantienen fuera del repositorio por seguridad.*

---

## 🧩 Estructura de Tablas

Se han diseñado tablas específicas para cada conjunto de datos:

- `alumnos`
- `calificaciones`
- `modulos`
- `grupos`
- `cursos`
- `horas_modulo`
- `indicadores`
- `objetivos_paa`
- `lineas_paa`
- `procesos_calidad`

Cada tabla ha sido normalizada para facilitar su explotación en herramientas como Power BI.

---

## 🔌 Integración con NiFi

La conexión se realiza desde NiFi mediante un **DBCPConnectionPool**, configurado con el driver JDBC y parámetros de conexión.

- El flujo NiFi inserta los datos en las tablas mediante `PutDatabaseRecord`.
- Se usa el formato Avro para mapear los registros CSV a columnas SQL automáticamente.

---

## 📊 Integración con Power BI

Power BI se conecta directamente a esta base de datos utilizando la fuente de datos **MySQL**.  
Esto permite refrescar los informes dinámicamente cuando los datos son actualizados desde NiFi.

---

## ✅ Buenas Prácticas

- Uso de tipos de datos correctos (`VARCHAR`, `INT`, `DATE`, etc.)
- Índices primarios y claves foráneas definidos donde es necesario
- Separación clara entre datos académicos e indicadores del sistema de calidad

---
