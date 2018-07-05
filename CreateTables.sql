create table person(
id integer not null primary key auto_increment,
first_name varchar(50),
last_name varchar(50),
age integer);

insert into person (first_name, last_name, age) values ("John", "Smith", 20);
insert into person (first_name, last_name, age) values ("May", "Jane", 20);

select * from person

alter table person 
add phone varchar(25);

alter table person
add email varchar(50);