-- UC-1 : create AddressBook database
create database AddressBook;

-- UC-2 : create AddressBook table
create table AddressBook
(firstName varchar(50), lastName varchar(50), address varchar(50), city varchar(50),
state varchar(50), zip varchar(50), phoneNumber varchar(50), email varchar(50));

-- UC-3 : Inserting values (contacts) in table
insert into addressbook values
("shreyash", "jadhav", "dighanchi", "sangli", "maharashtra", "415315", "9405681097", "shreyash1799@gmail.com"),
("omkar", "bhosale", "mhaswad", "satara", "maharashtra", "415509", "9405973486", "omkar67@gmail.com"),
("yogesh", "shinde", "bisalpur", "agra", "uttar pradesh", "283102", "9405375964", "yogesh22@gmail.com"),
("pranita", "more", "atpadi", "sangli", "maharashtra", "415316", "9405681234", "pranita26@gmail.com"),
("akash", "deshmukh", "sahara", "agra", "uttar pradesh", "283105", "9484761997", "adeshmukh55@gmail.com"),
("suyog", "nikam", "basi", "noida", "uttar pradesh", "201301", "9896481097", "suyog88@gmail.com");

-- UC-4 : edit contact details using name
update addressbook set phoneNumber = "9632170939", email = "yogesh15@gmail.com" where firstName = "yogesh";
update addressbook set phoneNumber = "9178339712" where firstName = "omkar" and lastName = "bhosale";

-- UC-5 : delete contact using name
delete from addressbook where firstName = "akash";