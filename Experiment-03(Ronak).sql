Experiment-03..(Raunak 245UAI085)

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
11 rows in set (0.03 sec)

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
3 rows in set (0.01 sec)

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

mysql> select * from orders;
+------+------+------+---------+------+------------+-----------+
| oid  | cid  | sid  | product | qty  | odate      | o_amt     |
+------+------+------+---------+------+------------+-----------+
| o501 | c302 | s102 | NULL    |   10 | 2009-01-02 | 770000.00 |
| o502 | c301 | s105 | NULL    |    5 | 2009-01-21 |  16500.00 |
| o503 | c308 | s103 | NULL    |   23 | 2009-02-10 | 275000.00 |
| o504 | c306 | s104 | NULL    |   31 | 2009-02-14 | 435000.00 |
| o505 | c306 | s102 | NULL    |   88 | 2009-03-29 | 105000.00 |
| o506 | c303 | s101 | NULL    |   12 | 2009-04-15 |  99000.55 |
| o507 | c304 | s105 | NULL    |   60 | 2009-06-24 |   8250.83 |
| o508 | c306 | s101 | NULL    |   35 | 2009-09-27 | 985000.00 |
| o509 | c302 | s102 | NULL    |   76 | 2009-12-21 | 225500.00 |
| o510 | c307 | s102 | NULL    |   24 | 2009-12-30 |  30580.00 |
| o511 | c303 | s104 | NULL    |   50 | 2009-12-31 |   1650.00 |
+------+------+------+---------+------+------------+-----------+
11 rows in set (0.00 sec)

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

//Que.1-> Find out the name of all the salesmen having 'a' as the second letter in their names.

mysql> SELECT sname
    -> FROM salesmen
    -> WHERE sname LIKE '_a%';
+--------------+
| sname        |
+--------------+
| Jay Pandey   |
| Manan Gandhi |
+--------------+
2 rows in set (0.00 sec)

//Que.2-> List all the information ofustomers whosestate containsnull value.

mysql> SELECT *
    -> FROM customers
    -> WHERE state IS NULL;
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
8 rows in set (0.01 sec)

//Que.3->List all the information ofcustomers in descending order according to their name.

mysql> SELECT *
    -> FROM customers
    -> ORDER BY cname DESC;
+------+----------------+-----------+-------+---------+---------+-------+
| cid  | cname          | city      | state | pincode | product | class |
+------+----------------+-----------+-------+---------+---------+-------+
| c307 | Sunil Gandhi   | Baroda    | NULL  |    NULL | NULL    | B     |
| c305 | Smriti Mishra  | Ahmedabad | NULL  |    NULL | NULL    | B     |
| c304 | Saurabh Mehta  | Baroda    | NULL  |    NULL | NULL    | C     |
| c303 | Sapan Shah     | Bangalore | NULL  |    NULL | NULL    | B     |
| c301 | Nirav Patel    | Nadiad    | NULL  |    NULL | NULL    | B     |
| c302 | Kiran Dev      | Delhi     | NULL  |    NULL | NULL    | A     |
| c306 | Harshal Pandey | Mumbai    | NULL  |    NULL | NULL    | A     |
| c308 | Bimal Thakkar  | Surat     | NULL  |    NULL | NULL    | C     |
+------+----------------+-----------+-------+---------+---------+-------+
8 rows in set (0.00 sec)

//Que.4->Display the changeable value of O_AMT for existing Table using Update command.

mysql> UPDATE orders
    -> SET o_amt = 15000
    -> WHERE oid = 'o502';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE orders
    -> SET o_amt = o_amt * 1.10;
Query OK, 11 rows affected, 1 warning (0.00 sec)
Rows matched: 11  Changed: 11  Warnings: 1

