CREATE TABLE 
    EMPLOYEE 
    (
    employee_id NUMBER NOT NULL PRIMARY KEY,
    fist_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50),
    phone_number NUMBER(15),
    hire_date DATE,
    salary NUMBER,
    department_id NUMBER
    );

INSERT INTO 
    EMPLOYEE 
VALUES
(
	3,
	'servet',
	'tartar',
	'servettartar@gmail.com',
	'905349721183',
	TO_DATE('2019/06/21 21:02:44',
	 'yyyy/mm/dd hh24:mi:ss'),
	4000,
	3
);

DELETE 
FROM 
    EMPLOYEE 
WHERE 
    employee_id=1;
    
UPDATE 
    EMPLOYEE
SET 
    employee_id=2,
    fist_name ='aslıhan',
    last_name ='batur',
    email = 'aslihanbatturr@gmail.com',
    phone_number = 905359721183,
    hire_date =TO_DATE('2019/06/21 21:02:44', 'yyyy/mm/dd hh24:mi:ss') ,
    salary =5000,
    department_id =33 
WHERE 
    employee_id=2;

DROP TABLE 
    EMPLOYEE;

SELECT 
    * 
FROM 
    EMPLOYEE;
