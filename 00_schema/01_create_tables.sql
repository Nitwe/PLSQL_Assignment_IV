-- STUDENT REGISTRATION AND GRADING SYSTEM
-- Group Assignment IV

CREATE TABLE STUDENTS (
    student_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    email VARCHAR2(100) UNIQUE,
    registration_date DATE DEFAULT SYSDATE
);

CREATE TABLE COURSES (
    course_id NUMBER PRIMARY KEY,
    course_name VARCHAR2(100) NOT NULL,
    credit_hours NUMBER NOT NULL
);

CREATE TABLE RESULTS (
    result_id NUMBER PRIMARY KEY,
    student_id NUMBER NOT NULL,
    course_id NUMBER NOT NULL,
    marks NUMBER(5,2) CHECK (marks BETWEEN 0 AND 100),
    grade VARCHAR2(2),

    CONSTRAINT fk_student
        FOREIGN KEY (student_id)
        REFERENCES STUDENTS(student_id),

    CONSTRAINT fk_course
        FOREIGN KEY (course_id)
        REFERENCES COURSES(course_id)
);