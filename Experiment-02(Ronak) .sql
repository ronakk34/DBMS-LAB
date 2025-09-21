Experiment-02..



mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| bankdb             |
| company_data       |
| cp_dataa           |
| information_schema |
| mysql              |
| performance_schema |
| redbus             |
| sakila             |
| school             |
| sys                |
| world              |
+--------------------+
11 rows in set (0.00 sec)

mysql> use company_data;
Database changed
mysql> show tables;
+------------------------+
| Tables_in_company_data |
+------------------------+
| customers              |
| orders                 |
| salesmen               |
+------------------------+
3 rows in set (0.00 sec)

mysql> INSERT INTO salesmen (sid, sname, city, comm)
    -> VALUES
    ->     ("s101","Ajay Patel","Ahmedabad","1200"),
    ->     ("s102","Chintan Shah","Baroda","1500"),
    ->     ("s103","Vinay Mehra","Pune","1200"),
    ->     ("s104","Jay Pandey","Surat","800"),
    ->     ("s105","Jimit Dave","Mumbai","300"),
    ->     ("s106","Manan Gandhi","Ahmedabad","1200");
Query OK, 6 rows affected (0.03 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> select * from salesmen;
+------+--------------+-----------+--------+---------+----------+------+
| sid  | sname        | city      | salary | product | tgttoget | comm |
+------+--------------+-----------+--------+---------+----------+------+
| s101 | Ajay Patel   | Ahmedabad |   NULL | NULL    |     NULL | 1200 |
| s102 | Chintan Shah | Baroda    |   NULL | NULL    |     NULL | 1500 |
| s103 | Vinay Mehra  | Pune      |   NULL | NULL    |     NULL | 1200 |
| s104 | Jay Pandey   | Surat     |   NULL | NULL    |     NULL |  800 |
| s105 | Jimit Dave   | Mumbai    |   NULL | NULL    |     NULL |  300 |
| s106 | Manan Gandhi | Ahmedabad |   NULL | NULL    |     NULL | 1200 |
+------+--------------+-----------+--------+---------+----------+------+
6 rows in set (0.00 sec)
mysql> INSERT INTO customers (cid, cname, city, class) VALUES
    ->     ("c301","Nirav Patel","Nadiad","B"),
    ->     ("c302","Kiran Dev","Delhi","A"),
    ->     ("c303","Sapan Shah","Bangalore","B"),
    ->     ("c304","Saurabh Mehta","Baroda","C"),
    ->     ("c305","Smriti Mishra","Ahmedabad","B"),
    ->     ("c306","Harshal Pandey","Mumbai","A"),
    ->     ("c307","Sunil Gandhi","Baroda","B"),
    ->     ("c308","Bimal Thakkar","Surat","C");
Query OK, 8 rows affected (0.01 sec)
Records: 8  Duplicates: 0  Warnings: 0

mysql> select * from customers;
+------+----------------+-----------+-------+---------+---------+-------+
| cid  | cname          | city      | state | pincode | product | class |
+------+----------------+-----------+-------+---------+---------+-------+
| c301 | Nirav Patel    | Nadiad    | NULL  |    NULL | NULL    | B     |
| c302 | Kiran Dev      | Delhi     | NULL  |    NULL | NULL    | A     |
| c303 | Sapan Shah     | Bangalore | NULL  |    NULL | NULL    | B     |
| c304 | Saurabh Mehta  | Baroda    | NULL  |    NULL | NULL    | C     |
| c305 | Smriti Mishra  | Ahmedabad | NULL  |    NULL | NULL    | B     |
| c306 | Harshal Pandey | Mumbai    | NULL  |    NULL | NULL    | A     |
| c307 | Sunil Gandhi   | Baroda    | NULL  |    NULL | NULL    | B     |
| c308 | Bimal Thakkar  | Surat     | NULL  |    NULL | NULL    | C     |
+------+----------------+-----------+-------+---------+---------+-------+
8 rows in set (0.00 sec)
mysql> INSERT INTO orders (oid, cid, sid, qty, odate, o_amt) VALUES
    ->     ("o501","c302","s102",10,"2009-01-02",700000),
    ->     ("o502","c301","s105",5,"2009-01-21",10000),
    ->     ("o503","c308","s103",23,"2009-02-10",250000),
    ->     ("o504","c306","s104",31,"2009-02-14",400000),
    ->     ("o505","c306","s102",88,"2009-03-29",100000),
    ->     ("o506","c303","s101",12,"2009-04-15",90000.50),
    ->     ("o507","c304","s105",60,"2009-06-24",7500.75),
    ->     ("o508","c306","s101",35,"2009-09-27",900000),
    ->     ("o509","c302","s102",76,"2009-12-21",205000),
    ->     ("o510","c307","s102",24,"2009-12-30",27800),
    ->     ("o511","c303","s104",50,"2009-12-31",1500);
Query OK, 11 rows affected (0.01 sec)
Records: 11  Duplicates: 0  Warnings: 0

mysql> select * from orders;
+------+------+------+---------+------+------------+-----------+
| oid  | cid  | sid  | product | qty  | odate      | o_amt     |
+------+------+------+---------+------+------------+-----------+
| o501 | c302 | s102 | NULL    |   10 | 2009-01-02 | 700000.00 |
| o502 | c301 | s105 | NULL    |    5 | 2009-01-21 |  10000.00 |
| o503 | c308 | s103 | NULL    |   23 | 2009-02-10 | 250000.00 |
| o504 | c306 | s104 | NULL    |   31 | 2009-02-14 | 400000.00 |
| o505 | c306 | s102 | NULL    |   88 | 2009-03-29 | 100000.00 |
| o506 | c303 | s101 | NULL    |   12 | 2009-04-15 |  90000.50 |
| o507 | c304 | s105 | NULL    |   60 | 2009-06-24 |   7500.75 |
| o508 | c306 | s101 | NULL    |   35 | 2009-09-27 | 900000.00 |
| o509 | c302 | s102 | NULL    |   76 | 2009-12-21 | 205000.00 |
| o510 | c307 | s102 | NULL    |   24 | 2009-12-30 |  27800.00 |
| o511 | c303 | s104 | NULL    |   50 | 2009-12-31 |   1500.00 |
+------+------+------+---------+------+------------+-----------+
11 rows in set (0.00 sec)

mysql>