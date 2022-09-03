//int, double, String, bool
int calculate() {
  return 6 * 7;
}

String hi() {
  return "Olá mundo!";
}

int idade = 26;

double altura = 1.86;

bool trues() {
  return true;
}

//const, final, var

//const can't be changed
const String nome = "Lucas";
//final is defined once and can't be changed
final String apelido = "lukinha";
//var is variable
var idadeVar = "26";

String frase = "Olá, meu nome é $nome\n :)\n";

//list
//listanomes[0] = "João"; indíce 0
//listanomes.length = 4; tamanho da lista
List<String> listanomes = ["João", "Maria", "Pedro", "José"];
List<dynamic> lucas = [17, 1.86, true, "Lucas"];

//condicionais
//if
bool maiorDeIdade = false;

bool isMaior(idade) {
  if (idade >= 18) {
    maiorDeIdade = true;
  } else {
    maiorDeIdade = false;
  }
  return maiorDeIdade;
}

//for
void forLoop() {
  for (int i = 0; i < 60; i++) {
    print('concluí ${i + 1} voltas');
  }
}
