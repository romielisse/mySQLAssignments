use customers;

-- Write a sql statement that will return the people who are either ATF Agents or who work at Trak Auto?
select fullname, position, company
from customers
inner join company on customers.companyid = company.companyid
where position = 'atf agent' or company = 'trak auto'; 

-- Does Trak Auto actually employ any ATF Agents?
-- Yes, there is one person (Robert Lanham) who is an ATF Agent at Trak Auto
select fullname, position, company
from customers
inner join company on customers.companyid = company.companyid
where position = 'atf agent' and company = 'trak auto' 
