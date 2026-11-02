CREATE OR REPLACE PROCEDURE update_student_result (
    p_result_id IN NUMBER,
    p_new_marks IN NUMBER
)
AS
BEGIN
    IF p_new_marks < 0 OR p_new_marks > 100 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Marks must be between 0 and 100.');
    END IF;

    UPDATE RESULTS
    SET marks = p_new_marks,
        grade = CASE
            WHEN p_new_marks >= 80 THEN 'A'
            WHEN p_new_marks >= 70 THEN 'B'
            WHEN p_new_marks >= 60 THEN 'C'
            WHEN p_new_marks >= 50 THEN 'D'
            ELSE 'F'
        END
    WHERE result_id = p_result_id;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Result not found.');
    END IF;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Student result updated successfully.');
END;
/