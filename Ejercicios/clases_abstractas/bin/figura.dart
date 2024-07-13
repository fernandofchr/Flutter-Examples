// Clase abstracta de figura
abstract class Figura {
  // Crear metodo abstracto
  double calcularArea();
  
}
// Clase hija de figura
class Rectangulo extends Figura {
  double base;
  double altura;
  Rectangulo(this.base, this.altura);
  @override
    double calcularArea() {
      return base*altura;
  }
}
// Clase Circulo 
class Circulo extends Figura {
  double radio;
  Circulo(this.radio);

  @override
    double calcularArea() {
      return 3.1416*(radio*radio);
    }
  }

