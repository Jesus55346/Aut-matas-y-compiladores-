%{
#include <stdio.h>
#define TOKEN_BLOOM 1
#define TOKEN_ACP 2
#define TOKEN_CONJUNCIONES 3
#define TOKEN_PREPOSICIONES 4
#define TOKEN_PRONOMBRES 5
%}

%option noyywrap

ESPACIO [" "]
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
{A}{N}{A}{L}{I}{Z}{A}{R} {return TOKEN_BLOOM;}
{A}{S}{O}{C}{I}{A}{R} {return TOKEN_BLOOM;}
{A}{S}{U}{M}{I}{R} {return TOKEN_BLOOM;}
{C}{A}{L}{C}{U}{L}{A}{R} {return TOKEN_BLOOM;}
{C}{A}{T}{E}{G}{O}{R}{I}{Z}{A}{R} {return TOKEN_BLOOM;}
{C}{L}{A}{S}{I}{F}{I}{C}{A}{R} {return TOKEN_BLOOM;}
{C}{O}{M}{P}{A}{R}{A}{R} {return TOKEN_BLOOM;}
{C}{O}{M}{P}{O}{N}{E}{R} {return TOKEN_BLOOM;}
{C}{O}{N}{C}{L}{U}{I}{R} {return TOKEN_BLOOM;}
{C}{O}{N}{T}{R}{A}{S}{T}{A}{R} {return TOKEN_BLOOM;}
{C}{U}{E}{S}{T}{I}{O}{N}{A}{R} {return TOKEN_BLOOM;}
{C}{R}{I}{T}{I}{C}{A}{R} {return TOKEN_BLOOM;}
{D}{E}{S}{C}{U}{B}{R}{I}{R} {return TOKEN_BLOOM;}
{D}{E}{S}{M}{E}{N}{U}{Z}{A}{R} {return TOKEN_BLOOM;}
{D}{E}{S}{T}{A}{C}{A}{R} {return TOKEN_BLOOM;}
{D}{I}{B}{U}{J}{A}{R} {return TOKEN_BLOOM;}
{D}{I}{A}{G}{R}{A}{M}{A}{R} {return TOKEN_BLOOM;}
{D}{I}{F}{E}{R}{E}{N}{C}{I}{A}{R} {return TOKEN_BLOOM;}
{D}{I}{S}{C}{U}{T}{I}{R} {return TOKEN_BLOOM;}
{D}{I}{S}{C}{R}{I}{M}{I}{N}{A}{R} {return TOKEN_BLOOM;}
{D}{I}{S}{E}{C}{A}{R} {return TOKEN_BLOOM;}
{D}{I}{S}{T}{I}{N}{G}{U}{I}{R} {return TOKEN_BLOOM;}
{D}{I}{V}{I}{D}{I}{R} {return TOKEN_BLOOM;}
{E}{L}{E}{G}{I}{R} {return TOKEN_BLOOM;}
{E}{N}{C}{U}{E}{S}{T}{A}{R} {return TOKEN_BLOOM;}
{E}{N}{S}{A}{M}{B}{L}{A}{R} {return TOKEN_BLOOM;}
{E}{S}{T}{I}{M}{A}{R} {return TOKEN_BLOOM;}
{E}{X}{A}{M}{I}{N}{A}{R} {return TOKEN_BLOOM;}
{E}{X}{P}{E}{R}{I}{M}{E}{N}{T}{A}{R} {return TOKEN_BLOOM;}
{E}{X}{P}{L}{I}{C}{A}{R} {return TOKEN_BLOOM;}
{E}{X}{T}{R}{A}{P}{O}{L}{A}{R} {return TOKEN_BLOOM;}
{F}{U}{N}{C}{I}{O}{N}{A}{R} {return TOKEN_BLOOM;}
{I}{N}{D}{U}{C}{I}{R} {return TOKEN_BLOOM;}
{I}{N}{F}{E}{R}{I}{R} {return TOKEN_BLOOM;}
{I}{N}{S}{P}{E}{C}{C}{I}{O}{N}{A}{R} {return TOKEN_BLOOM;}
{S}{U}{B}{D}{I}{V}{I}{D}{I}{R} {return TOKEN_BLOOM;}

