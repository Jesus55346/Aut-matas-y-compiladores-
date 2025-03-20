%{
#include <stdio.h>
#define TOKEN_CARACTER 1
#define TOKEN_MAYUSCULA 2
%}

%option noyywrap

%%

[A-Z] { return TOKEN_MAYUSCULA; }
[[^A-Z]] { return TOKEN_CARACTER; }

%%

int main(int argc, char* argv[])
{
int token;
char mayus;

 if(argc > 1)
    {
        FILE *fp = fopen(argv[1], "r");
        if(fp){
            yyin = fp;
	    printf("Archivo encontrado \n");
	    printf("\n Resultado: \n");
	    }else{
	    printf("No se abrio el archivo, intentelo de nuevo\n");
	    }
    }

    while(1){
	token = yylex();
	if(token == TOKEN_MAYUSCULA){
	mayus = tolower(yytext[0]);
        printf("%c", mayus);
	}

	if(token == TOKEN_CARACTER){
	printf(yytext);
	}

	if(token==0){
	break;
	}
	}
	return 0;
}
