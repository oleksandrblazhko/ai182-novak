DROP FUNCTION IF EXISTS get_student_secure;
CREATE OR REPLACE FUNCTION get_student_secure(student_stud_name VARCHAR)
RETURNS TABLE
(s_id INTEGER, stud_name VARCHAR, kurs integer)
AS $$
DECLARE
	str VARCHAR;
BEGIN
	str := 'SELECT s_id, stud_name, kurs from student where stud_name = $1';
	RETURN QUERY EXECUTE str USING student_stud_name;
END;
$$ LANGUAGE plpgsql;
