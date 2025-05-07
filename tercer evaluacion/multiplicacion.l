%{
	#include<stdio.h>
	#include "y.tab.h"
	extern YYSTYPE yylnal;
	int yywrap();
	int yyerror(char *s);
	extern int yylval;

%}
/* Seccion de reglas */
%%
[0-9]+ {yylval = atoi(yytext); return NUMERO;}
"*" {return OPERADOR;}
\n { return EOL; }
. {}

%%
int yywrap(void)
{
	return 1;
}
