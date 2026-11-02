-- TEST 1: Student does not exist
BEGIN
    update_student_result(999, 80);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/

-- TEST 2: Invalid marks
BEGIN
    update_student_result(1, 150);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/

-- TEST 3: Invalid student ID
BEGIN
    update_student_result(-1, 80);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/