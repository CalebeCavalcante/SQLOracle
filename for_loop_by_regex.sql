
create or replace function TRATAR_TEXTO_BY_DICIONARIO(TEXTO in varchar2) return varchar2 
is

  MY_STRING VARCHAR2(4000); 
  STRING_OUTPUT  VARCHAR2(4000);
  
BEGIN

MY_STRING := LOWER(TEXTO);
STRING_OUTPUT := '';

/* 
 * Quebrar texto por espaço entre as palavras. 
 * Ex.: "Exemplo Texto no Regex paraAplicacao" -> FOR CURRENT_ROW = ARRAY(Exemplo, Texto, no, Regex, paraAplicacao)
 */  
FOR CURRENT_ROW IN (
    with test as    
      (select MY_STRING from dual)
      select regexp_substr(MY_STRING, '[^ ]+', 1, rownum) SPLIT
      from test
      connect by level <= length (regexp_replace(MY_STRING, '[^ ]+'))  + 1)
  LOOP
    
    dbms_output.put_line( 'Entrada: '|| CURRENT_ROW.SPLIT);
    
    -- Palavras com +2 letras 
    IF LENGTH(CURRENT_ROW.SPLIT) > 2 
      STRING_OUTPUT := STRING_OUTPUT || CURRENT_ROW.SPLIT || ',' ;
    END IF;
    
  END LOOP;
  
  return STRING_OUTPUT;
END;
