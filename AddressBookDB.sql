---------------------UC1-Creating Addressbook database--------------------
Create Database AddressBookDB;
Use AddressBookDB;
----------------------UC2-Creating Addressbook table-----------------------
Create Table AddressBook
(
  FirstName varchar(50) NOT NULL,
  LastName varchar(50),
  Address varchar(250),
  City varchar(50),
  State varchar(50),
  Zip int,
  PhoneNumber bigint,
)
Select * from AddressBook
--------------------UC3-Inserting new contacts in addressbook----------------------
Insert into AddressBook (FirstName,LastName,Address,City,State,Zip,PhoneNumber) Values
('Sampada','Hakke','Sangli','Sangli','Maharashtra',416416,8421729091),
('Shubhada','Patil','Pune','Pune','Maharashtra',416308,9256342510),
('Venkatesh','Gavade','Kolhapur','Kolhapur','Maharashtra',416404,9256245320),
('Dhanshree','Hakke','Sangli','Sangli','Maharashtra',416416,8421729091)


