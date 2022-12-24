DROP FUNCTION IF EXISTS get_student;
CREATE OR REPLACE FUNCTION get_student(student_stud_name VARCHAR)
RETURNS TABLE
(s_id INTEGER, stud_name VARCHAR, kurs integer)
AS $$
DECLARE
	str VARCHAR;
BEGIN
	str := 'SELECT s_id, stud_name, kurs from student where stud_name = ''' || 
		student_stud_name || '''';
	RAISE NOTICE 'Query=%',str;
	RETURN QUERY EXECUTE str;
END;
$$ LANGUAGE plpgsql;
