#include <iostream>
#include <string>
using namespace std;

int posicion(string var, int pos) {
    for (int y = pos; y < var.size();y++) {
        if (var[y] == ' ') {
            y++;
            return y;
        }
    }
    return 0;
}

bool CEntero(string var, int pos) {


    if (var.empty()) { return false; }

    for (int y = pos; y < var.size(); y++) {
        if (var[y] == ' ') {
            break;
        }
        else {
            if (var[y] == '+' || var[y] == '-') {
                y++;
            }
            else {
                if (var[y] < '0' || var[y]>'9') {
                    return false;
                }
            }
        }
    }
    return true;
}

bool CPalabra(string var, int pos) {
    if (var.empty()) { return false; }
    else {
        for (int y = pos; y < var.size();y++) {
            if (var[y] == ' ') {
                break;
            }
            else {
                if ((var[y] < 'A' || var[y] > 'Z') && (var[y] < 'a' || var[y] > 'z')) {
                    return false;
                }
            }
        }
    }

    return true;
}

bool CComprobacion(string entrada) {
    int enteras = 0, palabras = 0, compuestas = 0;
    int pos = 0;
    do {
        if (CEntero(entrada, pos)) {
            enteras++;
        }
        else {
            if (CPalabra(entrada, pos)) {
                palabras++;
            }else{
                    compuestas++;
            }
        }
        pos = posicion(entrada,pos);
    } while (pos != 0);
    cout << "\n" << enteras << "-Enteras, " << palabras << "-Palabras, " << compuestas << "-Compuestas"<<"\n";
    return true;
}


int main() {
    string entrada;
    string menu =
        "\n-------- OPCIONES --------\n"
        "1) Clasificar cadena de caracteres\n"
        "2) Salir\n"
        "Seleccionar: ";
    int opcion;

    do {
        cout << menu;
        cin >> opcion;
        cin.ignore();
        cout << "\n";
        if (opcion != 1 && opcion != 2) {
            cout << "\nIngresa una opcion valida";
        }
        else {
            switch (opcion) {
            case 1:
                cout << "Ingresa el dato: ";
                getline(cin, entrada);
                CComprobacion(entrada);
                break;

            case 2:
                cout << "FIN DEL PROGRAMA\n";
                break;

            default:
                cout << "Ingresa una opción válida\n";
                break;
            }
        }

    } while (opcion != 2);

    return 0;
}