# ⚙️ ETL con Apache NiFi - Proyecto Big Data

Este directorio contiene la plantilla del flujo ETL desarrollado con **Apache NiFi** para el tratamiento de los datos académicos del CIPFP Mislata.

---

## 📄 Archivo incluido

- **Gabriel_Rodriguez_Nifi.xml**  
  Plantilla exportada del flujo de datos de NiFi. Esta puede ser importada directamente desde el entorno de NiFi para reproducir todo el procesamiento realizado.

---

## 🔄 Descripción del Flujo

El flujo en NiFi sigue un enfoque modular y robusto para garantizar la ingestión, limpieza, transformación y carga de datos en una base de datos relacional **MySQL en AWS RDS**.

### 🔹 Entrada de Datos

Se reciben múltiples ficheros CSV correspondientes a:

- **Alumnos**
- **Calificaciones**
- **Módulos**
- **Grupos**
- **Cursos**
- **Horas**
- **Indicadores**
- **Líneas y objetivos del PAA**
- **Procesos**

### 🔹 Procesamiento

Para cada conjunto de datos:

1. **Lectura del CSV**: mediante `ListFile` y `FetchFile`.
2. **Conversión a registros**: se utiliza el controlador `CSVReader` configurado para inferir o definir el esquema Avro de cada fichero.
3. **Validación y limpieza**:
   - Eliminación de cabeceras duplicadas
   - Limpieza de espacios en blanco
   - Conversión de tipos (ej. `horas` a entero, fechas si las hay)
4. **Normalización de campos clave**: ejemplo: `id_compuesto_modulo` se calcula y formatea.

### 🔹 Enrutamiento

- Se enrutaron relaciones específicas para cada tipo de fichero (por ejemplo, `Calificaciones`, `Modulos`, `Indicadores`, `Lineas`, etc.)
- Se implementaron caminos de error para controlar flujos fallidos mediante relaciones `failure`.

### 🔹 Almacenamiento

Los datos procesados se cargan directamente en tablas de una base de datos **MySQL en AWS RDS**.  
- El acceso a la base de datos se gestiona mediante el servicio `DBCPConnectionPool`.
- El driver JDBC de MySQL está configurado correctamente.

**Configuración de conexión:**
```
Host: admin.ctr6cqctznjl.us-east-1.rds.amazonaws.com
Base de datos: institutos_itaca
Usuario: admin
Puerto: 3306
```

---

## 🧩 Servicios de Controladores

- **CSVReader**: se encarga de convertir los flujos de texto CSV en registros con esquema.
- **DBCPConnectionPool**: conecta NiFi con la base de datos RDS para ejecutar sentencias `UPSERT`.

---

## 🧪 Tratamiento de Errores

Todos los procesadores están conectados a flujos alternativos para capturar errores (`failure`) y evitar bloqueos o pérdidas de datos. Además, se activa `backpressure` para evitar sobrecarga de nodos en caso de exceso de datos.

---
