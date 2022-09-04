class Raio {
  static const double pi = 3.1415;
  final double raio;
  Raio(this.raio);

  double calcularArea() {
    return pi * raio * raio;
  }

  //setters for unit
  static String? unit;

  @override
  String toString() {
    return 'A área do círculo de raio $raio$unit é ${calcularArea().toStringAsPrecision(5)}$unit²';
  }
}
