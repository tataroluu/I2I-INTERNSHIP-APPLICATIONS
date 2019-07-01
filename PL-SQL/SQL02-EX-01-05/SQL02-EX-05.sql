CREATE TABLE
    MY_EMP_TABLE
    (
    ID NUMBER NOT NULL PRIMARY KEY,
    LAST_NAME VARCHAR(50),
    FIRST_NAME VARCHAR(50),
    SALARY NUMBER
    );

INSERT INTO 
    MY_EMP_TABLE 
VALUES 
(
    1,
    'Black',
    'John',
    1100
);
INSERT INTO
    MY_EMP_TABLE 
VALUES 
(
    2,
    'White',
    'Kent',
    1300
);
INSERT INTO
    MY_EMP_TABLE 
VALUES 
(
    3,
    'Orange',
    'David',
    1700
);
INSERT INTO
    MY_EMP_TABLE 
VALUES 
(
    4,
    'Pink',
    'Alissa',
    1900
);

UPDATE
    MY_EMP_TABLE 
SET 
    SALARY=SALARY*(1.10);

DELETE 
FROM
    MY_EMP_TABLE 
WHERE
    FIRST_NAME = 'David'; 

TRUNCATE TABLE
    MY_EMP_TABLE;
