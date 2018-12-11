create database testDB;

use testDB;
show databases;
show tables;

CREATE TABLE Persons (
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

select * from Persons;

insert into Persons (LastName, FirstName, Address, City) values ('Hansen', 'Bent', 'Address', 'KBH');

drop table Persons