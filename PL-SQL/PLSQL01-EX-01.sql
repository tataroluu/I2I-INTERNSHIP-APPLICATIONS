SET SERVEROUTPUT ON;
DECLARE
BEGIN
FOR i IN 0..20
LOOP
IF ( MOD (i,2)=0 ) 
THEN
    dbms_output.put_line(i);  
END IF;
END LOOP;
END;
