%option noyywrap
%{
	#include<stdio.h>
	#include<C:\Flex Windows\EditPlusPortable\tokens_curp.h>
%}

%%
^[A-Z]{4}[0-9]{2}((0[1-9])|(1[0-2]))((0[1-9])|[1-3][0-9])[H,M](AS|BS|BC|CC|CL|CM|CH|CS|DF|DG|GT|GR|HG|JC|MC|MN|MS|NT|NL|OC|PL|QT|QR|SP|SL|SR|TC|TS|TL|VZ|YN|ZS|NE)[A-Z]{3}[0-9A-Z]{2}$ {return TOKEN_CURP;}
%%
int main()
{
while(1){
int token;
	token = yylex();
	if(token == TOKEN_CURP){
	printf("token reconocido, es un CURP \n");}

	if(token==0){
	break;
	}
	}
	return 0;
} 