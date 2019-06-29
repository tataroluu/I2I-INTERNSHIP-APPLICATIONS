SET SERVEROUTPUT ON;

DECLARE 

    i number;
    k number;
    j number;

BEGIN

FOR i IN  0..7
LOOP

FOR j IN i..7
LOOP

    dbms_output.put(' '); 

END LOOP;

FOR k IN 0..(i*2)-2
LOOP  

                dbms_output.put('*'); 

END LOOP; 

            dbms_output.put_line(''); 
            
END LOOP;
END;
