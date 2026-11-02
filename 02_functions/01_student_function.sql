CREATE OR REPLACE FUNCTION get_student_average (
    p_student_id IN NUMBER
)
RETURN NUMBER
AS
    v_average NUMBER;
BEGIN
    SELECT AVG(marks)
    INTO v_average
    FROM RESULTS
    WHERE student_id = p_student_id;

    RETURN v_average;
END;
/