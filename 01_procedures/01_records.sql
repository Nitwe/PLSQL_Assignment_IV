SET SERVEROUTPUT ON;

DECLARE
    -- User-defined RECORD
    TYPE student_record IS RECORD (
        student_id NUMBER,
        student_name VARCHAR2(100),
        student_email VARCHAR2(100)
    );

    v_student student_record;

    -- RECORD based on the STUDENTS table
    v_student_row STUDENTS%ROWTYPE;

BEGIN
    -- Assign values to the user-defined RECORD
    v_student.student_id := 1;
    v_student.student_name := 'Alice Mugisha';
    v_student.student_email := 'alice@example.com';

    DBMS_OUTPUT.PUT_LINE('--- User-Defined RECORD ---');
    DBMS_OUTPUT.PUT_LINE('Student ID: ' || v_student.student_id);
    DBMS_OUTPUT.PUT_LINE('Name: ' || v_student.student_name);
    DBMS_OUTPUT.PUT_LINE('Email: ' || v_student.student_email);

    -- Fetch a complete row using %ROWTYPE
    SELECT *
    INTO v_student_row
    FROM STUDENTS
    WHERE student_id = 1;

    DBMS_OUTPUT.PUT_LINE('--- STUDENTS%ROWTYPE ---');
    DBMS_OUTPUT.PUT_LINE('Name: ' || v_student_row.first_name
                         || ' ' || v_student_row.last_name);
    DBMS_OUTPUT.PUT_LINE('Email: ' || v_student_row.email);
END;
/