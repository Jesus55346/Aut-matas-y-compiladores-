%option noyywrap
%{
	#include<stdio.h>
	#define TOKEN_PALABRA_RESERVADA 1
	#define TOKEN_TIPO_DATO 2
	#define TOKEN_VARIABLE 3
%}

%%
auto {return TOKEN_PALABRA_RESERVADA;}
else {return TOKEN_PALABRA_RESERVADA;}
long {return TOKEN_PALABRA_RESERVADA;}
switch {return TOKEN_PALABRA_RESERVADA;}
break {return TOKEN_PALABRA_RESERVADA;}
enum {return TOKEN_PALABRA_RESERVADA;}
register {return TOKEN_PALABRA_RESERVADA;}
typedef {return TOKEN_PALABRA_RESERVADA;}
case {return TOKEN_PALABRA_RESERVADA;}
extern {return TOKEN_PALABRA_RESERVADA;}
return {return TOKEN_PALABRA_RESERVADA;}
union {return TOKEN_PALABRA_RESERVADA;}
short {return TOKEN_PALABRA_RESERVADA;}
unsigned {return TOKEN_PALABRA_RESERVADA;}
const {return TOKEN_PALABRA_RESERVADA;}
for {return TOKEN_PALABRA_RESERVADA;}
signed {return TOKEN_PALABRA_RESERVADA;}
continue {return TOKEN_PALABRA_RESERVADA;}
goto {return TOKEN_PALABRA_RESERVADA;}
sizeof {return TOKEN_PALABRA_RESERVADA;}
volatile {return TOKEN_PALABRA_RESERVADA;}
default {return TOKEN_PALABRA_RESERVADA;}
if {return TOKEN_PALABRA_RESERVADA;}
static {return TOKEN_PALABRA_RESERVADA;}
while {return TOKEN_PALABRA_RESERVADA;}
do {return TOKEN_PALABRA_RESERVADA;}
struct {return TOKEN_PALABRA_RESERVADA;}
_Packed {return TOKEN_PALABRA_RESERVADA;}


char {return TOKEN_TIPO_DATO;}
int {return TOKEN_TIPO_DATO;}
float {return TOKEN_TIPO_DATO;}
double {return TOKEN_TIPO_DATO;}
void {return TOKEN_TIPO_DATO;}

[a-zA-Z_][a-zA-Z0-9_]* {return TOKEN_VARIABLE;}

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
	if(token == TOKEN_PALABRA_RESERVADA){
        printf("\n-> Palabra reservada reconocida: ");
	for(x = 0; x<yyleng; x++){
	printf("%c", yytext[x]);
	}
	}
	if(token == TOKEN_TIPO_DATO){
        printf("\n-> Palabra reconocida como tipo de dato: ");
	for(x = 0; x<yyleng; x++){
	printf("%c", yytext[x]);
	}
	}
	if(token == TOKEN_VARIABLE){
        printf("\n-> Variable reconocida: ");
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
