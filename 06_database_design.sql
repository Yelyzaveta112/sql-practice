-- DATABASE SETUP
CREATE DATABASE school_system;
USE school_system;

-- TABLE: courses
CREATE TABLE courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    points INT
);

-- TABLE: students
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    personal_number VARCHAR(12) UNIQUE
);

-- TABLE: enrollments (RELATION TABLE)
CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- ALTER TABLE: add email
ALTER TABLE students
ADD COLUMN email VARCHAR(255);

-- ALTER TABLE: add max capacity
ALTER TABLE courses
ADD COLUMN max_capacity INT;
