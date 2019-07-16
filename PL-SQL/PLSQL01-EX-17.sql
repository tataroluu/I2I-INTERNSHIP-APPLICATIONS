SET SERVEROUTPUT ON
CREATE OR REPLACE EDITIONABLE PACKAGE BODY PACKAGE_AND_PROCEDURE AS
PROCEDURE
    PROCEDURE_DATE_DAY_NAME
    (
    type_date_day_name VARCHAR
    )
IS 
    print_date_day_name VARCHAR(50);

BEGIN
    print_date_day_name:=TO_CHAR
    (
TO_DATE
(
    type_date_day_name,
    'DD-MM-YYYY'
),
    'DAY'
    );
   DBMS_OUTPUT.PUT_LINE
   (
   print_date_day_name
   );
END;
END PACKAGE_AND_PROCEDURE;
