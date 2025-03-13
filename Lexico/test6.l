%option noyywrap
%{
	#include<stdio.h>
	#include<C:\Flex Windows\EditPlusPortable\tokens_correo.h>
%}

%%
^[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)*\@([a-zA-Z0-9]{2,}[.][a-zA-Z0-9_]{2,}(\.[a-zA-Z0-9_]{2,})*)$ {return TOKEN_CORREO;}
%%
int main()
{
while(1){
int token;
	token = yylex();
	if(token == TOKEN_CORREO){
	printf("token reconocido, es un correo \n");}

	if(token==0){
	break;
	}
	}
	return 0;
} 