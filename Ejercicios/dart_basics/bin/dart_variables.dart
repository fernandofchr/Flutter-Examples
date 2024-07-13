
int sumar(int numero,int numero2){
  print("Función suma");
  return numero + numero2;
}

double promedio(double num1, double num2, double num3){
  print("Función promedio");
  return (num1 + num2 + num3) / 3;
}

void main(){
  int numero = 1000;
  int numero2 = 3000;
  int resultado = sumar(numero, numero2);
  print('La suma de $numero más $numero2 es = $resultado ');

  double calificacion = 8.7;
  double calificacion2 = 6.5;
  double calificacion3 = 9.8;
  print(promedio(calificacion, calificacion2, calificacion3));

  String miCrush = 'Mia Khalifa';
  print('$miCrush te late ser mi chava?');

  bool isValid = false; 
  print("Me quiere mi crush? ${isValid==true ? 'Si' : 'No es válido'}");
}