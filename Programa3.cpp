#include <iostream>
#include <regex>
#include <fstream>
#include <sstream>

using namespace std;

int espaciosBlancos(string cadena) {
    regex rx("\\s");
    auto inicio = sregex_iterator(cadena.begin(), cadena.end(), rx);
    auto final = sregex_iterator();
    auto total = distance(inicio, final);
    return total;
}

int lexemasTotal(string cadena) {
    regex rx("[a-zA-Z0-9]+");
    auto inicio = sregex_iterator(cadena.begin(), cadena.end(), rx);
    auto final = sregex_iterator();
    auto total = distance(inicio, final);
    return total;
}
int palabrasTotal(string cadena) {
    regex rx("\\b[a-zA-Z]+\\b");
    auto inicio = sregex_iterator(cadena.begin(), cadena.end(), rx);
    auto final = sregex_iterator();
    auto total = distance(inicio, final);
    return total;
}
int numerosTotal(string cadena) {
    regex rx("\\b[0-9]+\\b");
    auto inicio = sregex_iterator(cadena.begin(), cadena.end(), rx);
    auto final = sregex_iterator();
    auto total = distance(inicio, final);
    return total;
}
int compuestaTotal(string cadena) {
    regex rx("\\b[a-zA-Z]+[0-9]+\\b");
    auto inicio = sregex_iterator(cadena.begin(), cadena.end(), rx);
    auto final = sregex_iterator();
    auto total = distance(inicio, final);
    return total;
}

string leerArchivo(string NombreArchivo) {
    string linea;
    string texto;
    ifstream archivo(NombreArchivo);
    if (!archivo) {
        cout << "\nerror al abrir el archivo" << endl;
    }
    else {
        while (getline(archivo, linea)) {
            texto = texto + linea+"\n";
        }
        archivo.close();
        return texto;
    }
    return "";
}

int main() {
    string entrada;
    string ruta;
    string menu =
        "\n\n-------- OPCIONES --------\n"
        "1) Clasificar cadena de caracteres\n"
        "2) Salir\n"
        "Seleccionar: ";
    int opcion;

    do {
        cout << menu;
        cin >> opcion;
        if (opcion != 1 && opcion != 2) {
            cout << "\nIngresa una opcion valida";
        }
        else {
            switch (opcion) {
            case 1:
                
               cin.ignore();
               cout << "\nIntroduce la ruta del archivo: ";
               getline(cin, ruta);
               if (leerArchivo(ruta) != "") {
                   entrada = leerArchivo(ruta);
                   cout << "\nEl archivo tiene: " << entrada.size() << " caracteres";
                   cout << "\nEl archivo tiene: " << espaciosBlancos(entrada) << " espacios en blanco";
                   cout << "\nEl archivo tiene: " << lexemasTotal(entrada) << " lexemas";
                   cout << "\nEl archivo tiene: " << palabrasTotal(entrada) << " palabras";
                   cout << "\nEl archivo tiene: " << numerosTotal(entrada) << " numeros";
                   cout << "\nEl archivo tiene: " << compuestaTotal(entrada) << " compuestas";
               }
               break;
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