-- Netflix SQL Project
-- Author: Nataly García
USE NetflixDB;

-- Query 1: Mostrar todas las series
SELECT * FROM Series;

-- Query 2: Mostrar solo los títulos
SELECT titulo FROM Series;

-- Query 3: Series del género Drama
SELECT titulo, genero FROM Series WHERE genero = 'Drama';

-- Query 4: Series ordenadas por año
SELECT titulo, año_lanzamiento FROM Series ORDER BY año_lanzamiento;

-- Query 5: Total de series
SELECT COUNT(*) AS total_series FROM Series;

-- Query 6: Series por género
SELECT genero, COUNT(*) AS total_series FROM Series GROUP BY genero;

-- Query 7: Mostrar series ordenadas desde la más reciente
SELECT titulo, año_lanzamiento FROM Series ORDER BY año_lanzamiento DESC;

-- Query 8: Mostrar cada episodio con sus series
SELECT * FROM Episodios;

SELECT s.titulo AS serie,
       e.titulo AS episodio,
       e.temporada
FROM Series AS s
INNER JOIN Episodios AS e
    ON s.serie_id = e.serie_id;
    
-- Query 9: Número de episodios por serie
SELECT
    s.titulo AS serie,
    COUNT(e.episodio_id) AS total_episodios
FROM Series AS s
INNER JOIN Episodios AS e
    ON s.serie_id = e.serie_id
GROUP BY s.titulo
ORDER BY total_episodios DESC;

-- Query 10: Series con más de 5 episodios
SELECT
    s.titulo AS serie,
    COUNT(e.episodio_id) AS total_episodios
FROM Series AS s
INNER JOIN Episodios AS e
    ON s.serie_id = e.serie_id
GROUP BY s.titulo
HAVING COUNT(e.episodio_id) > 5
ORDER BY total_episodios DESC;

-- Query 11: Calificación promedio de IMDb por serie
SELECT
    s.titulo AS serie,
    ROUND(AVG(e.rating_imdb), 2) AS promedio_rating
FROM Series AS s
INNER JOIN Episodios AS e
    ON s.serie_id = e.serie_id
GROUP BY s.titulo
ORDER BY promedio_rating DESC;

-- Query 12: Episodio con la calificación más alta de IMDb
SELECT
    titulo,
    rating_imdb
FROM Episodios
ORDER BY rating_imdb DESC
LIMIT 1;

-- Query 13: Top 5 episodios con la mejor calificación de IMDb
SELECT
    titulo,
    rating_imdb
FROM Episodios
ORDER BY rating_imdb DESC
LIMIT 5;

-- Query 14: Actores por serie
DESCRIBE Actuaciones;
SELECT
    s.titulo AS serie,
    a.nombre AS actor,
    ac.personaje
FROM Actuaciones AS ac
INNER JOIN Series AS s
    ON ac.serie_id = s.serie_id
INNER JOIN Actores AS a
    ON ac.actor_id = a.actor_id
ORDER BY s.titulo, a.nombre;

-- Query 15: Número de actores por serie
SELECT
    s.titulo AS serie,
    COUNT(ac.actor_id) AS total_actores
FROM Series AS s
INNER JOIN Actuaciones AS ac
    ON s.serie_id = ac.serie_id
GROUP BY s.titulo
ORDER BY total_actores DESC;
