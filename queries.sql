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
SELECT animals.name FROM animals JOIN visits ON animals_id = animals.id WHERE vets_id = 1 ORDER BY visits.date LIMIT 1;
SELECT count(*) AS total_animals, vets.name FROM visits INNER JOIN animals ON visits.animals_id = animals.id INNER JOIN vets ON visits.vets_id = vets.id WHERE vets.name = 'Stephanie Mendez' GROUP BY vets.name;
SELECT COUNT(animals.name) FROM animals JOIN visits ON animals_id = animals.id WHERE vets_id = 3;
SELECT vets.name, species.name FROM species RIGHT JOIN specializations ON species.id = specializations.species_id RIGHT JOIN vets ON vets.id = specializations.vets_id;
SELECT animals.name FROM animals JOIN visits ON animals.id = visits.animals_id JOIN vets ON vets.id = vets_id WHERE vets.id = 3 AND visits.date BETWEEN '2020-04-01' AND '2020-08-30';
SELECT COUNT(animals.name) AS total, animals.name FROM animals JOIN visits ON animals.id = visits.animals_id JOIN vets ON vets.id = visits.vets_id GROUP BY animals.name ORDER BY total DESC LIMIT 1;
SELECT animals.name, date FROM animals JOIN visits ON animals.id = visits.animals_id JOIN vets ON vets.id = visits.vets_id WHERE vets.id = 2 ORDER BY date LIMIT 1;
SELECT animals.id, animals.name, animals.date_of_birth, animals.escape_attempts, animals.weight_kg, vets.name, vets.age, vets.date_of_graduation, date FROM visits JOIN animals ON animals.id = visits.animals_id JOIN vets ON vets.id = visits.vets_id ORDER BY date LIMIT 1;
SELECT COUNT(*) FROM visits JOIN animals ON animals.id = visits.animals_id JOIN vets ON vets.id = visits.vets_id JOIN specializations ON specializations.vets_id = visits.vets_id WHERE specializations.species_id != animals.species_id;
SELECT species.name, count(*) FROM visits JOIN animals ON animals.id = visits.animals_id JOIN vets ON vets.id = visits.vets_id JOIN species ON animals.species_id = species.id WHERE vets.name = 'Maisy Smith' GROUP BY species.name;
SELECT COUNT(*) FROM visits where animal_id = 4;
SELECT * FROM visits where vet_id = 2;
SELECT * FROM owners where email = 'owner_18327@mail.com';
