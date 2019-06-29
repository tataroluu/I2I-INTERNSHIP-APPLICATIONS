DECLARE CURSOR 
    v_employees_cursor 
IS
SELECT 
    first_name, last_name
FROM
    HR.EMPLOYEES;
    v_first_name HR.EMPLOYEES.first_name%TYPE;
    v_last_name HR.EMPLOYEES.last_name%TYPE;
BEGIN OPEN
    v_employees_cursor;
LOOP FETCH
    v_employees_cursor 
INTO 
    v_first_name, v_last_name;
IF
    v_employees_cursor %NOTFOUND 
THEN EXIT;
END IF;
    DBMS_OUTPUT.PUT_LINE(
    'first_name = ' || v_first_name || 
    ', last_name = ' || v_last_name);
END LOOP;
CLOSE
    v_employees_cursor;
END;