{A}{M}{A}{B}{L}{E} {return TOKEN_ACP;}
{A}{L}{E}{G}{R}{E} {return TOKEN_ACP;}
{A}{T}{E}{N}{T}{O} {return TOKEN_ACP;}
{B}{E}{L}{L}{O} {return TOKEN_ACP;}
{B}{R}{I}{L}{L}{A}{N}{T}{E} {return TOKEN_ACP;}
{C}{A}{L}{I}{D}{O} {return TOKEN_ACP;}
{C}{A}{P}{A}{Z} {return TOKEN_ACP;}
{C}{A}{R}{I}{N}{O}{S}{O} {return TOKEN_ACP;}
{C}{O}{R}{T}{E}{S} {return TOKEN_ACP;}
{C}{R}{E}{A}{T}{I}{V}{O} {return TOKEN_ACP;}
{D}{E}{D}{I}{C}{A}{D}{O} {return TOKEN_ACP;}
{D}{U}{L}{C}{E} {return TOKEN_ACP;}
{E}{N}{E}{R}{G}{I}{C}{O} {return TOKEN_ACP;}
{E}{S}{F}{O}{R}{Z}{A}{D}{O} {return TOKEN_ACP;}
{E}{X}{C}{E}{L}{E}{N}{T}{E} {return TOKEN_ACP;}
{F}{I}{E}{L} {return TOKEN_ACP;}
{F}{R}{A}{N}{C}{O} {return TOKEN_ACP;}
{G}{E}{N}{E}{R}{O}{S}{O} {return TOKEN_ACP;}
{H}{O}{N}{E}{S}{T}{O} {return TOKEN_ACP;}
{I}{N}{T}{E}{L}{I}{G}{E}{N}{T}{E} {return TOKEN_ACP;}

{Y} {return TOKEN_CONJUNCIONES;}
{E} {return TOKEN_CONJUNCIONES;}
{O} {return TOKEN_CONJUNCIONES;}
{U} {return TOKEN_CONJUNCIONES;}
{P}{E}{R}{O} {return TOKEN_CONJUNCIONES;}
{M}{A}{S} {return TOKEN_CONJUNCIONES;}
{A}{U}{N}{Q}{U}{E} {return TOKEN_CONJUNCIONES;}
{S}{I} {return TOKEN_CONJUNCIONES;}
{P}{O}{R}{Q}{U}{E} {return TOKEN_CONJUNCIONES;}
{P}{U}{E}{S} {return TOKEN_CONJUNCIONES;}
{C}{O}{M}{O} {return TOKEN_CONJUNCIONES;}
{Q}{U}{E} {return TOKEN_CONJUNCIONES;}
{S}{I}{N}{O} {return TOKEN_CONJUNCIONES;}
{N}{I} {return TOKEN_CONJUNCIONES;}
{B}{I}{E}{N} {return TOKEN_CONJUNCIONES;}
{Y}{A} {return TOKEN_CONJUNCIONES;}
{L}{U}{E}{G}{O} {return TOKEN_CONJUNCIONES;}
{T}{A}{N}{T}{O} {return TOKEN_CONJUNCIONES;}
{S}{I}{N} {E}{M}{B}{A}{R}{G}{O} {return TOKEN_CONJUNCIONES;}

{A}{N}{T}{E} {return TOKEN_PREPOSICIONES;}
{C}{O}{N} {return TOKEN_PREPOSICIONES;}
{D}{E} {return TOKEN_PREPOSICIONES;}
{D}{E}{L}{A} {return TOKEN_PREPOSICIONES;}
{E}{N} {return TOKEN_PREPOSICIONES;}
{E}{N}{T}{R}{E} {return TOKEN_PREPOSICIONES;}

{E}{L} {return TOKEN_PRONOMBRES;}  
{L}{A} {return TOKEN_PRONOMBRES;}  
{L}{O} {return TOKEN_PRONOMBRES;}  
{L}{A}{S} {return TOKEN_PRONOMBRES;}  
{L}{O}{S} {return TOKEN_PRONOMBRES;}  
{U}{S}{T}{E}{D} {return TOKEN_PRONOMBRES;}  
{Y}{O} {return TOKEN_PRONOMBRES;}  
{T}{U} {return TOKEN_PRONOMBRES;}  
{E}{L}{L}{A} {return TOKEN_PRONOMBRES;}  
{N}{O}{S}{O}{T}{R}{O}{S} {return TOKEN_PRONOMBRES;}  

%%
int main(int argc, char* argv[])
{
int token;
char mayus;
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
	if(token == TOKEN_CONJUNCIONES){
        printf("-> Conjuncion reconocida: ");
	for(x = 0; x<yyleng; x++){
	printf("%c", yytext[x]);
	}
	}
	if(token == TOKEN_BLOOM) {
    printf("-> Verbo de la taxonomía de Bloom reconocido: ");
    for(x = 0; x < yyleng; x++) {
        printf("%c", yytext[x]);
    }
}

if(token == TOKEN_ACP) {
    printf("-> Adjetivo calificativo positivo reconocido: ");
    for(x = 0; x < yyleng; x++) {
        printf("%c", yytext[x]);
    }
}

if(token == TOKEN_PRONOMBRES) {
    printf("-> Pronombre reconocido: ");
    for(x = 0; x < yyleng; x++) {
        printf("%c", yytext[x]);
    }
}

if(token == TOKEN_PREPOSICIONES) {
    printf("-> Preposicion reconocida: ");
    for(x = 0; x < yyleng; x++) {
        printf("%c", yytext[x]);
    }
}
	if(token==0){
	break;
	}
	}
	return 0;
}