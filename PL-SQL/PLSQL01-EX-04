 SELECT 
    first_name 
 FROM 
    HR.EMPLOYEES
 WHERE 
    employee_id = 
    (
        SELECT MAX (employee_id) FROM HR.EMPLOYEES 
    );
