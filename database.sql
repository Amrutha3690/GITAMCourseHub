CREATE DATABASE IF NOT EXISTS gitamcoursehub;

USE gitamcoursehub;

CREATE TABLE users(

user_id INT PRIMARY KEY AUTO_INCREMENT,

full_name VARCHAR(100),

email VARCHAR(100) UNIQUE,

password VARCHAR(255),

department VARCHAR(50),

year_of_study INT,

role VARCHAR(20) DEFAULT 'STUDENT',

created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

CREATE TABLE courses(

course_id INT PRIMARY KEY AUTO_INCREMENT,

course_name VARCHAR(100),

department VARCHAR(50),

credits INT,

description TEXT

);

CREATE TABLE faculty(

faculty_id INT PRIMARY KEY AUTO_INCREMENT,

faculty_name VARCHAR(100),

department VARCHAR(50),

rating DOUBLE DEFAULT 0

);

CREATE TABLE reviews(

review_id INT PRIMARY KEY AUTO_INCREMENT,

user_id INT,

course_id INT,

rating INT,

review TEXT,

created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

CREATE TABLE recommendations(

recommendation_id INT PRIMARY KEY AUTO_INCREMENT,

user_id INT,

recommended_course VARCHAR(100)

);

CREATE TABLE favorites(

favorite_id INT PRIMARY KEY AUTO_INCREMENT,

user_id INT,

course_id INT

);