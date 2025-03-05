import psycopg2
from psycopg2 import pool
from psycopg2 import sql
import os
from config import DB_CONFIG

POOL= psycopg2.pool.SimpleConnectionPool(1,10,  database=DB_CONFIG["dbname"],
user=DB_CONFIG["user"], password=DB_CONFIG["password"],
port=DB_CONFIG["port"], host=DB_CONFIG["host"])

def table_exists(table_name: str) -> bool:
    conn = POOL.getconn()
    try:
        with conn:
            with conn.cursor() as cursor:
                cursor.execute(
                    """
                    SELECT EXISTS (
                        SELECT 1
                        FROM information_schema.tables
                        WHERE table_name = %s
                    );
                    """,
                    (table_name,),
                )
                return cursor.fetchone()[0]
    finally:
        POOL.putconn(conn)
    

print(table_exists('menu'))