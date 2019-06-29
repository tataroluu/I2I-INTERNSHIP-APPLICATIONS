CREATE OR REPLACE procedure write_utl_file 
IS
    file_utl utl_file.file_type;
CURSOR 
    cursor_emp 
IS

SELECT 
    * 
FROM 
    HR.EMPLOYEES;
    
cursor_employee cursor_emp%rowtype;
    write_st VARCHAR2(400);
    write_header VARCHAR2(400);    
    write_line  VARCHAR2(400);

BEGIN  

	file_utl := utl_file.file_open(‘PLSQL’,'employees.txt’,'w’);
	UTL_FILE.NEW_LINE(file_utl);
	write_header:=’DEPARTMENT_ID EMPLOYEE_ID FIRST_NAME LAST_NAME SALARY COMMISION’; 
	UTL_FILE.PUTF(file_utl, write_header);
	UTL_FILE.NEW_LINE(file_utl);
	UTL_FILE.PUTF(file_utl, write_line);
	UTL_FILE.NEW_LINE(file_utl);
    
FOR 
    cursor_employee IN cursor_emp LOOP
	write_st := rpad(cursor_employee.department_id,10,’ ‘) || 
    rpad(cursor_employee.employee_id,25,’ ‘) || 
    rpad(cursor_employee.first_name,30,’ ‘) ||
    rpad(cursor_employee.last_name,20,’ ‘) || 
    rpad(cursor_employee.salary,30,’ ‘) || 
    rpad(cursor_employee.commission_pct,30,’ ‘);
	UTL_FILE.PUTF(file_utl, write_st);
	UTL_FILE.NEW_LINE(file_utl);
    
END LOOP;

    UTL_FILE.FCLOSE(file_utl);
    
END;
