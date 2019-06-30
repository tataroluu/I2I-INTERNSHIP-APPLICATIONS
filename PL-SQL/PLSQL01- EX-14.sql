CREATE DIRECTORY 
    DIRECTORY_FILE 
AS 
    'c:\oracle\direct_file';

DECLARE
    vi_employees_id            
        EMPLOYEES.EMPLOYEE_ID%TYPE;
    vs_firs_name
        EMPLOYEES.FIRST_NAME%TYPE;
    vs_last_name
        EMPLOYEES.LAST_NAME%TYPE;
    vs_department_name
        DEPARTMENTS.DEPARTMENT_NAME%TYPE;
CURSOR 
    cursor_employees 
IS   
SELECT 
    E.EMPLOYEE_ID,
    E.FIRST_NAME,
    E.LAST_NAME,
    D.DEPARTMENT_NAME 
FROM 
    HR.EMPLOYEES E 
INNER JOIN 
    HR.DEPARTMENTS D 
ON 
(
    E.DEPARTMENT_ID= D.DEPARTMENT_ID
); 
        file_text UTL_FILE.FILE_TYPE;
BEGIN
    file_text := UTL_FILE.FOPEN
    (
    'DIRECTORY_FILE',
    'employees_information.txt',
    'W'
    );
OPEN 
    cursor_employees;
LOOP
FETCH 
    cursor_employees 
INTO 
    vi_employees_id,
    vs_first_name,
    vs_last_name,
    vs_department_name; 
EXIT WHEN 
    cursor_employees%notfound; 
    UTL_FILE.PUTF
    (
    file_text,
    'ID-> ' || vi_employees_id ||
    '\n' || ' Name-> ' || vs_first_name || 
    '\n' || ' Surname-> ' || vs_last_name ||
    '\n' || ' department-> ' || vs_department_name 
    || '\n\n\n'
    );  
END LOOP;

CLOSE 
    cursor_employees;
    UTL_FILE.FCLOSE
    (
    file_text
    );
    
EXCEPTION
WHEN OTHERS THEN
     dbms_output.put_line
     (
     'Error:' || sqlerrm
     ); 
END;
