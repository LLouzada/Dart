import 'package:in_out/in_out.dart' as io;
import 'dart:io';

void main(List<String> arguments) {
  String? r;
  late double raio;
  int? opt;
  String? medida;

  while (r == null || r.isEmpty) {
    //clear the screen
    print('\x1B[2J\x1B[0;0H');

    //begin
    print('Calculadora de Área do Círculo\n');
    print('Informe o raio: ');
    r = stdin.readLineSync();

    //check if r is a number
    if (r != null && r.isNotEmpty) {
      var imput = double.tryParse(r);
      if (imput != null) {
        raio = imput;
      } else {
        print('O valor informado não é um número');
        r = null;
        //wait 1 second
        sleep(Duration(seconds: 1));
      }
    }
    //selector for unit
    while (opt == null) {
      //clear the screen
      print('\x1B[2J\x1B[0;0H');

      print('Raio: $raio\n');

      print('Informe a unidade de medida: ');
      print('1 - milímetros');
      print('2 - centímetros');
      print('3 - polegadas');
      print('4 - metros');
      print('5 - quilômetros');
      print('6 - milhas');
      var imput2 = stdin.readLineSync();
      if (imput2 != null && imput2.isNotEmpty) {
        var aux = int.tryParse(imput2);
        if (aux != null && aux > 0 && aux < 7) {
          opt = aux;
        } else {
          print('Selecione uma opção válida');
          opt = null;
          //wait 1 second
          sleep(Duration(seconds: 1));
        }
      }
    }
    //clear the screen
    print('\x1B[2J\x1B[0;0H');

    switch (opt) {
      case 1:
        medida = 'mm';
        break;
      case 2:
        medida = 'cm';
        break;
      case 3:
        medida = 'pol';
        break;
      case 4:
        medida = 'm';
        break;
      case 5:
        medida = 'km';
        break;
      case 6:
        medida = 'mi';
        break;
    }
    io.Raio.unit = medida;

    io.Raio raioFinal = io.Raio(raio);
    print(raioFinal);
    sleep(Duration(seconds: 2));
  }
}
