-- TEST 1: Display all students
SELECT * FROM STUDENTS;

-- TEST 2: Display all courses
SELECT * FROM COURSES;

-- TEST 3: Display all student results
SELECT * FROM RESULTS;

-- TEST 4: Count students
SELECT COUNT(*) AS total_students
FROM STUDENTS;

-- TEST 5: Calculate student average
SELECT get_student_average(1) AS average_marks
FROM DUAL;

-- TEST 6: Test stored procedure
BEGIN
    update_student_result(2, 85);
END;
/

-- TEST 7: Verify updated result
SELECT *
FROM RESULTS
WHERE result_id = 2;