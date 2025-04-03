%option noyywrap
%{
    #include <stdio.h>

    int lineas = 1;
    int palabras = 0;
    int caracteres = 0;
    int inicioni = 0;
    int inicionum = 0;
    int iniciobto = 0;
    int finjo = 0;
    int digitos = 0;
%}

%%
[bB][a-zA-Z\xC3\xA1\xC3\xA9\xC3\xAD\xC3\xB3\xC3\xBA\xC3\x81\xC3\x89\xC3\x8D\xC3\x93\xC3\x9A\xC3\xB1\xC3\x91]+[tT][oO]{iniciobto++;caracteres += yyleng;palabras++;}
[0-9]+{digitos+=yyleng;caracteres++;palabras++;}
[Nn][iI][a-zA-Z\xC3\xA1\xC3\xA9\xC3\xAD\xC3\xB3\xC3\xBA\xC3\x81\xC3\x89\xC3\x8D\xC3\x93\xC3\x9A\xC3\xB1\xC3\x910-9]*{inicioni++;caracteres += yyleng;palabras++;}
[a-zA-Z\xC3\xA1\xC3\xA9\xC3\xAD\xC3\xB3\xC3\xBA\xC3\x81\xC3\x89\xC3\x8D\xC3\x93\xC3\x9A\xC3\xB1\xC3\x91]+[jJ][oO]{finjo++;caracteres += yyleng;palabras++;}
[Nn](\xC3\xBA|\xC3\x9A)[Mm][a-zA-Z\xC3\xA1\xC3\xA9\xC3\xAD\xC3\xB3\xC3\xBA\xC3\x81\xC3\x89\xC3\x8D\xC3\x93\xC3\x9A\xC3\xB1\xC3\x910-9]*{inicionum++;caracteres += yyleng;palabras++;}
[a-zA-Z\xC3\xA1\xC3\xA9\xC3\xAD\xC3\xB3\xC3\xBA\xC3\x81\xC3\x89\xC3\x8D\xC3\x93\xC3\x9A\xC3\xB1\xC3\x910-9]+{palabras++;caracteres += yyleng;}
. {caracteres++;}
\n {lineas++;}

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
    } while (token != 0);

    printf("\nSe contaron %d líneas.\n", lineas);
    printf("Se contaron %d palabras.\n", palabras);
    printf("Se contaron %d caracteres.\n", caracteres);
    printf("Se contaron %d palabras que inician en 'ni'.\n", inicioni);
    printf("Se contaron %d palabras que inician en 'num'.\n", inicionum);
    printf("Se contaron %d palabras que inician en 'b' y terminan en 'o'.\n", iniciobto);
    printf("Se contaron %d palabras que terminan en 'jo'.\n", finjo);
    printf("Se contaron %d dígitos.\n", digitos);

    return 0;
}