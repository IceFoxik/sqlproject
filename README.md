[диограмма](https://dbdiagram.io)

>Table courses {  
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

![db](/img/db.png)


Table Days_of_the_week {
  id integer [primary key]
  day_of_the_week varchar(15)
}

Table Couples {
  id integer [primary key]
  pair_number integer
  start_time time
  end_time time
}

Table Groups {
  id integer [primary key]
  groups varchar(7)
}

Table Types_of_activities {
  id integer [primary key]
  type varchar(30)
}

Table Audiences {
  id integer [primary key]
  audience varchar(5)
}

Table Parity_of_the_week {
  id integer [primary key]
  week varchar(10)
}

Table Disciplines {
  id integer [primary key]
  discipline varchar(50)
}

Table Schedule {
  id integer [primary key]
  day_of_the_week ref
  discipline ref
  week ref
  audience ref
  couples ref
  groups ref
  type ref
}



Ref: "Days_of_the_week"."id" < "Schedule"."day_of_the_week"

Ref: "Disciplines"."id" < "Schedule"."discipline"

Ref: "Parity_of_the_week"."id" < "Schedule"."week"

Ref: "Audiences"."id" < "Schedule"."audience"

Ref: "Couples"."id" < "Schedule"."couples"

Ref: "Groups"."id" < "Schedule"."groups"

Ref: "Types_of_activities"."id" < "Schedule"."type"
