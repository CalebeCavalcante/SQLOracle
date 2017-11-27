   create or replace function COUNT_WORDS_BY_DELIMITER(TEXTO in varchar2, DELIMITER in varchar2) return varchar2 
    is

    OUTPUT NUMBER(38);
    PATTERN_CODE VARCHAR2(4000);
    
    BEGIN
    PATTERN_CODE := '[^' || DELIMITER  ||' ]+';
    
    SELECT REGEXP_COUNT(TEXTO, PATTERN_CODE, 1, 'i') INTO OUTPUT FROM DUAL;  
    return OUTPUT;
    END;
