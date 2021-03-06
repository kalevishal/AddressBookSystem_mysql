***********************************************************
      ********"Welcome to mysql database"********

#UC1 - Creating Database

mysql> CREATE DATABASE AddressBookService;
Query OK, 1 row affected (0.81 sec)

mysql> use AddressBookservice
Database changed

#UC2 - Creating Address Book Table

mysql> CREATE TABLE Address_Book_Table
    -> (FirstName VARCHAR(150) NOT NULL,
    -> LastName VARCHAR(150) NOT NULL,
    -> Address VARCHAR(150) NOT NULL,
    -> City VARCHAR(150) NOT NULL,
    -> State VARCHAR(150) NOT NULL,
    -> Zip INT NOT NULL,
    -> PhoneNumber INT NOT NULL,
    -> Email VARCHAR(50) NOT NULL
    -> );
Query OK, 0 rows affected (2.93 sec)

mysql> DESCRIBE Address_Book_Table;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| FirstName   | varchar(150) | NO   |     | NULL    |       |
| LastName    | varchar(150) | NO   |     | NULL    |       |
| Address     | varchar(150) | NO   |     | NULL    |       |
| City        | varchar(150) | NO   |     | NULL    |       |
| State       | varchar(150) | NO   |     | NULL    |       |
| Zip         | int          | NO   |     | NULL    |       |
| PhoneNumber | int          | NO   |     | NULL    |       |
| Email       | varchar(50)  | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
8 rows in set (0.33 sec)

#UC3 - Adding Contacts

mysql> INSERT INTO Address_Book_Table VALUES
    -> ('Vishal','kale','211D,abc colony','shirdi','Maharashtra','423109','90215','vk@gmail.com'),
    -> ('Utkarsh','Mishra','55B,xyz colony','zhasi','UtarPradesh','555104','778899','um@gmail.com'),
    -> ('Shivraj','Jadhav','002C,pqr colony','solapur','Maharashtra','741111','55662','sj@gmail.com'),
    -> ('Satish','Gupta','11VB,sai colony','hyderabad','Telangana','641122','89552','sg@gmail.com');
