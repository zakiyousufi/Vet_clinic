ramin@DESKTOP-KKJO2B5:/mnt/c/WINDOWS/system32$ psql vet_clinic
psql (12.9 (Ubuntu 12.9-0ubuntu0.20.04.1))
Type "help" for help.

vet_clinic=# CREATE TABLE animals(
vet_clinic(# ID INT,
vet_clinic(# Name TEXT,
vet_clinic(# Date_of_birth DATE,
vet_clinic(# Escape_attempts INT,
vet_clinic(# Neutered BOOLEAN,
vet_clinic(# Weight_kg DECIMAL
vet_clinic(# );
CREATE TABLE


vet_clinic=# ALTER TABLE animals
vet_clinic-# ADD Spacies TEXT;
ALTER TABLE
vet_clinic=# testdb-# \d
        List of relations
 Schema |  Name   | Type  | Owner
--------+---------+-------+-------
 public | animals | table | ramin
(1 row)

vet_clinic-# testdb-# \d animals
                   Table "public.animals"
     Column      |  Type   | Collation | Nullable | Default
-----------------+---------+-----------+----------+---------
 id              | integer |           |          |
 name            | text    |           |          |
 date_of_birth   | date    |           |          |
 escape_attempts | integer |           |          |
 neutered        | boolean |           |          |
 weight_kg       | numeric |           |          |
 spacies         | text    |           |          |
