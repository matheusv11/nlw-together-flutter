void main() {
    var minhaClasse = Minhaclasse();
    printHelloWorld(message: minhaClasse.message);
}

void printHelloWorld({ required String message }) {
    print(message);
}

class Minhaclasse {
  var message = "DEU CERTO!!";
}