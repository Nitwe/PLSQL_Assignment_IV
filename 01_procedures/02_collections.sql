DECLARE
    -- 1. Associative array
    TYPE student_names_type IS TABLE OF VARCHAR2(50)
        INDEX BY PLS_INTEGER;

    student_names student_names_type;

    -- 2. Nested table
    TYPE marks_table_type IS TABLE OF NUMBER;

    marks_table marks_table_type := marks_table_type(85, 70, 92);

    -- 3. VARRAY
    TYPE grades_varray_type IS VARRAY(5) OF VARCHAR2(2);

    grades grades_varray_type := grades_varray_type('A', 'B', 'A');

BEGIN
    -- Associative array
    student_names(1) := 'Alice';
    student_names(2) := 'David';
    student_names(3) := 'Grace';

    DBMS_OUTPUT.PUT_LINE('--- ASSOCIATIVE ARRAY ---');

    FOR i IN 1..3 LOOP
        DBMS_OUTPUT.PUT_LINE(student_names(i));
    END LOOP;

    -- Nested table
    DBMS_OUTPUT.PUT_LINE('--- NESTED TABLE ---');

    FOR i IN 1..marks_table.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE('Mark: ' || marks_table(i));
    END LOOP;

    -- VARRAY
    DBMS_OUTPUT.PUT_LINE('--- VARRAY ---');

    FOR i IN 1..grades.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE('Grade: ' || grades(i));
    END LOOP;
END;
/