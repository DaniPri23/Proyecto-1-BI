# Proyecto BI - Equipo 4
Análisis de institución universitaria

Integrantes:
Daniela Madrigal Sanabria
Vidal Mesén Rivas
Marianny Miranda Mojica
Eduardo Fernández Cerdas
Juan Diego Quirós Gómez

Descripción del problema:
Este proyecto desarrolla una solución de Inteligencia de Negocios para una institución universitaria, con el objetivo de analizar matrícula, rendimiento académico y deserción estudiantil.

Arquitectura de la solución:
Flujo: Fuentes de datos -> ETL -> Modelo Dimensional -> Dashboard

Herramientas utilizadas:
- Apache NiFi
- GitHub
- Metabase

Instrucciones de ejecución:
1. Clonar el repositorio
2. Configuración del entorno: instalar PostgreSQL, Apache NiFi y Metabase.
3. Crear base de datos.
4. Crear esquemas y tablas.
5. Carga de dimensiones.
6. Ejecutar el ETL para la tabla de hechos en Apache NiFi.
7. Verificar datos
8. Configurar Metabase.
9. Usar el sistema Metabase.

Estructura del repositorio:
│ 
├── README.md 
├── data/ 
├── database/ 
├── etl/ 
├── nifi/ 
├── analytics/ 
├── diagrams/ 
└── docs/
