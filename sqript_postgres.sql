CREATE TABLE courses (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL
);

CREATE TABLE teachers (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE enrollments (
    id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES students(id),
    course_id INTEGER REFERENCES courses(id),
    enrollment_date DATE NOT NULL
);

INSERT INTO courses (name, description, start_date, end_date)
VALUES
    ('Mathematics 101', 'Introduction to mathematics', '2023-09-01', '2023-12-31'),
    ('Physics 101', 'Introduction to physics', '2023-09-01', '2023-12-31'),
    ('Chemistry 101', 'Introduction to chemistry', '2023-09-01', '2023-12-31'),
    ('Biology 101', 'Introduction to biology', '2023-09-01', '2023-12-31'),
    ('Computer Science 101', 'Introduction to computer science', '2023-09-01', '2023-12-31'),
    ('English Literature', 'Study of English literature', '2023-09-01', '2023-12-31'),
    ('History of Art', 'Exploration of art history', '2023-09-01', '2023-12-31'),
    ('Philosophy 101', 'Introduction to philosophy', '2023-09-01', '2023-12-31'),
    ('Psychology 101', 'Introduction to psychology', '2023-09-01', '2023-12-31'),
    ('Economics 101', 'Introduction to economics', '2023-09-01', '2023-12-31');

INSERT INTO teachers (first_name, last_name, email)
VALUES
    ('John', 'Doe', 'john.doe@example.com'),
    ('Jane', 'Smith', 'jane.smith@example.com'),
    ('Michael', 'Brown', 'michael.brown@example.com'),
    ('Emily', 'Davis', 'emily.davis@example.com'),
    ('David', 'Johnson', 'david.johnson@example.com'),
    ('Sarah', 'Miller', 'sarah.miller@example.com'),
    ('Christopher', 'Wilson', 'christopher.wilson@example.com'),
    ('Olivia', 'Garcia', 'olivia.garcia@example.com'),
    ('Daniel', 'Rodriguez', 'daniel.rodriguez@example.com'),
    ('Megan', 'Moore', 'megan.moore@example.com');

INSERT INTO students (first_name, last_name, email)
VALUES
    ('Alice', 'Johnson', 'alice.johnson@example.com'),
    ('Bob', 'Smith', 'bob.smith@example.com'),
    ('Charlie', 'Brown', 'charlie.brown@example.com'),
    ('Diana', 'Davis', 'diana.davis@example.com'),
    ('Ethan', 'Miller', 'ethan.miller@example.com'),
    ('Frank', 'Wilson', 'frank.wilson@example.com'),
    ('Grace', 'Garcia', 'grace.garcia@example.com'),
    ('Henry', 'Rodriguez', 'henry.rodriguez@example.com'),
    ('Isabella', 'Moore', 'isabella.moore@example.com'),
    ('Jack', 'Taylor', 'jack.taylor@example.com');

INSERT INTO enrollments (student_id, course_id, enrollment_date)
VALUES
    (1, 1, '2023-08-15'),
    (1, 2, '2023-08-15'),
    (2, 3, '2023-08-16'),
    (3, 4, '2023-08-17'),
    (4, 5, '2023-08-18'),
    (5, 6, '2023-08-19'),
    (6, 7, '2023-08-20'),
    (7, 8, '2023-08-21'),
    (8, 9, '2023-08-22'),
    (9, 10, '2023-08-23');