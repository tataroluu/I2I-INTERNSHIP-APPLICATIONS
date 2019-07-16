ALTER TABLE 
    HR.EMPLOYEES
ADD 
    MAX_SALARY NUMBER;    
UPDATE 
    HR.EMPLOYEES
SET 
    MAX_SALARY = 
    (
        SELECT MAX
        (
        SALARY
        ) 
        FROM 
            HR.EMPLOYEES
    );

DELETE FROM 
    HR.EMPLOYEES 
WHERE 
    SALARY = 
    (
        SELECT MIN
        (
            SALARY
        ) 
        FROM 
            HR.EMPLOYEES
    );
