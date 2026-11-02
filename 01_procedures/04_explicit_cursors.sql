DECLARE
    -- Declare an explicit cursor
    CURSOR student_cursor IS
        SELECT student_id, first_name, last_name
        FROM STUDENTS;

    v_id STUDENTS.student_id%TYPE;
    v_first_name STUDENTS.first_name%TYPE;
    v_last_name STUDENTS.last_name%TYPE;

BEGIN
    -- Open cursor
    OPEN student_cursor;

    DBMS_OUTPUT.PUT_LINE('--- STUDENT RECORDS ---');

    LOOP
        -- Fetch records
        FETCH student_cursor
        INTO v_id, v_first_name, v_last_name;

        -- Exit when no more records exist
        EXIT WHEN student_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            v_id || ' - ' || v_first_name || ' ' || v_last_name
        );
    END LOOP;

    -- Close cursor
    CLOSE student_cursor;
END;
/