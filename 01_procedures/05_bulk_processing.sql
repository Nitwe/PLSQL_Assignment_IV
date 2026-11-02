DECLARE
    -- Collection to store student IDs
    TYPE student_id_table IS TABLE OF NUMBER;

    v_student_ids student_id_table;

BEGIN
    -- BULK COLLECT: Retrieve multiple student IDs
    SELECT student_id
    BULK COLLECT INTO v_student_ids
    FROM STUDENTS
    WHERE student_id <= 5;

    DBMS_OUTPUT.PUT_LINE(
        'Students retrieved: ' || v_student_ids.COUNT
    );

    -- FORALL: Update multiple student records
    FORALL i IN 1..v_student_ids.COUNT
        UPDATE RESULTS
        SET marks = marks + 1
        WHERE student_id = v_student_ids(i);

    DBMS_OUTPUT.PUT_LINE(
        'Bulk update completed successfully.'
    );

    COMMIT;
END;
/
DECLARE
    TYPE result_ids IS TABLE OF NUMBER;
    v_ids result_ids := result_ids(1, 2, 3);
BEGIN
    FORALL i IN 1..v_ids.COUNT SAVE EXCEPTIONS
        UPDATE RESULTS
        SET marks = 120
        WHERE result_id = v_ids(i);

EXCEPTION
    WHEN OTHERS THEN
        FOR i IN 1..SQL%BULK_EXCEPTIONS.COUNT LOOP
            DBMS_OUTPUT.PUT_LINE(
                'Error: ' || SQL%BULK_EXCEPTIONS(i).ERROR_CODE
            );
        END LOOP;
END;
/