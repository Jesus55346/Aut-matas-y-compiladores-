%option noyywrap
%{
	#include<stdio.h>
	int westeros=0;
	int invernalia=0;
	int desembarco=0;
	int nido_de_aguilas=0;
	int altojardin=0;
	int aguasdulces=0;
	int rocadragon=0;
	int roca_casterly=0;
	int bastion_de_tormentas=0;
	int dorne=0;

	int stark=0;
	int arryn=0;
	int tully=0;
	int greyjoy=0;
	int lannister=0;
	int tyrell=0;
	int martell=0;
	int baratheon=0;
	int targaryen=0;

	int casa_stark=0;
	int casa_baratheon=0;
	int casa_targaryen=0;
	int casa_lannister=0;

	void funcionPrincipal(const char* texto, int var){
	     printf("\nSe contaron %d coincidencias del lugar %s.\n", var, texto);
	}

%}
CUALQUIERA [.]
A [Aa]
B [Bb]
C [Cc]
D [Dd]
E [Ee]
F [Ff]
G [Gg]
H [Hh]
I [Ii]
J [Jj]
K [Kk]
L [Ll]
M [Mm]
N [Nn]
O [Oo]
P [Pp]
Q [Qq]
R [Rr]
S [Ss]
T [Tt]
U [Uu]
V [Vv]
W [Ww]
X [Xx]
Y [Yy]
Z [Zz]
BUENA .{2}
ESPACIO [" "]
%%
{W}{E}{S}{T}{E}{R}{O}{S} {westeros++;}
{I}{N}{V}{E}{R}{N}{A}{L}{I}{A} {invernalia++;}
{D}{E}{S}{E}{M}{B}{A}{R}{C}{O}{ESPACIO}{D}{E}{L}{ESPACIO}{R}{E}{Y} {desembarco++;}
{N}{I}{D}{O}{ESPACIO}{D}{E}{ESPACIO}{BUENA}{G}{U}{I}{L}{A}{S} {nido_de_aguilas++;}
. {}
%%
int main(int argc, char* argv[]) {
    int token;

    if (argc > 1) {
        FILE *fp = fopen(argv[1], "r");
        if (fp) {
            yyin = fp;
            printf("Archivo encontrado\n");
        } else {
            printf("No se abrió el archivo, inténtelo de nuevo\n");
            return 1;
        }
    }

    do {
        token = yylex();
	printf("Texto coincidente: %s\n", yytext);
    } while (token != 0);
funcionPrincipal("westeros", westeros);
funcionPrincipal("invernalia", invernalia);
funcionPrincipal("Desembarco del Rey", desembarco);
funcionPrincipal("Nido de aguilas", nido_de_aguilas);

    return 0;
}