/* Database schema to keep the structure of entire database. */

/* I have Created the Database here. */
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