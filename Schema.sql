/* Database schema to keep the structure of entire database. */

CREATE DATABASE vet_clinic;
ALTER TABLE animals ADD species TEXT;

CREATE TABLE animals (
    id INT PRIMARY KEY NOT NULL,
    name text,
    date_of_birth DATE,
    escape_attempts INT,
    neutered BIT,
    weight_kg DECIMAL,
);

CREATE TABLE owners (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    full_name TEXT NOT NULL,
    age INT NOT NULL
);

CREATE TABLE species (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name TEXT NOT NULL
);

ALTER TABLE animals DROP COLUMN species;
ALTER TABLE animals ADD species_id INT,
ALTER TABLE animals ADD FOREIGN KEY (species_id) REFERENCES species(id);
ALTER TABLE animals ADD owner_id INT;
ALTER TABLE animals ADD FOREIGN KEY (owner_id) REFERENCES owners(id);