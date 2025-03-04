import psycopg2
from psycopg2 import sql

# Параметры подключения
db_params = {
    'dbname': 'postgres',  # Имя базы данных, к которой вы подключаетесь
    'user': 'postgres',  # Ваше имя пользователя
    'password': 'adsl311812',  # Ваш пароль
    'host': 'localhost',  # Хост, обычно localhost
    'port': '5432'  # Порт, по умолчанию 5432
}

conn = psycopg2.connect

conn = psycopg2.connect(**db_params)

cur = conn.cursor()

cur.execute("SELECT * FROM courses")
courses = cur.fetchall()

cur.execute("SELECT * FROM teachers")
teachers = cur.fetchall()

cur.execute("SELECT * FROM students")
students = cur.fetchall()

course_id = 1
cur.execute("SELECT students.* FROM students JOIN enrollments ON students.id = enrollments.student_id WHERE enrollments.course_id = %s", (course_id,))
students1 = cur.fetchall()

print(courses)
print(teachers)
print(students)
print(students1)