DECLARE
    name1 varchar(50) := INITCAP(LOWER('ERMAN'));
    surname1 varchar(50):= INITCAP(LOWER('İBRİŞİM'));
    name2 varchar(50):=(LOWER('ERMAN')) ;
    surname2 varchar(50):=(LOWER('İBRİŞİM'));   
BEGIN
    DBMS_OUTPUT.PUT_LINE('Name - Surname = '|| 
    NAME1||' '||SURNAME1 );
    DBMS_OUTPUT.PUT_LINE('Name - Surname = '|| 
    NAME2||' '||SURNAME2 );
      
END;
