-- Dimensión Estudiante
CREATE TABLE dim_estudiante (
    sk_estudiante SERIAL PRIMARY KEY,
    id_estudiante INT,
    nombre_completo VARCHAR(100),
    genero VARCHAR(20),
    anio_ingreso INT,
    colegio_procedencia VARCHAR(100)
);

-- Dimensión Curso
CREATE TABLE dim_curso (
    sk_curso SERIAL PRIMARY KEY,
    id_curso INT,
    nombre_curso VARCHAR(100),
    creditos INT,
    nombre_carrera VARCHAR(100),
    facultad VARCHAR(100)
);

-- Dimensión Docente
CREATE TABLE dim_docente (
    sk_docente SERIAL PRIMARY KEY,
    id_docente INT,
    nombre_completo VARCHAR(100),
    tipo_contrato VARCHAR(50)
);

-- Dimensión Tiempo
CREATE TABLE dim_tiempo (
    sk_tiempo INT PRIMARY KEY,
    fecha DATE,
    anio INT,
    mes INT,
    trimestre INT,
    periodo_academico VARCHAR(20)
);

-- Dimensión Sede
CREATE TABLE dim_sede (
    sk_sede     SERIAL PRIMARY KEY,
    id_sede     VARCHAR(20),
    nombre_sede VARCHAR(100),
    ubicacion   VARCHAR(100)
);

-- Dimensión Grupo Oferta
CREATE TABLE dim_grupo_oferta (
    sk_grupo          SERIAL PRIMARY KEY,
    id_grupo          VARCHAR(20),
    periodo_academico VARCHAR(20),
    anio              INT,
    modalidad         VARCHAR(50),
    franja_horaria    VARCHAR(50)
);

-- Tabla de hechos
CREATE TABLE fact_rendimiento (
    sk_rendimiento SERIAL PRIMARY KEY,
    sk_estudiante  INT,
    sk_curso       INT,
    sk_docente     INT,
    sk_sede        INT,
    sk_grupo       INT,
    sk_tiempo      INT,
    fecha_matricula DATE,
    nota_final     DECIMAL(5,2),
    es_aprobado    SMALLINT,
    es_reprobado   SMALLINT,
    es_desercion   SMALLINT,

    FOREIGN KEY (sk_estudiante) REFERENCES dim_estudiante(sk_estudiante),
    FOREIGN KEY (sk_curso)      REFERENCES dim_curso(sk_curso),
    FOREIGN KEY (sk_docente)    REFERENCES dim_docente(sk_docente),
    FOREIGN KEY (sk_sede)       REFERENCES dim_sede(sk_sede),
    FOREIGN KEY (sk_grupo)      REFERENCES dim_grupo_oferta(sk_grupo)
);