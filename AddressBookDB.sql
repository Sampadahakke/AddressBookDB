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

