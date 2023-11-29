-- What is each pokemon's primary type?
SELECT P.name, T.name FROM pokemons P INNER JOIN types T on P.primary_type = T.id;

-- What is Rufflet's secondary type? - Flying
SELECT P.name, T.name FROM pokemons P INNER JOIN types T on P.secondary_type = T.id WHERE P.name = "Rufflet";

-- What are the names of the pokemon that belong to the trainer with trainerID 303? - Wailord and Vileplume
SELECT P.name
FROM pokemons P
INNER JOIN pokemon_trainer T
ON P.id = T.pokemon_id
WHERE T.trainerID = 303;

-- How many pokemon have a secondary type Poison - 31
SELECT Count(*)
FROM pokemons P
INNER JOIN types T
ON P.secondary_type =T.id
WHERE T.name = "poison";

-- What are all the primary types and how many pokemon have that type?
SELECT T.name, Count(P.primary_type)
FROM pokemons P
INNER JOIN types T
ON P.primary_type = T.id
GROUP BY T.name;

-- How many pokemon at level 100 does each trainer with at least one level 100 pokemon have? (Hint: your query should not display a trainer
SELECT COUNT(*)
FROM pokemon_trainer
WHERE pokelevel = 100
GROUP BY trainerID
HAVING COUNT(*) >= 1;

-- How many pokemon only belong to one trainer and no other? - 14
SELECT pokemon_id, COUNT(DISTINCT trainerID) AS num_trainers
FROM pokemon_trainer
GROUP BY pokemon_id
HAVING num_trainers = 1;


