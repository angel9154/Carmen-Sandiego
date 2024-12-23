BEGIN
SET
CREATE TABLE
CREATE TABLE
CREATE TABLE
COPY 4079
COPY 239
COPY 984
ALTER TABLE
ALTER TABLE
ALTER TABLE
ALTER TABLE
ALTER TABLE
COMMIT
ANALYZE
ANALYZE
ANALYZE
carmen-# -l
carmen-# SELECT name FROM users;
ERROR:  syntax error at or near "carmen"
LINE 1: carmen=#
        ^
carmen=#
carmen=#
SELECT name FROM users;
ERROR:  relation "users" does not exist
LINE 1: SELECT name FROM users;
                         ^
carmen=# SELECT * FROM
carmen-#
carmen-#
carmen-# d
carmen-#
SELECT * FROM city;
ERROR:  syntax error at or near "SELECT"
LINE 4: SELECT * FROM city;
        ^
carmen=#
carmen=#

SELECT * FROM city;
carmen=#

SELECT * FROM country;
carmen=#

SELECT * FROM country WHERE region; = 'Southern Europe'
ERROR:  argument of WHERE must be type boolean, not type text
LINE 1: SELECT * FROM country WHERE region;
                                    ^
carmen-#
carmen-#
carmen-#

SELECT * FROM country WHERE region; = 'Southern Europe'
ERROR:  syntax error at or near "="
LINE 1: = 'Southern Europe'
        ^
carmen-#

SELECT * FROM country WHERE region = 'Southern Europe';
ERROR:  syntax error at or near "="
LINE 1: = 'Southern Europe'
        ^
carmen=#
carmen=#

SELECT * FROM country WHERE region = 'Southern Europe';
carmen=#
carmen=#

SELECT * FROM countrylanguage;
carmen=#

SELECT * FROM country WHERE region = 'Southern Europe';
carmen=#

SELECT * FROM countrylanguage;
carmen=#

SELECT * FROM countrylanguage WHERE language = 'Italian';
 countrycode | language | isofficial | percentage
-------------+----------+------------+------------
 ITA         | Italian  | t          |       94.1
 SMR         | Italian  | t          |        100
 VAT         | Italian  | t          |          0
 ARG         | Italian  | f          |        1.7
 AUS         | Italian  | f          |        2.2
 LIE         | Italian  | f          |        2.5
 BEL         | Italian  | f          |        2.4
 BRA         | Italian  | f          |        0.4
 LUX         | Italian  | f          |        4.6
 MCO         | Italian  | f          |       16.1
 CHE         | Italian  | t          |        7.7
 CAN         | Italian  | f          |        1.7
 FRA         | Italian  | f          |        0.4
 DEU         | Italian  | f          |        0.7
 USA         | Italian  | f          |        0.6
(15 rows)

carmen=#

SELECT * FROM city WHERE countrycode = 'SMR';
  id  |    name    | countrycode |     district      | population
------+------------+-------------+-------------------+------------
 3170 | Serravalle | SMR         | Serravalle/Dogano |       4802
 3171 | San Marino | SMR         | San Marino        |       2294
(2 rows)

carmen=#

SELECT * FROM city WHERE name = 'San';
 id | name | countrycode | district | population
----+------+-------------+----------+------------
(0 rows)

carmen=#

SELECT * FROM city WHERE name = 'San Paulo';
 id | name | countrycode | district | population
----+------+-------------+----------+------------
(0 rows)

carmen=#

SELECT * FROM city WHERE name LIKE= 'San%';
ERROR:  syntax error at or near "="
LINE 1: SELECT * FROM city WHERE name LIKE= 'San%';
                                          ^
carmen=#
carmen=#

SELECT * FROM city WHERE name LIKE = 'San%';
ERROR:  syntax error at or near "="
LINE 1: SELECT * FROM city WHERE name LIKE = 'San%';
                                           ^
carmen=# SELECT * FROM city WHERE name ILIKE 'san%';SELECT name FROM city WHERE name LIKE 'San%';^Z
[1]  + 1516 suspended  psql
➜  ~ psql
psql (16.6 (Ubuntu 16.6-1.pgdg24.04+1))
Type "help" for help.

gerena13=# \c carmen
You are now connected to database "carmen" as user "gerena13".
carmen=# SELECT name FROM city WHERE name LIKE 'San%';
carmen=# SELECT name FROM city WHERE name LIKE 'Serra%';
    name
------------
 Serra
 Serravalle
(2 rows)

carmen=# SELECT * FROM city WHERE name LIKE 'San%';
carmen=# SELECT * FROM country WHERE capital LIKE 'Bras%';
ERROR:  operator does not exist: integer ~~ unknown
LINE 1: SELECT * FROM country WHERE capital LIKE 'Bras%';
                                            ^
HINT:  No operator matches the given name and argument types. You might need to add explicit type casts.
carmen=#
carmen=# SELECT * FROM country WHERE capital LIKE 'Bras%';
ERROR:  operator does not exist: integer ~~ unknown
LINE 1: SELECT * FROM country WHERE capital LIKE 'Bras%';
                                            ^
HINT:  No operator matches the given name and argument types. You might need to add explicit type casts.
carmen=# SELECT * FROM country WHERE capital ='Brasilia';
ERROR:  invalid input syntax for type integer: "Brasilia"
LINE 1: SELECT * FROM country WHERE capital ='Brasilia';
                                             ^
carmen=# SELECT * FROM country WHERE capital ='Brasilia';
ERROR:  invalid input syntax for type integer: "Brasilia"
LINE 1: SELECT * FROM country WHERE capital ='Brasilia';
                                             ^
carmen=# SELECT * FROM country WHERE capital = 'Brasilia';
ERROR:  invalid input syntax for type integer: "Brasilia"
LINE 1: SELECT * FROM country WHERE capital = 'Brasilia';
                                              ^
carmen=#
carmen=# SELECT * FROM country WHERE capital = 'Brasilia';
ERROR:  invalid input syntax for type integer: "Brasilia"
LINE 1: SELECT * FROM country WHERE capital = 'Brasilia';
                                              ^
carmen=# SELECT * FROM country WHERE name = 'Brazil';
carmen=# SELECT * FROM city WHERE population = 91085;
 id | name | countrycode | district | population
----+------+-------------+----------+------------
(0 rows)

carmen=# SELECT * FROM city WHERE population = 91086;
 id | name | countrycode | district | population
----+------+-------------+----------+------------
(0 rows)

carmen=# SELECT * FROM city WHERE population = 91084;
  id  |     name     | countrycode |  district  | population
------+--------------+-------------+------------+------------
 4060 | Santa Monica | USA         | California |      91084
(1 row)
