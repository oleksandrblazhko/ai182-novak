DROP FUNCTION IF EXISTS change_student;
CREATE OR REPLACE FUNCTION change_student(val VARCHAR, student_stud_name VARCHAR)
RETURNS VARCHAR 
AS $$
DECLARE 
	str VARCHAR;
BEGIN
	str := 'UPDATE student SET stud_name ='''|| val ||''' WHERE stud_name =''' || student_stud_name || '''';
	RAISE NOTICE 'Query=%',str;
	EXECUTE str;
	RETURN val;
END;
$$ LANGUAGE plpgsql;
