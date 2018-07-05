-- 1.

insert into person_pet (person_id, pet_id) values (1,2);
insert into person_pet (person_id, pet_id) values (3,1);
insert into person_pet (person_id, pet_id) values (4,3);

-- 2. Yes, in the case of a family, a pet could be owned by more than one person. The person_pet table currently has a composite primary key of the person_id and pet_id. So, we can have records for each member of the family and the same pet.

-- 3. It would still be better to keep the original design because a person can have multiple pets. You would end up with a lot of records in the person table with the same data in every column except for the pet_id column which would make looking at the table data convoluted. Also, if an update needed to be made to the spelling of a person's name, and if that person had multiple pets, all those records would need to be updated in the Person table.