DECLARE
    v_rows NUMBER;
BEGIN
    -- Update an existing student's result
    UPDATE RESULTS
    SET marks = marks
    WHERE student_id = 1
    AND course_id = 101;

    v_rows := SQL%ROWCOUNT;

    DBMS_OUTPUT.PUT_LINE('Rows affected: ' || v_rows);

    IF SQL%FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Record found successfully.');
    END IF;

    -- Try updating a student who does not exist
    UPDATE RESULTS
    SET marks = marks
    WHERE student_id = 999;

    IF SQL%NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('No matching record found.');
    END IF;
END;
/