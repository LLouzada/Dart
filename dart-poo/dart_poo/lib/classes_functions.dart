//functions

String funcInfoFruit(
    {required String nome,
    required double peso,
    required int diasColheita,
    required int diasMadura,
    bool? isMadura}) {
  if (isMadura == null) {
    int diasParaMadura = diasMadura - diasColheita;
    if (diasParaMadura <= 0) {
      isMadura = true;
    } else {
      isMadura = false;
    }
  }
  if (diasMadura - diasColheita <= 0) {
    isMadura = false;
  }
  return "A fruta $nome tem $peso kg e foi colhida a $diasColheita dias e está ${isMadura ? "madura" : "verde, e faltam ${-(diasMadura - diasColheita)} dias para ficar madura"}";
}

class Alimento {
  String nome;
  double peso;
  int diasColheita;
  int diasMadura;
  bool? isMadura;

  Alimento(
      {required this.nome,
      required this.peso,
      required this.diasColheita,
      required this.diasMadura,
      this.isMadura});

  static bool isPodre = false;

  // metodo de alimento
  // acessivel atraves de instancia
  String infoFruit() {
    if (isMadura == null) {
      int diasParaMadura = diasMadura - diasColheita;
      if (diasParaMadura <= 0) {
        isMadura = true;
      } else {
        isMadura = false;
      }
    }
    if (diasMadura - diasColheita <= 0) {
      isMadura = false;
    }
    return "A fruta $nome tem $peso kg e foi colhida a $diasColheita dias e está ${isMadura! ? "madura" : "verde, e faltam ${-(diasMadura - diasColheita)} dias para ficar madura"}";
  }

  // acessivel sem instanciar
  static brotar(String fruta) {
    return "A fruta brotou";
  }
}
