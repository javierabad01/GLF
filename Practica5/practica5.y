
%{
   #include <stdio.h>
   #include <stdlib.h>
   #include <string.h>


   void yyerror(char*);
   int yylex(void);
   int varArray[10];

%}

%union {
  char cadena[100];
  int numero;
}


%token <cadena>  CADENA
%token <numero>  BOOLEAN VARIABLE AND OR XOR NOT PRINT EXIT TRUE FALSE T F IF THEN ELSE
%type <cadena>  string
%type <numero> expression bool conditional statement

%left AND OR XOR NOT IF THEN
%right ELSE



%%


program:
        program statement '\n'
        |
        ;

statement:
        expression                     // { printf("%d\n", $1); }
        | VARIABLE '=' statement        { varArray[$1] = $3;  $$=$3; }
 //       | VARIABLE '=' expression       { varArray[$1] = $3; }
        | EXIT                          {YYACCEPT;}
        | PRINT expression              {if ($2==1) {printf("TRUE\n");} else if ($2==0) {printf("FALSE\n");} else printf("%s\n", $<cadena>2); }
        ;

expression:
        BOOLEAN
        | VARIABLE                      { $$ = varArray[$1]; }
        | conditional                   { $$ = $1; }
        | expression OR expression      { $$ = $1 | $3; }
        | expression AND expression     { $$ = $1 & $3; }
        | expression XOR expression     { $$ = $1 ^ $3; }
        | NOT expression                { if ($2 == 0) {$$ = 1;} else {$$=0;}; }
        | '(' expression ')'            { $$  = $2; }
        | bool                          { $$ = $1; }
        ;
bool:
        TRUE                            { $$ = 1; }
        | FALSE                         { $$ = 0; }
        | T                             { $$ = 1; }
        | F                             { $$ = 0; }
        ;
string:
        CADENA                          { strcpy($$, $1); }

conditional:
        IF expression THEN expression   { if ($2 == 1) {$$ = $4;} else {$$=$2;}; }
        | IF expression THEN expression ELSE expression  {  if ($2 == 1) {$$ = $4;} else {$$=$6;}; }
        | IF expression THEN string   { if ($2 == 1) {strcpy($<cadena>$, $<cadena>4);} else {strcpy($<cadena>$, "");} }
        | IF expression THEN string ELSE string  {  if ($2 == 1) {strcpy($<cadena>$, $<cadena>4);} else {strcpy($<cadena>$, $<cadena>6);}; }
        ;
%%

void yyerror(char* s) {
   fprintf(stderr, "%s\n", s);   
}

int main() {
   for (int i = 0; i < 10; i++)
        varArray[i] = 0;
   yyparse();
   return 0;
}
