create database books;
use books;

-- create book table
create table Book(
	BookID integer not null primary key auto_increment,
    SKU varchar(25),
    Title varchar(50),
    Author varchar(50),
    Description varchar(255),
    Price double
);

-- insert values into book table
insert into book (sku, title, author, description, price) values ('Java1001','Head First Java','Kathy Sierra and Bert Bates','Easy to read Java workbook',47.50);
insert into book (sku, title, author, description, price) values ('Java1002','Thinking in Java','Bruce Eckel','	Details about Java under the hood',20.00);
insert into book (sku, title, author, description, price) values ('Orcl1003','OCP: Oracle Certified Professional Java SE','Jeanne Boyarsky','Everything you need to know in one place',	45.00);
insert into book (sku, title, author, description, price) values ('Python1004','Automate the Boring Stuff with Python','Al Sweigart','Fun with Python',10.50);
insert into book (sku, title, author, description, price) values ('Zombie1005','The Maker\'s Guide to the Zombie Apocalypse','Simon Monk','	Defend Your Base with Simple Circuits, Arduino, and Raspberry Pi',16.50);
insert into book (sku, title, author, description, price) values ('Rasp1006','Raspberry Pi Projects for the Evil Genius','Donald Norris','A dozen fiendishly fun projects for the Raspberry Pi!',14.75);
    
