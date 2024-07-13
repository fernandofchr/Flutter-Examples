import 'dart:io';

int suma(int num1, int num2){
  return num1 + num2;
}
void saludar(String nombre){
  print("Hola $nombre");
}
// Funcion con parametros opcionales
void imprimirTicket(String producto, [int cantidad = 1, int monto = 1]){
  print("Producto: $producto, $cantidad , $monto" );
}
void imprimirCorreo(String correo, {String remitente = "Anonimo}"}){
  print("Correo: $correo, Remitente: $remitente");
}
// lamnda function
var miResta = (int a, int b) => a-b;
void main(List<String> arguments) {
  int n1, n2;
  print("Ingrese el primer número:");
  n1 = int.parse(stdin.readLineSync()!);
  print("Ingrese el segundo número:");
  n2 = int.parse(stdin.readLineSync()!);

  print("la suma es ${suma(n1, n2)}");
  saludar("Fernando Dios");
  imprimirTicket("cocacola");
  imprimirTicket("chocolate", 2, 12);
  imprimirCorreo("estadias@gmail.com", remitente: "Presidente");
  // Funcion Lambda
  miFuncion(int a, int b) => a + b;
  print("La suma es ${miFuncion(5, 7)}");
  print("La resta es ${miResta(200, 100)}");

  // Lista de numeros
  List<int> numeros = [1, 2, 3, 4, 5];
  numeros.forEach((n){print("numero: $n");});
}