-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS institutos_itaca;
USE institutos_itaca;

CREATE TABLE IF NOT EXISTS alumnos (
  anyo varchar(4) DEFAULT NULL,
  NIA varchar(500) DEFAULT NULL,
  curso varchar(20) DEFAULT NULL,
  grupo varchar(10) DEFAULT NULL,
  turno varchar(3) DEFAULT NULL,
  anyo_curso varchar(50) DEFAULT NULL,
  ciclo varchar(200) DEFAULT NULL,
  grado varchar(200) DEFAULT NULL,
  familia varchar(200) DEFAULT NULL,
  id_compuesto varchar(500) NOT NULL,
  id_compuesto_grupo varchar(500) NOT NULL,
  PRIMARY KEY (id_compuesto)
);

CREATE TABLE IF NOT EXISTS calificaciones (
  anyo varchar(4) DEFAULT NULL,
  cod_alumno varchar(500) DEFAULT NULL,
  evaluacion varchar(5) DEFAULT NULL,
  curso varchar(20) DEFAULT NULL,
  modulo varchar(20) DEFAULT NULL,
  nota int DEFAULT NULL,
  id_compuesto varchar(500) DEFAULT NULL,
  id_compuesto_modulo varchar(500) DEFAULT NULL,
  id_compuesto_actualizar varchar(500) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS modulo (
  anyo varchar(4) DEFAULT NULL,
  codigoModulo varchar(50) NOT NULL,
  curso varchar(20) DEFAULT NULL,
  nombre_cas varchar(250) DEFAULT NULL,
  horas int DEFAULT NULL,
  id_compuesto_modulo varchar(500) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS grupo (
  anyo varchar(4) DEFAULT NULL,
  codigoGrupo varchar(15) NOT NULL,
  nombre varchar(100) DEFAULT NULL,
  turno varchar(2) DEFAULT NULL,
  capacidad int DEFAULT NULL,
  id_compuesto_grupo varchar(500) DEFAULT NULL
);


CREATE TABLE IF NOT EXISTS SQ_Trimestral (
  Curso varchar(10) DEFAULT NULL,
  Indicador text,
  Periodicidad varchar(20) DEFAULT NULL,
  Escala decimal(6,2) DEFAULT NULL,
  Objetivo decimal(6,2) DEFAULT NULL,
  Valor_T1 decimal(6,2) DEFAULT NULL,
  Valor_T2 decimal(6,2) DEFAULT NULL,
  Valor_T3 decimal(6,2) DEFAULT NULL,
  Cod_SQ varchar(20) DEFAULT NULL,
  proceso_SQ varchar(10) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS SQ_Anual (
  Curso varchar(10) DEFAULT NULL,
  Indicador text,
  Periodicidad varchar(20) DEFAULT NULL,
  Escala decimal(6,2) DEFAULT NULL,
  Objetivo decimal(6,2) DEFAULT NULL,
  Valor_A decimal(6,2) DEFAULT NULL,
  Cod_SQ varchar(20) DEFAULT NULL,
  proceso_SQ varchar(10) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS Procesos (
  Proceso varchar(10) DEFAULT NULL,
  Descripcion text
);

CREATE TABLE IF NOT EXISTS PAA (
  Curso varchar(10) DEFAULT NULL,
  Indicador text,
  Periodicidad varchar(20) DEFAULT NULL,
  Escala decimal(6,2) DEFAULT NULL,
  Objetivo decimal(6,2) DEFAULT NULL,
  Valor_A decimal(6,2) DEFAULT NULL,
  Cod_PAA varchar(20) DEFAULT NULL,
  objetivo_PAA varchar(10) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS Objetivos (
  Objetivo_PAA varchar(10) DEFAULT NULL,
  Linea int DEFAULT NULL,
  Descripcion_Objetivo text
);

CREATE TABLE IF NOT EXISTS Lineas (
	Linea INT,
	Descripcion_Linea VARCHAR(255)
);
