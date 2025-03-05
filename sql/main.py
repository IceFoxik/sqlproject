import psycopg2
from psycopg2 import sql

from config import DB_CONFIG
# Параметры подключения

conn = psycopg2.connect(**DB_CONFIG)
cur=conn.cursor()
cur.execute("SELECT * FROM person")

print(db_params ["dbname"])
conn = psycopg2.connect(**db_params)
cur=conn.cursor()
cur.execute("SELECT * FROM person")
records = cur.fetchall()
print(records)
cur.execute("create table menu2 ( id bigint primary key)")
conn.commit()
cur.execute ("Update menu SET price = 0")
conn.commit()