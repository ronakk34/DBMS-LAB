mysql> create database company_data;
Query OK, 1 row affected (0.01 sec)
mysql> use company_data;
Database changed
mysql> create table salesmen(
    -> sid varchar(5) primary key,
    -> sname varchar(20),
    -> city varchar(15),
    -> salary integer(5),
    -> product varchar(20),
    -> tgttoget integer(5),
    -> comm integer(5)
    -> );
mysql> describe salesmen;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| sid      | varchar(5)  | NO   | PRI | NULL    |       |
| sname    | varchar(20) | YES  |     | NULL    |       |
| city     | varchar(15) | YES  |     | NULL    |       |
| salary   | int         | YES  |     | NULL    |       |
| product  | varchar(20) | YES  |     | NULL    |       |
| tgttoget | int         | YES  |     | NULL    |       |
| comm     | int         | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)
Query OK, 0 rows affected, 3 warnings (0.03 sec)
mysql> create table customers(
    -> cid varchar(5) primary key,
    -> cname varchar(20),
    -> city varchar(20),
    -> state varchar(15),
    -> pincode integer(8),
    -> product varchar(20),
    -> class char(1) default 'A'
    -> );
Query OK, 0 rows affected, 1 warning (0.02 sec)
mysql> describe customers;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| cid     | varchar(5)  | NO   | PRI | NULL    |       |
| cname   | varchar(20) | YES  |     | NULL    |       |
| city    | varchar(20) | YES  |     | NULL    |       |
| state   | varchar(15) | YES  |     | NULL    |       |
| pincode | int         | YES  |     | NULL    |       |
| product | varchar(20) | YES  |     | NULL    |       |
| class   | char(1)     | YES  |     | A       |       |
+---------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)
mysql> CREATE TABLE orders (
    ->     oid VARCHAR(5) PRIMARY KEY,
    ->     cid VARCHAR(5),
    ->     sid VARCHAR(5),
    ->     product VARCHAR(20),
    ->     qty INT,
    ->     odate TEXT,
    ->     o_amt DECIMAL(10,2),
    ->     FOREIGN KEY (cid) REFERENCES customers(cid),
    ->     FOREIGN KEY (sid) REFERENCES salesmen(sid),
    ->     CHECK (o_amt >= 0)
    -> );
Query OK, 0 rows affected (0.03 sec)
mysql> describe orders;
+---------+---------------+------+-----+---------+-------+
| Field   | Type          | Null | Key | Default | Extra |
+---------+---------------+------+-----+---------+-------+
| oid     | varchar(5)    | NO   | PRI | NULL    |       |
| cid     | varchar(5)    | YES  | MUL | NULL    |       |
| sid     | varchar(5)    | YES  | MUL | NULL    |       |
| product | varchar(20)   | YES  |     | NULL    |       |
| qty     | int           | YES  |     | NULL    |       |
| odate   | text          | YES  |     | NULL    |       |
| o_amt   | decimal(10,2) | YES  |     | NULL    |       |
+---------+---------------+------+-----+---------+-------+
7 rows in set (0.00 sec)
mysql>