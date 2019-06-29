SELECT SUBSTR( (PHONE_NUMBER), 1 , 3  ) 
    AS Operator, 
        COUNT(EMPLOYEE_ID) 
            AS Total 
                FROM HR.EMPLOYEES
                    GROUP BY SUBSTR( (PHONE_NUMBER), 1 , 3  );

------------------------------------------------------------------------------
SELECT * FROM (
SELECT SUBSTR( (PHONE_NUMBER), 1 , 3  ) 
    AS vi_operator, 
        COUNT(EMPLOYEE_ID) 
            AS vi_total 
                FROM HR.EMPLOYEES
                    GROUP BY SUBSTR( (PHONE_NUMBER), 1 , 3  )
)
PIVOT
(
    SUM (vi_total) 
        FOR vi_operator 
            IN(515,590,603,011,650)
);
