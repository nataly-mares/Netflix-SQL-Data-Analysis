# Análisis de Series de Netflix con SQL 🎬

## ✅ Descripción del proyecto
Este proyecto consiste en el análisis de una base de datos relacional de series de Netflix utilizando MySQL. A través de consultas SQL se explora información relacionada con series, episodios, actores y calificaciones de IMDb, aplicando técnicas de análisis de datos para responder preguntas de negocio.
Además, se implementaron vistas (Views) para reutilizar consultas frecuentes y optimizar el acceso a la información.

## ✅ Objetivo
Desarrollar un proyecto de análisis utilizando SQL que permita:
- Analizar la información de series y episodios.
- Relacionar múltiples tablas mediante INNER JOIN.
- Obtener indicadores utilizando funciones de agregación.
- Crear vistas para facilitar futuras consultas.
- Aplicar buenas prácticas en la organización de scripts SQL.

## ✅ Consultas realizadas
Durante el proyecto se desarrollaron consultas para analizar información como:
- Total de series registradas.
- Series por género.
- Series ordenadas por año de lanzamiento.
- Número de episodios por serie.
- Series con más de cinco episodios.
- Promedio de calificación de IMDb por serie.
- Episodio con mayor calificación.
- Top 5 episodios mejor calificados.
- Actores y personajes por serie.
- Número de actores por serie.

## ✅ Vistas creadas
Se desarrollaron las siguientes vistas para facilitar el análisis de la información:
- Vista_series_episodios
- Vista_promedio_series
- Vista_elenco_series

✅ Herramientas utilizadas
- MySQL
- MySQL Workbench
- SQL
- Git
- GitHub

✅ Resultados
Se desarrolló un proyecto de análisis de datos utilizando SQL para explorar información relacionada con series, episodios y actores. Mediante consultas de análisis, funciones de agregación, relaciones entre tablas y creación de vistas, fue posible obtener información relevante sobre la base de datos y demostrar el uso de SQL para el análisis de datos.

✅ Cómo utilizar el proyecto
- Descargar el repositorio.
- Ejecutar Netflix_schema.sql para crear la base de datos.
- Ejecutar Netflix_data.sql para cargar la información.
- Ejecutar queries.sql para realizar el análisis.
- Ejecutar views.sql para crear las vistas.
- Explorar los resultados utilizando MySQL Workbench.

📸 Capturas del proyecto
- Estructura de la base de datos

(Inserta aquí la imagen del diagrama EER o de las tablas.)

- Relación entre tablas mediante JOIN

(Inserta aquí la captura de la Consulta 14.)

- Análisis del promedio de calificación por serie

(Inserta aquí la captura de la Consulta 11.)

- Vista: Promedio de calificación por serie

(Inserta aquí la captura de SELECT * FROM vista_promedio_series;.)
