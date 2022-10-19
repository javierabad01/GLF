
DIGITO   [+-]?[0-9]+
PUNTOFLOTANTE [-+]?[0-9]*\.?[0-9]+([eE][-+]?[0-9]+)?
LETRA    [a-zA-Z]
CADENA [a-zA-Z0-9]*

%x ELIMINAR

%%
"//".*              ;
"/*"                BEGIN(ELIMINAR);
<ELIMINAR>(.|\n)    ;
<ELIMINAR>"*/"      BEGIN 0;
{DIGITO}            printf("INT ");
{PUNTOFLOTANTE}     printf("FLOAT");
if                  printf("IF");
else                printf("ELSE");
{LETRA}{CADENA}     printf("ID (%s, %d) " , yytext, yyleng);

%%

int main (int argc, char** argv){
        if (argc >1){
        FILE *fd;
        fd=fopen(argv[1], "r");
    		if (!fd) {
     			fprintf(stderr, "Ha ocurrido un error abriendo el fichero %s\n", argv[1]);
                exit(1);
           }
           yyin=fd;
        }
    yylex();

}

