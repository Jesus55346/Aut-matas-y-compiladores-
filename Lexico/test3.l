%option noyywrap
%{
	#include<stdio.h>
	#include<C:\Flex Windows\EditPlusPortable\tokens_variable.h>
%}

%%
^[a-zA-Z][a-zA-Z0-9_]*$ {return TOKEN_VARIABLE;}
%%
int main()
{
while(1){
int token;
	token = yylex();
	if(token == TOKEN_VARIABLE){
	printf("token reconocido, es una variable(identificador) \n");}

	if(token==0){
	break;
	}
	}
	return 0;
} 