import 'figura.dart';
// Crear funcion main
void main(){
  // Crear variable
  var circulo = Circulo(8);
  print("El area del circulo con radio ${circulo.radio} es :${circulo.calcularArea()}");

  var rectangulo = Rectangulo(10,50);
  print("El area del rectangulo con base de ${rectangulo.base} y altura de ${rectangulo.altura} es :${rectangulo.calcularArea()}");
}