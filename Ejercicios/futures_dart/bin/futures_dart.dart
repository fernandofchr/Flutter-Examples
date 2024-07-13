void main(){
  print("Inicio de programa");
  // Crear future
  Future((){
    return "Hola mundo!";
  }).then((resultado){print(resultado);});

  print("Fin del programa");
}