mysql> SELECT * FROM orders;
+------+------+------+---------+------+------------+-----------+
| oid  | cid  | sid  | product | qty  | odate      | o_amt     |
+------+------+------+---------+------+------------+-----------+
| o501 | c302 | s102 | NULL    |   10 | 2009-01-02 | 770000.00 |
| o502 | c301 | s105 | NULL    |    5 | 2009-01-21 |  16500.00 |
| o503 | c308 | s103 | NULL    |   23 | 2009-02-10 | 275000.00 |
| o504 | c306 | s104 | NULL    |   31 | 2009-02-14 | 440000.00 |
| o505 | c306 | s102 | NULL    |   88 | 2009-03-29 | 110000.00 |
| o506 | c303 | s101 | NULL    |   12 | 2009-04-15 |  99000.55 |
| o507 | c304 | s105 | NULL    |   60 | 2009-06-24 |   8250.83 |
| o508 | c306 | s101 | NULL    |   35 | 2009-09-27 | 990000.00 |
| o509 | c302 | s102 | NULL    |   76 | 2009-12-21 | 225500.00 |
| o510 | c307 | s102 | NULL    |   24 | 2009-12-30 |  30580.00 |
| o511 | c303 | s104 | NULL    |   50 | 2009-12-31 |   1650.00 |
+------+------+------+---------+------+------------+-----------+
11 rows in set (0.00 sec)

mysql> UPDATE orders
    -> SET o_amt = o_amt - 5000
    -> WHERE cid = 'c306';
Query OK, 3 rows affected (0.00 sec)
Rows matched: 3  Changed: 3  Warnings: 0

mysql> SELECT * FROM orders;
+------+------+------+---------+------+------------+-----------+
| oid  | cid  | sid  | product | qty  | odate      | o_amt     |
+------+------+------+---------+------+------------+-----------+
| o501 | c302 | s102 | NULL    |   10 | 2009-01-02 | 770000.00 |
| o502 | c301 | s105 | NULL    |    5 | 2009-01-21 |  16500.00 |
| o503 | c308 | s103 | NULL    |   23 | 2009-02-10 | 275000.00 |
| o504 | c306 | s104 | NULL    |   31 | 2009-02-14 | 435000.00 |
| o505 | c306 | s102 | NULL    |   88 | 2009-03-29 | 105000.00 |
| o506 | c303 | s101 | NULL    |   12 | 2009-04-15 |  99000.55 |
| o507 | c304 | s105 | NULL    |   60 | 2009-06-24 |   8250.83 |
| o508 | c306 | s101 | NULL    |   35 | 2009-09-27 | 985000.00 |
| o509 | c302 | s102 | NULL    |   76 | 2009-12-21 | 225500.00 |
| o510 | c307 | s102 | NULL    |   24 | 2009-12-30 |  30580.00 |
| o511 | c303 | s104 | NULL    |   50 | 2009-12-31 |   1650.00 |
+------+------+------+---------+------+------------+-----------+
11 rows in set (0.00 sec)

//Que.5->To Display the city who’ssname ends to 'a' in customers table.

mysql> SELECT city
    -> FROM customers
    -> WHERE city LIKE '%a';
+--------+
| city   |
+--------+
| Baroda |
| Baroda |
+--------+
2 rows in set (0.00 sec)

//Que.6->List all the orders wheredate exist '02-JAN-09 and O AMT is maximum.

mysql> SELECT *
    -> FROM orders
    -> WHERE odate = '2009-01-02'
    ->   AND o_amt = (
    ->       SELECT MAX(o_amt)
    ->       FROM orders
    ->       WHERE odate = '2009-01-02'
    ->   );
+------+------+------+---------+------+------------+-----------+
| oid  | cid  | sid  | product | qty  | odate      | o_amt     |
+------+------+------+---------+------+------------+-----------+
| o501 | c302 | s102 | NULL    |   10 | 2009-01-02 | 770000.00 |
+------+------+------+---------+------+------------+-----------+
1 row in set (0.00 sec)

//Que.7->Display the length, average, maximum, minimum,ucase, lcase values for orders.

mysql> SELECT oid, LENGTH(oid) AS length_of_oid
    -> FROM orders;
+------+---------------+
| oid  | length_of_oid |
+------+---------------+
| o502 |             4 |
| o501 |             4 |
| o509 |             4 |
| o506 |             4 |
| o511 |             4 |
| o507 |             4 |
| o504 |             4 |
| o505 |             4 |
| o508 |             4 |
| o510 |             4 |
| o503 |             4 |
+------+---------------+
11 rows in set (0.00 sec)

