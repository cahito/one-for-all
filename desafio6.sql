SELECT ROUND(MIN(p.price), 2) AS faturamento_minimo,
    ROUND(MAX(p.price), 2) AS faturamento_maximo,
    ROUND(AVG(p.price), 2) AS faturamento_medio,
    ROUND(SUM(p.price), 2) AS faturamento_total
FROM plans AS p
    INNER JOIN users AS u ON p.id = u.plan_id;