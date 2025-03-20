%option noyywrap
%{
	#include<stdio.h>
	#define TOKEN_COMENTARIO 1
	#define TOKEN_COMENTARIO_LINEA 2
	#define TOKEN_TEXTO_PANTALLA 3
%}

%%
\/\*[^\/]*\*\/ {return TOKEN_COMENTARIO;}
\/\/.*$ {return TOKEN_COMENTARIO_LINEA;}
\".*\" {return TOKEN_TEXTO_PANTALLA;}


%%

int main(int argc, char* argv[])
{
int token;
char mayus;
int x;
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
	if(token == TOKEN_COMENTARIO){
        printf("\n-> Comentario de varias lineas reconocido: ");
	for(x = 0; x<yyleng; x++){
	printf("%c", yytext[x]);
	}
	}
	if(token == TOKEN_COMENTARIO_LINEA){
        printf("\n-> Comentario de una linea reconocido: ");
	for(x = 0; x<yyleng; x++){
	printf("%c", yytext[x]);
	}
	}
	if(token == TOKEN_TEXTO_PANTALLA){
        printf("\n-> Texto que se muestra en pantalla reconocido: ");
	for(x = 0; x<yyleng; x++){
	printf("%c", yytext[x]);
	}
	}
	
	if(token==0){
	break;
	}
	}
	return 0;
}
