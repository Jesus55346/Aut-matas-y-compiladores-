%option noyywrap
%{
	#include<stdio.h>
	#include<C:\Flex Windows\EditPlusPortable\tokens_numero_entero.h>
%}

%%
^[+,-]?[0-9]+$ {return TOKEN_ENTERO;}
%%
int main()
{
while(1){
int token;
	token = yylex();
	if(token == TOKEN_ENTERO){
	printf("token reconocido, es un numero entero \n");}

	if(token==0){
	break;
	}
	}
	return 0;
}