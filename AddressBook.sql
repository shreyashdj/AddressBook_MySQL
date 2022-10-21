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

-- UC-6 : retrieve contacts from city or state
select * from addressbook where city = "sangli";
select * from addressbook where state = "maharashtra";
select * from addressbook where city = "satara" or state = "uttar pradesh";

-- UC-7 : counting number of Contacts in different cities and state
select city, count(firstName) from addressbook group by city;
select state, count(firstName) from addressbook group by state;

-- UC-8 : sort contacts alphabetically using firstName for specific city
select * from addressbook where city = "sangli" order by firstName;

-- UC-9 : alter table to add type of contact to the table
alter table addressbook add type varchar(50);
-- updating contacts to set the type of contact
update addressbook set type = "family" where firstName = "shreyash" or firstName = "suyog";
update addressbook set type = "friends" where firstName = "omkar" or firstName = "pranita" or firstName = "ganesh";
update addressbook set type = "office" where firstName = "yogesh" or firstName = "abhishek";

-- UC-10 : counting number of Contacts in by type
select type, count(firstName) from addressbook group by type;

-- UC-11 : Adding contact to both family and friends type
insert into addressbook values("family", "nilesh", "gurav", "sahara", "agra", "uttar pradesh", "283105", "9484761997", "nilesh15@gmail.com"),
("friends", "nilesh", "gurav", "sahara", "agra", "uttar pradesh", "283105", "9484761997", "nilesh15@gmail.com");