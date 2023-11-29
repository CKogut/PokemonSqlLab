# Write a query that returns the following columns:

# Pokemon Name   | Trainer Name	  | Level	        | Primary Type	    | Secondary Type
# Pokemon's name | Trainer's name | Current Level	| Primary Type Name	| Secondary Type Name

Sort the data by finding out which trainer has the strongest pokemon so that this will act as a ranking of strongest to weakest trainer.
You may interpret strongest in whatever way you want, but you will have to explain your decision.

SELECT P.name, TR.trainername, PT.pokelevel, PT.maxhp
FROM pokemons P, pokemon_trainer PT, trainers TR
WHERE P.id = PT.pokemon_id and PT.trainerID = TR.trainerID
ORDER BY PT.maxhp DESC
LIMIT 10;


SELECT P.name, T1.name as primary_type, T2.name as secondary_type
FROM pokemons P
LEFT JOIN types T1 on P.primary_type = T1.id
LEFT JOIN types T2 on P.secondary_type = T2.id
LIMIT 10;



mysql> desc pokemon_trainer;
+------------+------+------+-----+---------+-------+
| Field      | Type | Null | Key | Default | Extra |
+------------+------+------+-----+---------+-------+
| trainerID  | int  | YES  |     | NULL    |       |
| pokelevel  | int  | YES  |     | NULL    |       |
| hp         | int  | YES  |     | NULL    |       |
| maxhp      | int  | YES  |     | NULL    |       |
| attack     | int  | YES  |     | NULL    |       |
| defense    | int  | YES  |     | NULL    |       |
| spatk      | int  | YES  |     | NULL    |       |
| spdef      | int  | YES  |     | NULL    |       |
| speed      | int  | YES  |     | NULL    |       |
| pokemon_id | int  | YES  |     | NULL    |       |
+------------+------+------+-----+---------+-------+

mysql> desc pokemons;
+----------------+------+------+-----+---------+----------------+
| Field          | Type | Null | Key | Default | Extra          |
+----------------+------+------+-----+---------+----------------+
| id             | int  | NO   | PRI | NULL    | auto_increment |
| name           | text | NO   |     | NULL    |                |
| primary_type   | int  | NO   |     | NULL    |                |
| secondary_type | int  | YES  |     | NULL    |                |
+----------------+------+------+-----+---------+----------------+

mysql> desc trainers;
+-------------+------+------+-----+---------+-------+
| Field       | Type | Null | Key | Default | Extra |
+-------------+------+------+-----+---------+-------+
| trainerID   | int  | NO   | PRI | NULL    |       |
| trainername | text | YES  |     | NULL    |       |
+-------------+------+------+-----+---------+-------+

mysql> desc types;
+-------+------+------+-----+---------+----------------+
| Field | Type | Null | Key | Default | Extra          |
+-------+------+------+-----+---------+----------------+
| id    | int  | NO   | PRI | NULL    | auto_increment |
| name  | text | NO   |     | NULL    |                |
+-------+------+------+-----+---------+----------------+