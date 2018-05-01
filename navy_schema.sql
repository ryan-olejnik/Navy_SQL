SELECT 'hello, PG';
drop table if exists sailors CASCADE;
drop table if exists tours_of_duty CASCADE;
drop table if exists ship CASCADE;
drop table if exists fleet CASCADE;

CREATE TABLE sailors (
  id INT PRIMARY KEY,
  name TEXT,
  birthdate DATE,
  gender TEXT,
  age INTEGER
);

CREATE TABLE ship (
  id INTEGER PRIMARY KEY,
  name TEXT,
  fleet_id TEXT
);

CREATE TABLE tours_of_duty (
  sailor_id INT REFERENCES sailors(id),
  ship_id INT REFERENCES ship(id),
  rank TEXT,
  length_of_duty TEXT
);


CREATE TABLE fleet (
  id INTEGER PRIMARY KEY,
  name TEXT,
  admiral TEXT
);
