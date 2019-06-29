DECLARE
    vs_first_name SUMMER_INTERN.FIRST_NAME%TYPE;
    vs_university_name SUMMER_INTERN.UNIVERSITY_NAME%TYPE;
BEGIN
    vs_first_name :='SERVET';
SELECT 
    UNIVERSITY_NAME 
INTO 
    vs_university_name 
FROM 
    SUMMER_INTERN 
WHERE 
    FIRST_NAME = vs_first_name;
    DBMS_OUTPUT.PUT_LINE('university name is ='||vs_university_name);
END;

CREATE OR REPLACE PROCEDURE 
    find_university_name
    ( 
    pis_first_name 
IN 
    SUMMER_INTERN.FIRST_NAME%TYPE,
    pos_university_name 
IN OUT 
    SUMMER_INTERN.FIRST_NAME%TYPE 
    );
IS
BEGIN
SELECT 
    UNIVERSITY_NAME 
INTO 
    pos_university_name
FROM 
    SUMMER_INTERN 
WHERE 
    FIRST_NAME = pis_first_name;
END; 
DECLARE
    pis_first_name SUMMER_INTERN.FIRST_NAME%TYPE;
    pos_university_name SUMMER_INTERN.UNIVERSITY_NAME%TYPE;
BEGIN    
    pis_first_name :='SERVET';
    find_university_name
    (
    pis_first_name, pos_university_name
    );
    DBMS_OUTPUT.PUT_LINE(
    'university name is ='||pos_university_name
    );
END;
