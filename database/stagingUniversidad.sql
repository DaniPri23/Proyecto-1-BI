-- =========================================
-- ESQUEMA STAGING (opcional pero recomendado)
-- =========================================
CREATE SCHEMA IF NOT EXISTS staging;

-- =========================================
-- LIMPIEZA (por si ya existían)
-- =========================================
DROP TABLE IF EXISTS staging.stg_matricula;
DROP TABLE IF EXISTS staging.stg_grupo_oferta;
DROP TABLE IF EXISTS staging.stg_estudiante;
DROP TABLE IF EXISTS staging.stg_docente;
DROP TABLE IF EXISTS staging.stg_curso;
DROP TABLE IF EXISTS staging.stg_carrera;
DROP TABLE IF EXISTS staging.stg_sede;

-- =========================================
-- TABLAS STAGING (SIN PK, SIN FK, TODO FLEXIBLE)
-- =========================================

CREATE TABLE staging.stg_sede (
    id_sede TEXT,
    nombre_sede TEXT,
    ubicacion TEXT
);

CREATE TABLE staging.stg_carrera (
    id_carrera TEXT,
    nombre_carrera TEXT,
    facultad TEXT
);

CREATE TABLE staging.stg_curso (
    id_curso TEXT,
    nombre_curso TEXT,
    creditos TEXT,
    id_carrera TEXT
);

CREATE TABLE staging.stg_docente (
    id_docente TEXT,
    nombre_completo TEXT,
    tipo_contrato TEXT
);

CREATE TABLE staging.stg_estudiante (
    id_estudiante TEXT,
    nombre_completo TEXT,
    fecha_nacimiento TEXT,
    genero TEXT,
    anio_ingreso TEXT,
    colegio_procedencia TEXT
);

CREATE TABLE staging.stg_grupo_oferta (
    id_grupo TEXT,
    id_curso TEXT,
    id_docente TEXT,
    id_sede TEXT,
    periodo_academico TEXT,
    anio TEXT,
    modalidad TEXT,
    franja_horaria TEXT
);

CREATE TABLE staging.stg_matricula (
    id_matricula TEXT,
    id_grupo TEXT,
    id_estudiante TEXT,
    fecha_matricula TEXT,
    nota_final TEXT,
    estado_curso TEXT
);
