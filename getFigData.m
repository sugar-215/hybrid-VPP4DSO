NAME1=get(gco,'DisplayName');
spaces=strfind(NAME1,' ');
NAME1(spaces)='_';
clear spaces

div=strfind(NAME1,'/');
NAME1(div)='_';
clear div

uml=strfind(NAME1,'ö');
NAME1(uml)='_';
clear uml

tmp1=strfind(NAME1,'(');
NAME1(tmp1)='_';
clear tmp1

tmp2=strfind(NAME1,')');
NAME1(tmp2)='_';
clear tmp2

tmp1=strfind(NAME1,'{');
NAME1(tmp1)='_';
clear tmp1

tmp1=strfind(NAME1,'}');
NAME1(tmp1)='_';
clear tmp1

tmp3=strfind(NAME1,'-');
NAME1(tmp3)='_';
clear tmp3

NAME2=['A' NAME1];
clear NAME1

eval([NAME2 '_XData=get(gco,' char(39) 'XData' char(39) ');'])
eval([NAME2 '_YData=get(gco,' char(39) 'YData' char(39) ');'])
clear NAME2