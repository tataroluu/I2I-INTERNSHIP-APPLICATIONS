CREATE INDEX 
    DPR_NAME_IDX
ON 
    HR.DEPARTMENTS
    (
    DEPARTMENT_NAME
    );

ALTER TABLE 
    HR.EMPLOYEES
ADD CONSTRAINT 
    salary_boundaries 
    CHECK 
    (
        SALARY >= 1000 
    AND 
        SALARY <= 100000
    );

DROP INDEX 
    DPR_NAME_IDX;
ALTER TABLE 
    HR.EMPLOYEES 
DROP CONSTRAINT 
    salary_boundaries;
        
