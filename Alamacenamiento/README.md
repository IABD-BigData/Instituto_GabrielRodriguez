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

---

## 🧩 Estructura de Tablas

### `alumnos`
- anyo
- NIA
- curso
- grupo
- turno
- anyo_curso
- ciclo
- grado
- familia
- id_compuesto (PK)
- id_compuesto_grupo

### `calificaciones`
- anyo
- cod_alumno
- evaluacion
- curso
- modulo
- nota
- id_compuesto
- id_compuesto_modulo
- id_compuesto_actualizar

### `modulo`
- anyo
- codigoModulo (PK)
- curso
- nombre_cas
- horas
- id_compuesto_modulo

### `grupo`
- anyo
- codigoGrupo (PK)
- nombre
- turno
- capacidad
- id_compuesto_grupo

### `SQ_Trimestral`
- Curso
- Indicador
- Periodicidad
- Escala
- Objetivo
- Valor_T1
- Valor_T2
- Valor_T3
- Cod_SQ
- proceso_SQ

### `SQ_Anual`
- Curso
- Indicador
- Periodicidad
- Escala
- Objetivo
- Valor_A
- Cod_SQ
- proceso_SQ

### `Procesos`
- Proceso
- Descripcion

### `PAA`
- Curso
- Indicador
- Periodicidad
- Escala
- Objetivo
- Valor_A
- Cod_PAA
- objetivo_PAA

### `Objetivos`
- Objetivo_PAA
- Linea
- Descripcion_Objetivo

### `Lineas`
- Linea (INT)
- Descripcion_Linea

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
