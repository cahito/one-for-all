SELECT tr.track AS cancao,
    COUNT(rh.track_id) AS reproducoes
FROM tracks AS tr
    INNER JOIN reproduction_history AS rh ON rh.track_id = tr.id
GROUP BY tr.track
ORDER BY reproducoes DESC,
    cancao
LIMIT 2;