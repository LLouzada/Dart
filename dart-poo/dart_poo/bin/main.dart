import 'package:dart_poo/classes_functions.dart';
import 'package:dart_poo/abstract.dart';

void main() {
  // function
  String infoFruta = funcInfoFruit(
      nome: 'Laranja',
      peso: 0.4,
      diasColheita: 12,
      diasMadura: 11,
      isMadura: true);
  print(infoFruta);

  // instanciando a classe
  Alimento laranja = Alimento(
      nome: 'Laranja',
      peso: 0.4,
      diasColheita: 12,
      diasMadura: 11,
      isMadura: true);

  // acessando o metodo estatico da classe (sem instanciar)
  print(Alimento.brotar('Laranja'));

  // acessando variavel estatica da classe (sem instanciar)
  Alimento.isPodre = true;

  // acessando o metodo da classe (instanciando)
  print(laranja.infoFruit());
}
