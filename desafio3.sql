SELECT
	u.name AS usuario,
    COUNT(rh.track_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(tr.duration/60), 2) AS total_minutos
FROM users AS u
	INNER JOIN reproduction_history AS rh
	ON u.id=rh.user_id
	INNER JOIN tracks AS tr
	ON rh.track_id=tr.id
GROUP BY u.name
ORDER BY u.name;