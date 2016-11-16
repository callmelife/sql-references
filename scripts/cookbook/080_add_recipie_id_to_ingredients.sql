ALTER TABLE ingredients
  ADD COLUMN recipie_id INTEGER
  REFERENCES recipies(id);
CREATE INDEX ON ingredients(recipie_id);