mysql> SELECT
    ->     AVG(o_amt) AS avg_amount,
    ->     MAX(o_amt) AS max_amount,
    ->     MIN(o_amt) AS min_amount
    -> FROM orders;
+---------------+------------+------------+
| avg_amount    | max_amount | min_amount |
+---------------+------------+------------+
| 268316.489091 |  985000.00 |    1650.00 |
+---------------+------------+------------+
1 row in set (0.00 sec)

mysql> SELECT
    ->     oid,
    ->     UPPER(oid) AS ucase_oid,
    ->     LOWER(oid) AS lcase_oid
    -> FROM orders;
+------+-----------+-----------+
| oid  | ucase_oid | lcase_oid |
+------+-----------+-----------+
| o502 | O502      | o502      |
| o501 | O501      | o501      |
| o509 | O509      | o509      |
| o506 | O506      | o506      |
| o511 | O511      | o511      |
| o507 | O507      | o507      |
| o504 | O504      | o504      |
| o505 | O505      | o505      |
| o508 | O508      | o508      |
| o510 | O510      | o510      |
| o503 | O503      | o503      |
+------+-----------+-----------+
11 rows in set (0.00 sec)

mysql> SELECT
    ->     AVG(o_amt) AS avg_amount,
    ->     MAX(o_amt) AS max_amount,
    ->     MIN(o_amt) AS min_amount
    -> FROM orders;
+---------------+------------+------------+
| avg_amount    | max_amount | min_amount |
+---------------+------------+------------+
| 268316.489091 |  985000.00 |    1650.00 |
+---------------+------------+------------+
1 row in set (0.00 sec)

mysql> SELECT
    ->     oid,
    ->     LENGTH(oid) AS length_oid,
    ->     UPPER(oid) AS ucase_oid,
    ->     LOWER(oid) AS lcase_oid
    -> FROM orders;
+------+------------+-----------+-----------+
| oid  | length_oid | ucase_oid | lcase_oid |
+------+------------+-----------+-----------+
| o502 |          4 | O502      | o502      |
| o501 |          4 | O501      | o501      |
| o509 |          4 | O509      | o509      |
| o506 |          4 | O506      | o506      |
| o511 |          4 | O511      | o511      |
| o507 |          4 | O507      | o507      |
| o504 |          4 | O504      | o504      |
| o505 |          4 | O505      | o505      |
| o508 |          4 | O508      | o508      |
| o510 |          4 | O510      | o510      |
| o503 |          4 | O503      | o503      |
+------+------------+-----------+-----------+
11 rows in set (0.00 sec)

//Que.8->Display the SNAME wherealphabet Starts to V'and End to Y'.

mysql> SELECT sname
    -> FROM salesmen
    -> WHERE sname LIKE 'V%Y';
Empty set (0.00 sec)

//Que.9->Display the maximum and minimum,average, total COMM in salesmen table.

mysql> SELECT
    ->     MAX(comm)   AS max_commission,
    ->     MIN(comm)   AS min_commission,
    ->     AVG(comm)   AS avg_commission,
    ->     SUM(comm)   AS total_commission
    -> FROM salesmen;
+----------------+----------------+----------------+------------------+
| max_commission | min_commission | avg_commission | total_commission |
+----------------+----------------+----------------+------------------+
|           1500 |            300 |      1033.3333 |             6200 |
+----------------+----------------+----------------+------------------+
1 row in set (0.00 sec)

Que.9->Display the cid, sid where odate is 24-JUN-09 to31-DEC-09.

mysql> SELECT cid, sid
    -> FROM orders
    -> WHERE odate BETWEEN '2009-06-24' AND '2009-12-31';
+------+------+
| cid  | sid  |
+------+------+
| c304 | s105 |
| c306 | s101 |
| c302 | s102 |
| c307 | s102 |
| c303 | s104 |
+------+------+
5 rows in set (0.00 sec)

Que.10->Display the qty in orders where maximum qty consider for OID.

mysql> SELECT qty
    -> FROM orders
    -> WHERE qty = (
    ->     SELECT MAX(qty)
    ->     FROM orders
    -> );
+------+
| qty  |
+------+
|   88 |
+------+
1 row in set (0.00 sec)

mysql>