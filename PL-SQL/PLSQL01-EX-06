SELECT job_id 
    AS DEPARTMENT_NAME , 
        SUM(SALARY) "TOTAL SALARY"
            FROM HR.EMPLOYEES
                WHERE job_id 
                    NOT LIKE '&&'
                        GROUP BY job_id
                            HAVING SUM(SALARY)>0
                                 ORDER BY SUM(SALARY);
