drop table person_pet;
drop table person;
drop table pet;
drop database demo;

CREATE database demo;
use demo;

CREATE TABLE person(
id integer not null primary key auto_increment,
first_name varchar(50),
last_name varchar(50),
age integer,
original_owner_id integer,
foreign key (original_owner_id) references person(id)
) AUTO_INCREMENT=1;

CREATE TABLE pet (
id INTEGER not null PRIMARY KEY auto_increment,
name VARCHAR(50),
breed VARCHAR(50),
age INTEGER,
dead INTEGER
) AUTO_INCREMENT=1;

CREATE TABLE person_pet (
person_id INTEGER,
pet_id INTEGER,
foreign key(person_id) references person(id),
foreign key(pet_id) references pet(id),
primary key(person_id, pet_id)
);

insert into person (first_name, last_name, age) values ("John", "Smith", 20);
insert into person (first_name, last_name, age) values ("May", "Jane", 20);
INSERT INTO person (first_name, last_name, age) VALUES ('Dave', 'Wolfe', 25);
INSERT INTO person (first_name, last_name, age) VALUES ('Jacob', 'Black', 12);
INSERT INTO person (first_name, last_name, age) VALUES ('Julia', 'Childs', 30);
INSERT INTO person (first_name, last_name, age) VALUES ('Melissa', 'Fung', 3);

INSERT INTO pet (name, breed, age, dead) VALUES ("Fluffy", "Unicorn", 1000, 0);
INSERT INTO pet (name, breed, age, dead) VALUES ("Mars", "Poodle", 4, 0);
INSERT INTO pet (name, breed, age, dead) VALUES ("Stripes", "Cat", 2, 0);

insert into person_pet (person_id, pet_id) values (1,2);
insert into person_pet (person_id, pet_id) values (3,1);
insert into person_pet (person_id, pet_id) values (4,3);

delete from person_pet;
delete from pet;

INSERT INTO pet (id, name, breed, age, dead) VALUES (1, "Fluffy", "Unicorn", 1000, 0);
INSERT INTO pet (id, name, breed, age, dead) VALUES (2, "Mars", "Poodle", 4, 0);
INSERT INTO pet (id, name, breed, age, dead) VALUES (3, "Stripes", "Cat", 2, 0);

insert into person_pet (person_id, pet_id) values (1,2);
insert into person_pet (person_id, pet_id) values (3,1);
insert into person_pet (person_id, pet_id) values (4,3);

select * from person;
select * from pet;
select * from person_pet;