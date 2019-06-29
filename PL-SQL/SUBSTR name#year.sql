SELECT 
    UPPER(SUBSTR('servet#1994',1,
    INSTR('servet#1994','#',1)-1)) 
        FROM DUAL;
