UPDATE ingredients
SET recipie_id = ids.recipie_id
FROM (SELECT TRUNC(RANDOM() * (SELECT COUNT(*) FROM recipies) + 1) recipie_id,
  GENERATE_SERIES(1, (SELECT COUNT(*) FROM ingredients)) ingredient_id) ids
WHERE ingredients.id = ids.ingredient_id;
