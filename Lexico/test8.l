%{
#include <stdio.h>
#define TOKEN_COINCIDENCIA 1
%}

%option noyywrap

A [aA]
B [bB]
C [cC]
D [dD]
E [eE]
F [fF]
G [gG]
H [hH]
I [iI]
J [jJ]
K [kK]
L [lL]
M [mM]
N [nN]
O [oO]
P [pP]
Q [qQ]
R [rR]
S [sS]
T [tT]
U [uU]
V [vV]
W [wW]
X [xX]
Y [yY]
Z [zZ]

%%
{A}{P}{L}{I}{C}{A}{R} {return TOKEN_COINCIDENCIA;}  
{C}{A}{L}{C}{U}{L}{A}{R} {return TOKEN_COINCIDENCIA;}  
{C}{A}{M}{B}{I}{A}{R} {return TOKEN_COINCIDENCIA;}  
{C}{O}{M}{P}{R}{O}{B}{A}{R} {return TOKEN_COINCIDENCIA;}  
{C}{O}{M}{P}{U}{T}{A}{R} {return TOKEN_COINCIDENCIA;}  
{C}{O}{N}{T}{R}{A}{S}{T}{A}{R} {return TOKEN_COINCIDENCIA;}  
{C}{O}{N}{S}{T}{R}{U}{I}{R} {return TOKEN_COINCIDENCIA;}  
{C}{O}{N}{V}{E}{R}{T}{I}{R} {return TOKEN_COINCIDENCIA;}  
{D}{E}{M}{O}{S}{T}{R}{A}{R} {return TOKEN_COINCIDENCIA;}  
{D}{E}{S}{A}{R}{R}{O}{L}{L}{A}{R} {return TOKEN_COINCIDENCIA;}  
{D}{I}{B}{U}{J}{A}{R} {return TOKEN_COINCIDENCIA;}  
{D}{R}{A}{M}{A}{T}{I}{Z}{A}{R} {return TOKEN_COINCIDENCIA;}  
{E}{J}{E}{M}{P}{L}{I}{F}{I}{C}{A}{R} {return TOKEN_COINCIDENCIA;}  
{E}{M}{P}{L}{E}{A}{R} {return TOKEN_COINCIDENCIA;}  
{E}{N}{S}{A}{M}{B}{L}{A}{R} {return TOKEN_COINCIDENCIA;}  
{E}{N}{T}{R}{E}{V}{I}{S}{T}{A}{R} {return TOKEN_COINCIDENCIA;}  
{E}{S}{C}{O}{G}{E}{R} {return TOKEN_COINCIDENCIA;}  
{E}{S}{T}{I}{M}{A}{R} {return TOKEN_COINCIDENCIA;}  
{E}{X}{T}{R}{A}{P}{O}{L}{A}{R} {return TOKEN_COINCIDENCIA;}  
{F}{A}{B}{R}{I}{C}{A}{R} {return TOKEN_COINCIDENCIA;}  
{I}{L}{U}{S}{T}{R}{A}{R} {return TOKEN_COINCIDENCIA;}  
{I}{N}{T}{E}{R}{P}{O}{L}{A}{R} {return TOKEN_COINCIDENCIA;}  
{I}{N}{T}{E}{R}{P}{R}{E}{T}{A}{R} {return TOKEN_COINCIDENCIA;}  
{H}{A}{C}{E}{R} {return TOKEN_COINCIDENCIA;}  
{U}{S}{O}{D}{E} {return TOKEN_COINCIDENCIA;}  
{M}{A}{N}{I}{P}{U}{L}{A}{R} {return TOKEN_COINCIDENCIA;}  
{M}{O}{D}{E}{L}{A}{R} {return TOKEN_COINCIDENCIA;}  
{M}{O}{D}{I}{F}{I}{C}{A}{R} {return TOKEN_COINCIDENCIA;}  
{M}{O}{S}{T}{R}{A}{R} {return TOKEN_COINCIDENCIA;}  
{O}{P}{E}{R}{A}{R} {return TOKEN_COINCIDENCIA;}  
{O}{R}{G}{A}{N}{I}{Z}{A}{R} {return TOKEN_COINCIDENCIA;}  
%%

int main(int argc, char* argv[])
{
int token;
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
	if(token == TOKEN_COINCIDENCIA){
        printf("Palabra reconocida como verbo de la taxonomía de bloom: ");
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
