SELECT 
DISTINCT 
    JOB_ID 
AS 
    JOB , 
    DECODE
    (
        JOB_ID,
        'AD_PRES','A',
        'ST_MAN','B',
        'IT_PROG','C',
        'SA_REP','D',
        'ST_CLERK','E', 
        0
    )
AS
    GRADE 
FROM 
    HR.EMPLOYEES 
ORDER BY 
    GRADE;
