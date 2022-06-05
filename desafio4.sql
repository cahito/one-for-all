SELECT DISTINCT u.name AS usuario,
	IF(
		MAX(rh.reproduction_date) >= '2021-01-01 00:00:00',
		'Usuário ativo',
		'Usuário inativo'
	) AS condicao_usuario
FROM users AS u
	INNER JOIN reproduction_history AS rh ON u.id = rh.user_id
GROUP BY u.name
ORDER BY u.name;