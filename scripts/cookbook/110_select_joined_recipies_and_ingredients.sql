SELECT i.name ingredient, r.name recipie
FROM ingredients i
INNER JOIN recipies r
  ON r.id = i.recipie_id
