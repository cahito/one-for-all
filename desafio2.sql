SELECT
  COUNT(DISTINCT tr.id) AS cancoes,
  COUNT(DISTINCT art.id) AS artistas,
  COUNT(DISTINCT al.id) AS albuns
FROM tracks AS tr
INNER JOIN albuns AS al
ON tr.album_id=al.id
INNER JOIN artists AS art
ON al.artist_id=art.id;