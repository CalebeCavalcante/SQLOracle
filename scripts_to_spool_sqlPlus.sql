<<<<<<<<<<<<<<<<<<<<<<<<<< ARQUIVO .BAT >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

sqlplus user/password@Conection @C:\Users\UserName\Documents\Scripts_Oracle\SCRIPT_01.sql
  
  <<<<<<<<<<<<<<<<<<<<<<<<<<  SCRIPT_01 SPOOL >>>>>>>>>>>>>>>>>>>>>>>>>> 
  SET UNDERLINE OFF
  SET VERIFY OFF
  SET HEADING OFF
  SET HEADSEP OFF
  SET FEEDBACK OFF
  SET ECHO OFF
  SET TERM OFF
  SET TERMOUT OFF
  SET TRIMSPOOL ON
  SET TRIMOUT ON
  SET LINESIZE 10000
  SET PAGESIZE 0
  SET COLSEP ';'
  
  SPOOL C:\Diretório_para_Salvar;
  
  (SELECT SYSDATE FROM DUAL);
  
  SPOOL OFF;
  
  
 <<<<<<<<<<<<<<<<<<<<<<<<<<  RODAR VARIOS SCRIPTS SPOOL >>>>>>>>>>>>>>>>>>>>>>>>>>
  
WHENEVER OSERROR EXIT 1;
WHENEVER SQLERROR EXIT 1;

@C:\Users\UserName\Documents\Scripts_Oracle\Script_01.sql;
@C:\Users\UserName\Documents\Scripts_Oracle\Script_02.sql;
@C:\Users\UserName\Documents\Scripts_Oracle\Script_03.sql;
@C:\Users\UserName\Documents\Scripts_Oracle\Script_04.sql;
QUIT;
