CREATE OR REPLACE PACKAGE 
     PYRAMID_WITH_STARS
IS
PROCEDURE 
    draw_pyramid_with_stars
    (
        star_size IN NUMBER
    );
END PYRAMID_WITH_STARS;

CREATE OR REPLACE PACKAGE BODY 
    PYRAMID_WITH_STARS 
IS
PROCEDURE 
    draw_pyramid_with_star
    (
        star_size IN NUMBER
    ) 
IS
    vi_number INTEGER;
   	vi_count INTEGER;
BEGIN
    vi_number:=star_size/2;
    vi_count := vi_number-1; 

    DBMS_OUTPUT.PUT_LINE
    (
    ''
    );

FOR 
    i 
IN  
    1..vi_number
LOOP

FOR 
    loop_counter 
IN 
    1..vi_count
LOOP
	DBMS_OUTPUT.PUT
    (
    ' '
    );
END LOOP;
    vi_count := vi_count-1;
FOR 
    loop_counter 
IN 
    1..((i*2)-1)
LOOP
    DBMS_OUTPUT.PUT
    (
    '*'
    );
END LOOP;
    DBMS_OUTPUT.PUT_LINE
    (
    ''
    );
END LOOP;   
    vi_count := 1;
FOR 
    i 
IN 
    1..vi_number
LOOP

FOR 
    loop_counter
IN 
    1..vi_count
LOOP
    DBMS_OUTPUT.PUT
    (
    ' '
    );
END LOOP;
    vi_count := vi_count+1;
FOR 
    loop_counter 
IN 
    1..(2*(vi_number-i)-1)
LOOP
    DBMS_OUTPUT.PUT
    (
    '*'
    );
END LOOP;
    DBMS_OUTPUT.PUT_LINE
    (
    ''
    );
END LOOP;
   	DBMS_OUTPUT.PUT_LINE
    (
    ''
    );
END;
BEGIN
    DBMS_OUTPUT.PUT_LINE
    (
    'PYRAMID_WITH_STARS'
    );
END PYRAMID_WITH_STARS;

DECLARE
BEGIN
    PYRAMID_WITH_STARS.draw_pyramid_with_star
    (
    9
    );
END;
