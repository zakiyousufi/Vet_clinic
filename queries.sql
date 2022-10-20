/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name LIKE '%mon%';
SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' and '2019-12-31';
SELECT name FROM animals WHERE neutered = '1' and escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name IN ('Agumon', 'Pikachu');
SELECT (name, escape_attempts) FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = '1';
SELECT * FROM animals WHERE name != 'Gabumon';
SELECT * FROM animals WHERE weight_kg >= 10.4 AND  weight_kg <= 17.3
SELECT COUNT(*) FROM animals;
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT MAX(escape_attempts) FROM animals GROUP BY neutered;
SELECT MIN(weight_kg) FROM animals;
SELECT MAX(weight_kg) FROM animals;
SELECT AVG(escape_attempts) FROM animals GROUP BY date_of_birth BETWEEN '1990-01-01' and '2000-12-31';
SELECT animals.name FROM animals JOIN owners ON owner_id = owners.id AND owners.id = 4;
SELECT animals.name FROM animals JOIN species ON species_id = species.id AND species.id = 1;
SELECT animals.name, full_name FROM animals RIGHT JOIN owners ON owners.id = owner_id;
SELECT COUNT(*), species.name FROM animals JOIN species ON species_id = species.id GROUP BY species.name;
SELECT animals.name FROM animals JOIN species ON species_id = species.id JOIN owners ON owner_id = owners.id WHERE species_id = 2;
SELECT animals.name FROM animals JOIN owners ON owner_id = owners.id WHERE owners.id = 5 AND escape_attempts = 0;
SELECT COUNT(*) as total, owners.id, owners.full_name FROM animals RIGHT JOIN owners ON owners.id = owner_id GROUP BY owners.id ORDER BY total DESC LIMIT 1;
