Last login: Tue Apr 11 04:16:48 2023 from 142.198.223.34
root@lamp-ubuntu-s-1vcpu-1gb-tor1-01:~# mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 176
Server version: 8.0.32-0ubuntu0.20.04.2 (Ubuntu)

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| dbname             |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.01 sec)

mysql> use dbname;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+------------------+
| Tables_in_dbname |
+------------------+
| users            |
+------------------+
1 row in set (0.01 sec)

mysql> describes users;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'describes users' at line 1
mysql>  describe users;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| id        | int         | NO   | PRI | NULL    |       |
| username  | varchar(30) | YES  |     | NULL    |       |
| email     | varchar(50) | YES  |     | NULL    |       |
| firstname | varchar(30) | YES  |     | NULL    |       |
| lastname  | varchar(30) | YES  |     | NULL    |       |
| active    | varchar(10) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

mysql> select * from users;
+----+-------------+-------------------------+-----------+----------+--------+
| id | username    | email                   | firstname | lastname | active |
+----+-------------+-------------------------+-----------+----------+--------+
|  1 | john_doe    | john_doe@example.com    | John      | Doe      | 1      |
|  2 | jane_smith  | jane_smith@example.com  | Jane      | Smith    | 1      |
|  3 | bob_johnson | bob_johnson@example.com | Bob       | Johnson  | 0      |
|  4 | mary_adams  | mary_adams@example.com  | Mary      | Adams    | 1      |
|  5 | david_lee   | david_lee@example.com   | David     | Lee      | 0      |
|  6 | ben_jones   | ben_jones@example.com   | Ben       | Jones    | 0      |
+----+-------------+-------------------------+-----------+----------+--------+
6 rows in set (0.00 sec)

mysql> exit
Bye
root@lamp-ubuntu-s-1vcpu-1gb-tor1-01:~# nano getusers_1.php
root@lamp-ubuntu-s-1vcpu-1gb-tor1-01:~# mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 177
Server version: 8.0.32-0ubuntu0.20.04.2 (Ubuntu)

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create user web@localhost identified by 'pass';
mysql> create user web@localhost identified by 'pass';
Query OK, 0 rows affected (0.01 sec)
mysql> GRANT ALL PRIVILEGES ON *.* TO 'web2'@'localhost';
Query OK, 0 rows affected (0.01 sec)

mysql> flush PRIVILEGES;
Query OK, 0 rows affected (0.01 sec)

mysql> exit
Bye
root@lamp-ubuntu-s-1vcpu-1gb-tor1-01:~# cd /var/www/html/wk13
root@lamp-ubuntu-s-1vcpu-1gb-tor1-01:/var/www/html/wk13# nano getusers_1.php
