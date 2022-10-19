%{
   #include <stdlib.h>
   #include <string.h>
   void yyerror(char*);
   #include "y.tab.h"
%}

%option case-insensitive

%%


[01]            {
                    yylval.numero = atoi(yytext);
                    return BOOLEAN; 
                }

v[0-9]?    {
                    yylval.numero = atoi(yytext+1)-1;
                    return VARIABLE; 
                }


      
[.()=\n]      { return *yytext; }

[ ]
                

AND         {return AND;}
OR          {return OR;}
XOR         {return XOR;}
NOT         {return NOT;}

PRINT       {return PRINT;}
EXIT        {return EXIT;}

TRUE        {return TRUE;}
FALSE       {return FALSE;}

T           {return T;}
F           {return F;}

IF          {return IF;}
ELSE        {return ELSE;}
THEN        {return THEN;}


[A-Za-z0-9]+    {strcpy(yylval.cadena, yytext);
                 return CADENA;}




%%

int yywrap(){
   return 1;
}
