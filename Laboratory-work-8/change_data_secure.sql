DROP FUNCTION IF EXISTS change_student_secure;
CREATE OR REPLACE FUNCTION change_student_secure(val VARCHAR, student_stud_name VARCHAR)
RETURNS VARCHAR 
AS $$
DECLARE 
	str VARCHAR;
BEGIN
	str := 'UPDATE student SET stud_name = $1 WHERE stud_name = $2';
	EXECUTE str using val, student_stud_name;
	RETURN val;
END;
$$ LANGUAGE plpgsql;
