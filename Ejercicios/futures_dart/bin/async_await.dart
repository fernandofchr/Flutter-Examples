// Archivo async_await.dart
void main() async {
  print("Inicio del programa");
  String result = await Future((){
    return "Hola mundo";
  });
  
  print(result);
  print("Fin del programa");
}