Query OK, 4 rows affected (0.33 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from Address_Book_Table;
+-----------+----------+-----------------+-----------+-------------+--------+-------------+--------------+
| FirstName | LastName | Address         | City      | State       | Zip    | PhoneNumber | Email        |
+-----------+----------+-----------------+-----------+-------------+--------+-------------+--------------+
| Vishal    | kale     | 211D,abc colony | shirdi    | Maharashtra | 423109 |       90215 | vk@gmail.com |
| Utkarsh   | Mishra   | 55B,xyz colony  | zhasi     | UtarPradesh | 555104 |      778899 | um@gmail.com |
| Shivraj   | Jadhav   | 002C,pqr colony | solapur   | Maharashtra | 741111 |       55662 | sj@gmail.com |
| Satish    | Gupta    | 11VB,sai colony | hyderabad | Telangana   | 641122 |       89552 | sg@gmail.com |
+-----------+----------+-----------------+-----------+-------------+--------+-------------+--------------+
4 rows in set (0.00 sec)

#UC4 -  Editing existing contact by first name


mysql> UPDATE Address_Book_Table
    -> SET Address='sai sagar housing society',state='MH'
    -> WHERE FirstName='Vishal';
Query OK, 1 row affected (0.15 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from Address_Book_Table;
+-----------+----------+---------------------------+-----------+-------------+--------+-------------+--------------+
| FirstName | LastName | Address                   | City      | State       | Zip    | PhoneNumber | Email        |
+-----------+----------+---------------------------+-----------+-------------+--------+-------------+--------------+
| Vishal    | kale     | sai sagar housing society | shirdi    | MH          | 423109 |       90215 | vk@gmail.com |
| Utkarsh   | Mishra   | 55B,xyz colony            | zhasi     | UtarPradesh | 555104 |      778899 | um@gmail.com |
| Shivraj   | Jadhav   | 002C,pqr colony           | solapur   | Maharashtra | 741111 |       55662 | sj@gmail.com |
| Satish    | Gupta    | 11VB,sai colony           | hyderabad | Telangana   | 641122 |       89552 | sg@gmail.com |
+-----------+----------+---------------------------+-----------+-------------+--------+-------------+--------------+
4 rows in set (0.02 sec)

 #UC5 - Deleting contact using first name

mysql> DELETE FROM Address_Book_Table WHERE FirstName='Shivraj';
Query OK, 1 row affected (0.13 sec)

mysql> select * from Address_Book_Table;
+-----------+----------+---------------------------+-----------+-------------+--------+-------------+--------------+
| FirstName | LastName | Address                   | City      | State       | Zip    | PhoneNumber | Email        |
+-----------+----------+---------------------------+-----------+-------------+--------+-------------+--------------+
| Vishal    | kale     | sai sagar housing society | shirdi    | MH          | 423109 |       90215 | vk@gmail.com |
| Utkarsh   | Mishra   | 55B,xyz colony            | zhasi     | UtarPradesh | 555104 |      778899 | um@gmail.com |
| Satish    | Gupta    | 11VB,sai colony           | hyderabad | Telangana   | 641122 |       89552 | sg@gmail.com |
+-----------+----------+---------------------------+-----------+-------------+--------+-------------+--------------+
3 rows in set (0.00 sec)

 #UC6 - ability to retrive person belonging to a city


mysql> SELECT * FROM Address_Book_Table WHERE City='hyderabad';
+-----------+----------+-----------------+-----------+-----------+--------+-------------+--------------+
| FirstName | LastName | Address         | City      | State     | Zip    | PhoneNumber | Email        |
+-----------+----------+-----------------+-----------+-----------+--------+-------------+--------------+
| Satish    | Gupta    | 11VB,sai colony | hyderabad | Telangana | 641122 |       89552 | sg@gmail.com |
+-----------+----------+-----------------+-----------+-----------+--------+-------------+--------------+
1 row in set (0.00 sec)

#UC7 - Ability to get the size of the address book by the city


mysql> SELECT COUNT(City) FROM Address_Book_Table;
+-------------+
| COUNT(City) |
+-------------+
|           3 |
+-------------+
1 row in set (0.14 sec)

#UC8 - Ability to retrieve entries in alphabetical order by First Name

mysql> select * from Address_Book_Table;
+-----------+----------+---------------------------+-----------+-------------+--------+-------------+--------------+
| FirstName | LastName | Address                   | City      | State       | Zip    | PhoneNumber | Email        |
+-----------+----------+---------------------------+-----------+-------------+--------+-------------+--------------+
| Vishal    | kale     | sai sagar housing society | shirdi    | MH          | 423109 |       90215 | vk@gmail.com |
| Utkarsh   | Mishra   | 55B,xyz colony            | zhasi     | UtarPradesh | 555104 |      778899 | um@gmail.com |
| Satish    | Gupta    | 11VB,sai colony           | hyderabad | Telangana   | 641122 |       89552 | sg@gmail.com |
+-----------+----------+---------------------------+-----------+-------------+--------+-------------+--------------+
3 rows in set (0.00 sec)

mysql> select * from Address_Book_Table where State='MH' order by FirstName ASC;
+-----------+----------+---------------------------+--------+-------+--------+-------------+--------------+
| FirstName | LastName | Address                   | City   | State | Zip    | PhoneNumber | Email        |
+-----------+----------+---------------------------+--------+-------+--------+-------------+--------------+
| Vishal    | kale     | sai sagar housing society | shirdi | MH    | 423109 |       90215 | vk@gmail.com |
+-----------+----------+---------------------------+--------+-------+--------+-------------+--------------+
1 row in set (0.03 sec)

mysql> select * from Address_Book_Table order by FirstName ASC;
+-----------+----------+---------------------------+-----------+-------------+--------+-------------+--------------+
| FirstName | LastName | Address                   | City      | State       | Zip    | PhoneNumber | Email        |
+-----------+----------+---------------------------+-----------+-------------+--------+-------------+--------------+
| Satish    | Gupta    | 11VB,sai colony           | hyderabad | Telangana   | 641122 |       89552 | sg@gmail.com |
| Utkarsh   | Mishra   | 55B,xyz colony            | zhasi     | UtarPradesh | 555104 |      778899 | um@gmail.com |
| Vishal    | kale     | sai sagar housing society | shirdi    | MH          | 423109 |       90215 | vk@gmail.com |
+-----------+----------+---------------------------+-----------+-------------+--------+-------------+--------------+
3 rows in set (0.00 sec)


#UC9 - Ability to identify each Address Book with name and Type.


mysql> ALTER TABLE Address_Book_Table ADD Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY AFTER Email;
Query OK, 0 rows affected (3.35 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from Address_Book_Table;
+-----------+----------+---------------------------+-----------+-------------+--------+-------------+--------------+----+
| FirstName | LastName | Address                   | City      | State       | Zip    | PhoneNumber | Email        | Id |
+-----------+----------+---------------------------+-----------+-------------+--------+-------------+--------------+----+
| Vishal    | kale     | sai sagar housing society | shirdi    | MH          | 423109 |       90215 | vk@gmail.com |  1 |
| Utkarsh   | Mishra   | 55B,xyz colony            | zhasi     | UtarPradesh | 555104 |      778899 | um@gmail.com |  2 |
| Satish    | Gupta    | 11VB,sai colony           | hyderabad | Telangana   | 641122 |       89552 | sg@gmail.com |  3 |
+-----------+----------+---------------------------+-----------+-------------+--------+-------------+--------------+----+
3 rows in set (0.00 sec)

mysql> alter table Address_Book_Table ADD Type VARCHAR(50) NOT NULL AFTER Id;
Query OK, 0 rows affected (0.50 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> UPDATE Address_Book_Table SET Type ='Family' WHERE Id=1;
Query OK, 1 row affected (0.11 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE Address_Book_Table SET Type ='Family' WHERE Id=2;
Query OK, 1 row affected (0.18 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE Address_Book_Table SET Type ='Freind' WHERE Id=3;
Query OK, 1 row affected (0.20 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from Address_Book_Table;
+-----------+----------+---------------------------+-----------+-------------+--------+-------------+--------------+----+--------+
| FirstName | LastName | Address                   | City      | State       | Zip    | PhoneNumber | Email        | Id | Type   |
+-----------+----------+---------------------------+-----------+-------------+--------+-------------+--------------+----+--------+
| Vishal    | kale     | sai sagar housing society | shirdi    | MH          | 423109 |       90215 | vk@gmail.com |  1 | Family |
| Utkarsh   | Mishra   | 55B,xyz colony            | zhasi     | UtarPradesh | 555104 |      778899 | um@gmail.com |  2 | Family |
| Satish    | Gupta    | 11VB,sai colony           | hyderabad | Telangana   | 641122 |       89552 | sg@gmail.com |  3 | Freind |
+-----------+----------+---------------------------+-----------+-------------+--------+-------------+--------------+----+--------+
3 rows in set (0.00 sec)

mysql> insert into Address_Book_Table(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email,Id,Type) values("Mahesh","Dighe","Rahata","Ahamadnagr","Maharashtra",'425109');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into Address_Book_Table(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email,Id,Type) values("Mahesh","Dighe","Rahata","Ahamadnagr","Maharashtra",'425109','87444','mg@gmail.com','4','Profession');
Query OK, 1 row affected (0.16 sec)

mysql> select * from Address_Book_Table;
+-----------+----------+---------------------------+------------+-------------+--------+-------------+--------------+----+------------+
| FirstName | LastName | Address                   | City       | State       | Zip    | PhoneNumber | Email        | Id | Type       |
+-----------+----------+---------------------------+------------+-------------+--------+-------------+--------------+----+------------+
| Vishal    | kale     | sai sagar housing society | shirdi     | MH          | 423109 |       90215 | vk@gmail.com |  1 | Family     |
| Utkarsh   | Mishra   | 55B,xyz colony            | zhasi      | UtarPradesh | 555104 |      778899 | um@gmail.com |  2 | Family     |
| Satish    | Gupta    | 11VB,sai colony           | hyderabad  | Telangana   | 641122 |       89552 | sg@gmail.com |  3 | Freind     |
| Mahesh    | Dighe    | Rahata                    | Ahamadnagr | Maharashtra | 425109 |       87444 | mg@gmail.com |  4 | Profession |
+-----------+----------+---------------------------+------------+-------------+--------+-------------+--------------+----+------------+
4 rows in set (0.02 sec)

mysql> alter table Address_Book_Table Add (AddressBook varchar(50) not null);
Query OK, 0 rows affected (2.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> UPDATE Address_Book_Table SET AddressBook = 'contact 1' WHERE Id=1;
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE Address_Book_Table SET AddressBook = 'contact 3' WHERE Id=3;
Query OK, 1 row affected (0.19 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE Address_Book_Table SET AddressBook = 'contact 2' WHERE Id=2;
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE Address_Book_Table SET AddressBook = 'contact 4' WHERE Id=4;
Query OK, 1 row affected (0.27 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from Address_Book_Table;
+-----------+----------+---------------------------+------------+-------------+--------+-------------+--------------+----+------------+-------------+
| FirstName | LastName | Address                   | City       | State       | Zip    | PhoneNumber | Email        | Id | Type       | AddressBook |
+-----------+----------+---------------------------+------------+-------------+--------+-------------+--------------+----+------------+-------------+
| Vishal    | kale     | sai sagar housing society | shirdi     | MH          | 423109 |       90215 | vk@gmail.com |  1 | Family     | contact 1   |
| Utkarsh   | Mishra   | 55B,xyz colony            | zhasi      | UtarPradesh | 555104 |      778899 | um@gmail.com |  2 | Family     | contact 2   |
| Satish    | Gupta    | 11VB,sai colony           | hyderabad  | Telangana   | 641122 |       89552 | sg@gmail.com |  3 | Freind     | contact 3   |
| Mahesh    | Dighe    | Rahata                    | Ahamadnagr | Maharashtra | 425109 |       87444 | mg@gmail.com |  4 | Profession | contact 4   |
+-----------+----------+---------------------------+------------+-------------+--------+-------------+--------------+----+------------+-------------+
4 rows in set (0.00 sec)

#UC10 count by type.

mysql> select type, count(FirstName) from Address_Book_Table group by type;
+------------+------------------+
| type       | count(FirstName) |
+------------+------------------+
| Family     |                2 |
| Freind     |                1 |
| Profession |                1 |
+------------+------------------+
3 rows in set (0.10 sec)

#UC11 - Ability to add person to both Friend and Family


mysql> insert into Address_Book_Table(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email,Id,Type,AddressBook) values('abhishek','mahale','44A, xy colony','yeola','maha','412122','8855264','am@gmail.com','5','family','contact 5');
Query OK, 1 row affected (0.17 sec)

mysql> select * from Address_Book_Table;
+-----------+----------+---------------------------+------------+-------------+--------+-------------+--------------+----+------------+-------------+
| FirstName | LastName | Address                   | City       | State       | Zip    | PhoneNumber | Email        | Id | Type       | AddressBook |
+-----------+----------+---------------------------+------------+-------------+--------+-------------+--------------+----+------------+-------------+
| Vishal    | kale     | sai sagar housing society | shirdi     | MH          | 423109 |       90215 | vk@gmail.com |  1 | Family     | contact 1   |
| Utkarsh   | Mishra   | 55B,xyz colony            | zhasi      | UtarPradesh | 555104 |      778899 | um@gmail.com |  2 | Family     | contact 2   |
| Satish    | Gupta    | 11VB,sai colony           | hyderabad  | Telangana   | 641122 |       89552 | sg@gmail.com |  3 | Freind     | contact 3   |
| Mahesh    | Dighe    | Rahata                    | Ahamadnagr | Maharashtra | 425109 |       87444 | mg@gmail.com |  4 | Profession | contact 4   |
| abhishek  | mahale   | 44A, xy colony            | yeola      | maha        | 412122 |     8855264 | am@gmail.com |  5 | family     | contact 5   |
+-----------+----------+---------------------------+------------+-------------+--------+-------------+--------------+----+------------+-------------+
5 rows in set (0.11 sec)








