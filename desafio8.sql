SELECT art.artist AS artista,
  al.album AS album
FROM artists AS art
  INNER JOIN albuns AS al ON art.id = al.artist_id
WHERE art.artist = 'Walter Phoenix'
ORDER BY al.album;