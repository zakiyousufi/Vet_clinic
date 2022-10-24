/* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Agumon', 'Feb 3, 2020', 10.23, '1', 0);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Gabumon', 'Nov 15, 2018', 8, '1', 2);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Pikachu', 'Jan 7, 2021', 15.04, '0', 1);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Devimon', 'May 12, 2017', 11, '1', 5);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Charmander', 'Feb 8, 2020', -11, '0', 0);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Plantmon', 'Nov 15, 2021', -5.7, '1', 2);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Squirtle', 'Apr 2, 1993', -12.13, '0', 3);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Angemon', 'Jun 12, 2005', -45, '1', 1);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Boarmon', 'Jun 7, 2005', 20.4, '1', 7);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Blossom', 'Oct 13, 1998', 17, '1', 3);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Ditto', 'May 14, 2022', 22, '1', 4);

INSERT INTO owners(full_name, age) VALUES ('Sam Smith', 34);
INSERT INTO owners(full_name, age) VALUES ('Jennifer Orwell', 19);
INSERT INTO owners(full_name, age) VALUES ('Bob', 45);
INSERT INTO owners(full_name, age) VALUES ('Melody Pond', 77);
INSERT INTO owners(full_name, age) VALUES ('Den Winchester', 14);
INSERT INTO owners(full_name, age) VALUES ('Jodie Whittaker', 38);

INSERT INTO species(name) VALUES ('Pokemon');
INSERT INTO species(name) VALUES ('Digimon');

UPDATE animals SET species_id = 1;
UPDATE animals SET species_id = 2 WHERE name LIKE '%mon%';

UPDATE animals SET owner_id = 1 WHERE name = 'Agumon';
UPDATE animals SET owner_id = 2 WHERE name = 'Gabumon' OR name = 'Pikachu';
UPDATE animals SET owner_id = 3 WHERE name = 'Devimon' OR name = 'Plantmon';
UPDATE animals SET owner_id = 4 WHERE name = 'Charmander' OR name = 'Squirtle' OR name = 'Blossom';
UPDATE animals SET owner_id = 5 WHERE name = 'Angemon' OR name = 'Boarmon';

INSERT INTO vets (name, age, date_of_graduation)
VALUES ('William Tatcher', 45, 'Apr 23, 2000'),
('Maisy Smith', 26, 'Jan 17, 2019'),
('Stephanie Mendez', 64, 'May 04, 1981'),
('Vet Jack Harkness', 38, 'Jun 08, 2008');
UPDATE vets SET date_of_graduation = 'May 17, 1981' WHERE name = 'Stephanie Mendez';
UPDATE vets SET name = 'Jack Harkness' WHERE id = 4;

INSERT INTO specializations (vets_id, species_id)
VALUES (1, 1),
(3, 1),
(3, 2),
(4, 2);

INSERT INTO visits (animals_id, vets_id, date)
VALUES (1, 1, 'May 24, 2020'),
(1, 3, 'Jul 22, 2020'),
(2, 4, 'Feb 2, 2021'),
(3, 2, 'Jan 05, 2020'),
(3, 2, 'Mar 08, 2020'),
(3, 2, 'May 14, 2020'),
(4, 3, 'May 04, 2021'),
(5, 4, 'Feb 24, 2021'),
(6, 2, 'Dec 21, 2019'),
(6, 1, 'Aug 10, 2020'),
(6, 2, 'Apr 07, 2021'),
(7, 3, 'Sep 29, 2019'),
(8, 4, 'Oct 03, 2020'),
(8, 4, 'Nov 04, 2020'),
(9, 2, 'Jan 24, 2019'),
(9, 2, 'May 15, 2019'),
(9, 2, 'Feb 27, 2020'),
(9, 2, 'Aug 03, 2020'),
(10, 3, 'May 24, 2020'),
(10, 1, 'Jan 11, 2021');

INSERT INTO visits (animal_id, vet_id, date_of_visit) SELECT * FROM (SELECT id FROM animals) animal_ids, (SELECT id FROM vets) vets_ids, generate_series('1980-01-01'::timestamp, '2021-01-01', '4 hours') visit_timestamp;
insert into owners (full_name, email) select 'Owner ' || generate_series(1,2500000), 'owner_' || generate_series(1,2500000) || '@mail.com';
