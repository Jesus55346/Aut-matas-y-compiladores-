%{
	#include<stdio.h>
	#include<stdlib.h>
	int yylex(void);
	int yyerror(const char *s){
		fprintf(stderr,"Error: %s\n",s);
		return 0;
	}
%}

%token NUMERO EOL OPERADOR
%start operacion

/* Reglas de la gramatica */
%%
operacion	: operacion operacion;
operacion	: operando EOL { printf("= %d\n", $1);};
operando	: NUMERO { $$ = $1; printf("number: %d\n", $$); } | operando OPERADOR operando { $$ = $1 * $3; printf("*: %d\n", $$); };
%%

int main(void){
	return yyparse();
}