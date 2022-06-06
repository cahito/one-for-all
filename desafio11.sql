-- Resolução com ajuda de André Felipe - T19-TA
SELECT ori.track AS nome_musica,
  REPLACE(
    REPLACE(
      REPLACE(
        REPLACE(
          REPLACE(upd.track, 'Streets', 'Code Review'),
          'Her Own',
          'Trybe'
        ),
        'Inner Fire',
        'Project'
      ),
      'Silly',
      'Nice'
    ),
    'Circus',
    'Pull Request'
  ) AS novo_nome
FROM tracks AS ori
  INNER JOIN tracks AS upd ON upd.id = ori.id
WHERE ori.track LIKE '%Streets'
  OR ori.track LIKE '%Her Own'
  OR ori.track LIKE '%Inner Fire'
  OR ori.track LIKE '%Silly'
  OR ori.track LIKE '%Circus'
ORDER BY ori.track;