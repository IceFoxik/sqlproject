https://dbdiagram.io

Table courses {
id serial [primary key]
name varchar(255) 
description text
start_date date 
end_date date 
}
Table teachers {
id serial [primary key]
first_name varchar(255) 
last_name varchar(255) 
email varchar(255) unique 
}
Table students {
id serial [primary key]
first_name varchar(255) 
last_name varchar(255) 
email varchar(255) unique 
}
Table enrollments {
id serial [primary key]
student_id integer 
course_id integer 
enrollment_date date
}

Ref: enrollments.student_id > students.id // many-to-one

Ref: enrollments.course_id > courses.id // many-to-one