DECLARE
    v_name VARCHAR2(50);
    v_marks NUMBER;

    -- User-defined exception
    invalid_marks EXCEPTION;

BEGIN
    -- Example 1: NO_DATA_FOUND
    BEGIN
        SELECT first_name
        INTO v_name
        FROM STUDENTS
        WHERE student_id = 999;

    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('No student found.');
    END;

    -- Example 2: TOO_MANY_ROWS
    BEGIN
        SELECT first_name
        INTO v_name
        FROM STUDENTS
        WHERE student_id <= 2;

    EXCEPTION
        WHEN TOO_MANY_ROWS THEN
            DBMS_OUTPUT.PUT_LINE('More than one student found.');
    END;

    -- Example 3: User-defined exception
    BEGIN
        v_marks := 120;

        IF v_marks < 0 OR v_marks > 100 THEN
            RAISE invalid_marks;
        END IF;

    EXCEPTION
        WHEN invalid_marks THEN
            DBMS_OUTPUT.PUT_LINE('Invalid marks entered.');
    END;

    -- Example 4: RAISE_APPLICATION_ERROR
    BEGIN
        RAISE_APPLICATION_ERROR(-20010, 'Invalid student operation.');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(SQLERRM);
    END;

END;
/