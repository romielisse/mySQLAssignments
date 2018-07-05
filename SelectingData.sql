-- Write a query that finds all pets older than 10 years. 
select * from pet
where age > 10

Write a query to find all people younger than you. 
select * from person
where age < 10

-- Do one that's older. 
select * from person
where age > 10

-- Write a query that uses more than one test in the WHERE clause using the AND to write it. For example, WHERE first_name = "Dave" AND age > 30.
select * pet
where breed = 'poodle' and age < 4

-- Do another query that searches for rows using 3 columns and uses both AND and OR operators.
select first_name, last_name, name
from person, pet
where (breed = 'poodle' or breed = 'pom') and pet.age > 1