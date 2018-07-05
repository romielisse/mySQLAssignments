-- 1.

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

-- 2.
-- Dave is person_id 3, Fluffy is pet_id 1, Melissa is person_id 6
delete from person_pet where person_id=3 AND pet_id=1;
update pet set dead=1 where id=1;
insert into person_pet (person_id, pet_id) values (6,1);

-- 3.
alter table pet add original_owner_id integer;
alter table pet add constraint fk_pet_id_person_id foreign key (original_owner_id) references person(id)