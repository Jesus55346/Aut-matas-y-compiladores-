%option noyywrap
%{
	#include<stdio.h>
	#include<C:\Flex Windows\EditPlusPortable\tokens_numero_decimal.h>
%}

%%
^[+,-]?[0-9]+(\.[0-9]+)$ {return TOKEN_DECIMAL;}
%%
int main()
{
while(1){
int token;
	token = yylex();
	if(token == TOKEN_DECIMAL){
	printf("token reconocido, es un numero decimal \n");}

	if(token==0){
	break;
	}
	}
	return 0;
}