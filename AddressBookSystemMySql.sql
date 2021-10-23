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












