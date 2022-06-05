SELECT art.artist AS artista,
    al.album AS album,
    COUNT(f.artist_id) AS seguidores
FROM artists AS art
    INNER JOIN albuns AS al ON art.id = al.artist_id
    INNER JOIN followers AS f ON art.id = f.artist_id
GROUP BY art.artist,
    al.album
ORDER BY seguidores DESC,
    artista,
    album;