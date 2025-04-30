%{
#include <stdio.h>
#include <string.h>
#include "struct.h"
int yylex();
int yyerror();
symbtbl *ptr;
%}
%union
{
struct{
	int numerorighe;
	symbtbl *Mystr;
};
};
%token <numerorighe> NL
%token <Mystr> IDENTIFIER CONST '<' '>' '=' '*' '(' ')'
%token SELECT FROM WHERE AND OR DELETE INSERT INTO VALUES
%type <Mystr> identifiers cond compare op

%%

lines: line
	| lines line
	| lines error
	;
line: select identifiers FROM identifiers WHERE cond NL {
    ptr = putsymb($2, $4, $7);
}
| DELETE FROM identifiers WHERE cond NL {
    ptr = putsymb("DELETE", $3, $5); 
}
| INSERT INTO identifiers VALUES '(' identifiers ')' NL {
    ptr = putsymb("INSERT", $3, $6); 
}
;
identifiers:    '*' {$$="ALL";}
		| IDENTIFIER {$$=$1;}
		| IDENTIFIER','identifiers{char* s=malloc(sizeof(char)*(strlen($1)+strlen($3)+1));
 strcpy(s,$1);strcat(s," ");strcat(s,$3); $$=s;
};
select: SELECT;

cond: IDENTIFIER op compare
    | cond conn cond
    | '(' cond ')'
    ;

compare: IDENTIFIER
	| CONST;

op:	 '<'
	|'='
	|'>';

conn: 	  AND
	| OR;
%%
int yyerror(char *s){
  printf("  --ERROR--  %s\n\n",s);
  /*printf("\tERROR IN LINE %4d\n", yylval+1);
  */
	return *s;
}
int main() {
FILE* del;
char filename[] = "results.txt";
del = fopen(filename,"a");
remove(filename);
yyparse();
return 0;
}
