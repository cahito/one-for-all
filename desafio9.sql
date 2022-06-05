SELECT COUNT(rh.track_id) AS quantidade_musicas_no_historico
FROM reproduction_history AS rh
  INNER JOIN users AS u ON u.id = user_id
WHERE u.name = 'Bill';