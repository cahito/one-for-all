SELECT tr.track AS nome,
  COUNT(rh.track_id) AS reproducoes
FROM tracks AS tr
  INNER JOIN reproduction_history AS rh ON rh.track_id = tr.id
  INNER JOIN users AS u ON rh.user_id = u.id
WHERE u.plan_id IN (1, 3)
GROUP BY tr.track
ORDER BY nome;