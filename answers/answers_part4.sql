--# Write a query that returns the following columns:
--# Pokemon Name   | Trainer Name	  | Level	        | Primary Type	    | Secondary Type
--# Pokemon's name | Trainer's name | Current Level	| Primary Type Name	| Secondary Type Name
--Sort the data by finding out which trainer has the strongest pokemon so that this will act as a ranking of strongest to weakest trainer.
--You may interpret strongest in whatever way you want, but you will have to explain your decision.

-- I ordered by max HP. Which is Blissey at 656.

SELECT P.name, T1.name as primary_type, T2.name as secondary_type, TR.trainername, PT.pokelevel, PT.maxhp
FROM pokemons P
LEFT JOIN types T1 on P.primary_type = T1.id
LEFT JOIN types T2 on P.secondary_type = T2.id
JOIN pokemon_trainer PT on P.id = PT.pokemon_id
JOIN trainers TR on PT.trainerID = TR.trainerID
ORDER BY PT.maxhp DESC
LIMIT 10;


