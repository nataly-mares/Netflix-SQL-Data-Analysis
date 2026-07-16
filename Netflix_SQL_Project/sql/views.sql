-- Netflix SQL Project
-- Author: Nataly García
USE NetflixDB;

-- Vista 1: Información de series y episodios
DROP VIEW IF EXISTS vista_series_episodios;

CREATE VIEW vista_series_episodios AS
SELECT
    s.titulo AS serie,
    e.titulo AS episodio,
    e.temporada,
    e.rating_imdb
FROM Series AS s
INNER JOIN Episodios AS e
    ON s.serie_id = e.serie_id;
    

-- Vista 2: Promedio de calificación por serie
DROP VIEW IF EXISTS vista_promedio_series;

CREATE VIEW vista_promedio_series AS
SELECT
    s.titulo AS serie,
    ROUND(AVG(e.rating_imdb), 2) AS promedio_rating
FROM Series AS s
INNER JOIN Episodios AS e
    ON s.serie_id = e.serie_id
GROUP BY s.titulo;

SELECT *
FROM vista_promedio_series;

-- Vista 3: Elenco de cada serie
DROP VIEW IF EXISTS vista_elenco_series;

CREATE VIEW vista_elenco_series AS
SELECT
    s.titulo AS serie,
    a.nombre AS actor,
    ac.personaje
FROM Actuaciones AS ac
INNER JOIN Series AS s
    ON ac.serie_id = s.serie_id
INNER JOIN Actores AS a
    ON ac.actor_id = a.actor_id;

