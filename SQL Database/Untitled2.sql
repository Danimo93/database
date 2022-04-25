
# Question 1
create table Person(
ID int auto_increment,
SocialSecurityNumber char (11) not null unique,
Name varchar (100) default 'unknown',
EMail varchar (100)  unique,
primary key (ID));

desc person;

select * from person;

# Question 2

insert into Person (SocialSecurityNumber, Name, EMail) 
value ('12345678901', 'Ola Normann', 'ola@normann.no');

# Question 3

alter table Person
add Birthday date;

# Question 4

insert into Person(SocialSecurityNumber)
value('98765432109'); 

select * from Person;

# Question 5 

update Person
set Birthday = '1990-01-01'
where SocialSecurityNumber = '98765432109'; 



# Question 6

insert into Person (SocialSecurityNumber, Name, EMail, Birthday) 
value ('01129354321', 'Daniel Peter', 
'daniel@peter.no', '1993-12-01');

# Question 7

create table Email(
Address varchar (75) not null unique,
Type varchar (50),
Person_ID int not null,
primary key (Address),
FOREIGN KEY (Person_ID) REFERENCES Person (ID));


select * from Person;


# Question 8
INSERT INTO Email (Person_ID, Address)
SELECT ID, Email
FROM Person
WHERE Email is not null;


# Question 9

alter table Person drop EMail; 



# Question 10

create table personCopy(
ID int auto_increment,
SocialSecurityNumber char (11) not null unique,
Name varchar (100) default 'unknown',
EMail varchar (100)  unique,
primary key (ID));

drop table personCopy;


# Question 11

select name, date_format(Birthday, '%d-%m-%Y')
from Person;


select * from Person;

update Person
set Birthday = str_to_date('20.02.1912', '%d.%m.%Y')
where Name = 'Ola Normann';

# Question 12

Select max(id) from city;

select * from information_schema.tables 
WHERE table_schema = 'world';


# Question 13

DELETE FROM city WHERE name = 'Bærum';

select * from city where name = 'Bærum';










