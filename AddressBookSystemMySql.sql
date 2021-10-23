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