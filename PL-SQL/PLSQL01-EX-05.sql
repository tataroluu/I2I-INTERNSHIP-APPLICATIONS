SELECT 
    LAST_NAME, 
    SALARY,
    
    DECODE
    (
        COMMISSION_PCT, 
        NULL, 
        'N',
        'Y'
    ) 
    COMMISSION
FROM 
    HR.EMPLOYEES;
