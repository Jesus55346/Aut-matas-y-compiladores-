%option noyywrap
%{
	#include<stdio.h>
	#include<C:\Flex Windows\EditPlusPortable\tokens_rfc.h>
%}

%%
^[A-Z]{4}[0-9]{2}((0[1-9])|(1[0-2]))((0[1-9])|[1-3][0-9])[0-9A-Z]{3}$ {return TOKEN_RFC;}
%%
int main()
{
while(1){
int token;
	token = yylex();
	if(token == TOKEN_RFC){
	printf("token reconocido, es un RFC \n");}

	if(token==0){
	break;
	}
	}
	return 0;
} 