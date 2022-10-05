// classe abstrata, nao pode ser instanciada
// tambem chamada de interface
abstract class Bolo {
  void separarIngredientes();

  void misturarIngredientes();

  void assar();

  void comer();
}

// implementando a classe abstrata
class BoloChocolate implements Bolo {
  // implementando os metodos da classe abstrata (obrigatorio)
  // todos os metodos da classe abstrata devem ser implementados
  @override
  void assar() {
    print('Assando o bolo de chocolate');
  }

  @override
  void comer() {
    print('Comendo o bolo de chocolate');
  }

  @override
  void misturarIngredientes() {
    print('Misturando os ingredientes do bolo de chocolate');
  }

  @override
  void separarIngredientes() {
    print('Separando os ingredientes do bolo de chocolate');
  }
}

// extensao da classe bolochocolate que implementa a classe abstrata
// nao e obrigatorio implementar os metodos da classe abstrata
class BoloChocolateAmargo extends BoloChocolate {
  // sobrescrevendo o metodo da classe abstrata
  // polimorfismo
  @override
  void misturarIngredientes() {
    print('Misturando os ingredientes do bolo de chocolate amargo');
    // chamando o metodo da classe abstrata implementado na classe mãe (BoloChocolate)
    super.misturarIngredientes();
  }

  @override
  void comer() {
    print('Comendo o bolo de chocolate amargo');
  }
}
