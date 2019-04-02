#!/usr/bin/python
import mysql.connector as mariadb
mariadb_connection = mariadb.connect(user='root', password='', database='assets')
cursor = mariadb_connection.cursor()
cursor.execute("SHOW TABLES;")

mariadb_connection.close()
