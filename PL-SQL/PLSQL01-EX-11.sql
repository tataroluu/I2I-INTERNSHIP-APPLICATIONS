SET SERVEROUTPUT ON;
DECLARE 
    vi_loop number;
    vi_star number;
    vi_space number;
BEGIN
FOR vi_loop IN  0..7
LOOP
FOR vi_space IN vi_loop..7
LOOP
    dbms_output.put(' '); 
END LOOP;
FOR vi_star IN 0..(vi_loop*2)-2
LOOP  
                dbms_output.put('*'); 
END LOOP; 
            dbms_output.put_line('');            
END LOOP;
END;
