#include <iostream>

using namespace std;

bool CEntero(string var) {
    if (var.empty()) { return false; }
    int x = var.size();

    for (int y = 0; y < x; y++) {
       
            if (var[y] == '+' || var[y] == '-') {
                y++;
            }
            else {
                if (var[y] < '0' || var[y]>'9') {
                    return false;
                }
            }
        
    }
    return true;
}

bool CPalabra(string var) {
    if (var.empty()) { return false; }
    else {
        for (int y = 0; y < var.size();y++) {
            
             
                if ((var[y] < 'A' || var[y] > 'Z') && (var[y] < 'a' || var[y] > 'z')) {
                    return false;
                }
            
        }
    }

    return true;
}


int main() {
    string entrada;
    string menu =
        "\n\n-------- OPCIONES --------\n"
        "1) Clasificar cadena de caracteres\n"
        "2) Salir\n"
        "Seleccionar: ";
    int opcion;

    do {
        cout << menu;
        cin >> opcion;
        if (opcion != 1 && opcion != 2 ) {
            cout << "\nIngresa una opcion valida";
        }
        else {
            switch (opcion) {
            case 1:
                cout << "\nCadena a ingresar: ";
                cin >> entrada;
                if (CEntero(entrada)) {
                    cout << "\nLa cadena es numero entero";
                }
                else {
                    if (CPalabra(entrada)) {
                        cout << "\nLa cadena es una palabra";
                    }
                    else {
                        cout << "\nLa cadena es compuesta";
                    }
                }

            case 2:
                cout << "\nFIN DEL PROGRAMA\n";
                break;

            default:
                cout << "\nIngresa una opcion valida\n";
                break;
            }
        }

    } while (opcion != 2);

    return 0;
}