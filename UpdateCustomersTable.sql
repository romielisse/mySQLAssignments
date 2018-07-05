use customers;

-- List all the people in the customer's table who's last name is Smith
select firstname, lastname from customers
where lastname = 'smith'
order by firstname;

-- List all the customers and their employers and positions that live in Toledo
select fullname, city, company, position
from customers
inner join company on customers.CompanyID = company.companyid
where city = 'toledo';

-- List all the customers and their employers and positions that live in Virginia Beach
select fullname, city, company, position
from customers
inner join company on customers.CompanyID = company.companyid
where city = 'virginia beach';

-- Which is the most popular employer in our database? (hint: use select count(*) ....)
-- Olson Electronics ans Thriftway Food Mart are the most popular companies
select company, count(customers.companyid) as num_employees
from customers
inner join company on customers.CompanyID = company.companyid
group by customers.companyid
order by num_employees desc;

-- Which is the most populated state in our database?
-- California is the most populated
select state, count(state) as population
from customers
group by state
order by population desc;

-- Change the name of Paula Hill of Anaheim, CA. She just got married to Mr. Smith so she is now Paula Smith.
select * from customers
where firstname = 'paula' and lastname = 'hill';

update customers
set lastname = 'Smith', fullname = 'Paula Smith', title = 'Mrs'
where firstname = 'paula' and lastname = 'smith';

select * from customers
where firstname = 'paula' and lastname = 'smith';

-- Vanessa Brown also married Mr. Smith (not the same guy). Update her record as well.
select * from customers
where firstname = 'vanessa' and lastname = 'brown';

update customers
set lastname = 'Smith', fullname = 'Vanessa Smith', title = 'Mrs'
where firstname = 'vanessa' and lastname = 'brown';

select * from customers
where firstname = 'vanessa' and lastname = 'smith';

-- Now I want to know how many people in the database are named Smith?
select count(lastname)
from customers
where lastname = 'smith';

-- How many people have last names beginning with S? We can use the LIKE operator to determine this. The following statement will work: Select * from customers where LastName like 'S%'; The percent sign is a wildcard in most databases.
select count(lastname) from customers where LastName like 'S%';
