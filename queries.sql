vet_clinic=# select * from animals where Name like '%mon';
 id |  name   | date_of_birth | escape_attempts | neutered | weight_kg
----+---------+---------------+-----------------+----------+-----------
  1 | Agumon  | 2020-02-03    |               0 | t        |     10.23
  2 | Gabumon | 2018-11-15    |               2 | t        |         8
  4 | Devimon | 2017-05-12    |               5 | t        |        11
(3 rows)

vet_clinic=# SELECT * FROM animals WHERE Date_of_birth BETWEEN '1/1/2016' AND '12/29/2019';
 id |  name   | date_of_birth | escape_attempts | neutered | weight_kg
----+---------+---------------+-----------------+----------+-----------
  2 | Gabumon | 2018-11-15    |               2 | t        |         8
  4 | Devimon | 2017-05-12    |               5 | t        |        11
(2 rows)

vet_clinic=# SELECT * FROM animals WHERE (Neutered = true AND Escape_attempts < 3);
 id |  name   | date_of_birth | escape_attempts | neutered | weight_kg
----+---------+---------------+-----------------+----------+-----------
  1 | Agumon  | 2020-02-03    |               0 | t        |     10.23
  2 | Gabumon | 2018-11-15    |               2 | t        |         8
(2 rows)

vet_clinic=#  SELECT date_of_birth from animals WHERE Name ='Agumon' OR Name ='Pikachu';
 date_of_birth
---------------
 2020-02-03
 2021-01-07
(2 rows)

vet_clinic=# SELECT Name, Escape_attempts from animals WHERE Weight_kg > 10.5 ;
  name   | escape_attempts
---------+-----------------
 Devimon |               5
 Pikachu |               1
         |               1
(3 rows)

vet_clinic=# SELECT * FROM animals WHERE Neutered = True;
 id |  name   | date_of_birth | escape_attempts | neutered | weight_kg
----+---------+---------------+-----------------+----------+-----------
  1 | Agumon  | 2020-02-03    |               0 | t        |     10.23
  2 | Gabumon | 2018-11-15    |               2 | t        |         8
  4 | Devimon | 2017-05-12    |               5 | t        |        11
(3 rows)

vet_clinic=# SELECT * FROM animals WHERE Name != 'Gabumon';
 id |  name   | date_of_birth | escape_attempts | neutered | weight_kg
----+---------+---------------+-----------------+----------+-----------
  1 | Agumon  | 2020-02-03    |               0 | t        |     10.23
  4 | Devimon | 2017-05-12    |               5 | t        |        11
  3 | Pikachu | 2021-01-07    |               1 | f        |     15.04
(3 rows)

vet_clinic=# SELECT * FROM animals WHERE (weight_kg>= 10.4 AND  weight_kg<= 17.3);
 id |  name   | date_of_birth | escape_attempts | neutered | weight_kg
----+---------+---------------+-----------------+----------+-----------
  4 | Devimon | 2017-05-12    |               5 | t        |        11
  3 | Pikachu | 2021-01-07    |               1 | f        |     15.04
  3 |         | 2021-01-07    |               1 | f        |     15.04
(3 rows)
