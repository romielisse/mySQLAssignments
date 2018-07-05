CREATE TABLE pet (
id INTEGER PRIMARY KEY auto_increment,
name VARCHAR(50),
breed VARCHAR(50),
age INTEGER,
dead INTEGER
);

CREATE TABLE person_pet (
person_id INTEGER,
pet_id INTEGER,
foreign key(person_id) references person(id),
foreign key(pet_id) references pet(id)
);

alter table person_pet
add primary key(person_id, pet_id)

1. Each person can own zero or many pets. If the third relation table was removed and the pet_id was placed in the person table to associate the person with their pets, you could have multiple rows in the person table with all the same data in all the rows with the exception of the pet_id. This creates duplicate data that takes up space.

2. You can add more than one row in in person_pet. To record the crazy cat lady with 50 cats, you would create one record in the person table, 50 records in the pet table (one for each pet), and 50 records in the person_pet table (all with the same person id generated from the record in the person table) and then the 50 unique IDs for each record generated in the pet table.

3. 

create table car(
id integer not null primary key auto_increment,
car_brand varchar(25),
car_model varchar(25)
);

create table person_car(
person_id integer,
car_id integer,
foreign key(person_id) references person(id),
foreign key(car_id) references car(id),
primary key(person_id, car_id)
);