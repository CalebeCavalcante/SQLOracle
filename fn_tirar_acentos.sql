create or replace function TiraAcento
(pString in varchar2) return varchar2 is
-- 
vStringReturn varchar2(2000);
-- 
begin
  vStringReturn := translate( pString,
                    'ÁÇÉÍÓÚÀÈÌÒÙÂÊÎÔÛÃÕËÜáçéíóúàèìòùâêîôûãõëü',
                    'ACEIOUAEIOUAEIOUAOEUaceiouaeiouaeiouaoeu');
  --
  return vStringReturn;
  --
end;
