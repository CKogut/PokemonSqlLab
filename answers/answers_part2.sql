-- What are all the types of pokemon that a pokemon can have?
SELECT name from types;

-- What is the name of the pokemon with id 45?
-- Evee
SELECT * FROM pokemons WHERE id = 45;

-- How many pokemon are there?
-- 656
SELECT COUNT(*) FROM pokemons;

-- How many types are there?
-- 18
SELECT COUNT(*) FROM types;

-- How many pokemon have a secondary type?
-- 316
SELECT COUNT(*) FROM pokemons WHERE secondary_type IS NOT NULL;
