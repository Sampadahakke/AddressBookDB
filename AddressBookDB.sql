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
---------------------------UC4-Editing existing contacts------------------------------
Update AddressBook set PhoneNumber=9765721521 where FirstName ='Venkatesh'
Update AddressBook set LastName='Patil' where  FirstName='Dhanshree'
Select * from AddressBook
--------------------------UC5-Delete Existing Contact----------------------------------
Delete from AddressBook where FirstName='Sampada' And LastName='Hakke'
Select * from AddressBook
-----------------------UC6-Retrieve person by city or state-----------------------------
Select * from AddressBook where City='Sangli' or State='Maharashtra'
Select * from AddressBook
-------------------------------UC7-Size of addressbokk----------------------------------
Select city, Count(City) from AddressBook where City='Sangli' Group by city;
Select state ,Count(State) from AddressBook where State='Maharashtra' Group by state;
-----------------------------UC8-Sorted alphabetically----------------------------------
Select * from AddressBook where City='Sangli' order by FirstName;
-------------------------------UC9-Add Type And Name--------------------------------------
Alter Table AddressBook Add 
BookName varchar(20),
ContactType varchar(20);

Update AddressBook set ContactType = 'Friends' where  FirstName in ('Sue','Mike');
Update AddressBook set ContactType = 'Professional' where firstname in ('John','Liz');
Update AddressBook set ContactType = 'Family' where firstname in ('Meg');


Select ContactType , Count(ContactType) from AddressBook where ContactType = 'Family' Group by ContactType;
Select ContactType , Count(ContactType) from AddressBook where ContactType = 'Professional' Group by ContactType;
Select ContactType , Count(ContactType) from AddressBook where ContactType = 'Family' Group by ContactType;

Update AddressBook set FirstName = 'Sampada' where



