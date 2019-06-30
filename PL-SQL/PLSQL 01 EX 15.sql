SET SERVEROUTPUT ON
CREATE OR REPLACE PROCEDURE
    PROCEDURE_DATE_DAY_NAME
    (
    type_date_day_name VARCHAR
    )
AS
    print_day VARCHAR(50);
BEGIN
    print_day:=TO_CHAR
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
   print_day
   );
END;

/

BEGIN
DBMS_OUTPUT.PUT_LINE
   (
   'this procedure shows the date given in days.'
   );
    PROCEDURE_DATE_DAY_NAME
    (
    '01-07-2019'
    );
END;
