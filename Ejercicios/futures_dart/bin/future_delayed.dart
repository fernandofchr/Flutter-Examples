void main(){
  print("Inicio de programa");
  Future.delayed(Duration(seconds: 3), (){
    return "Hola 3 segundos despues";
  }).then((result)=>{print(result)});
  print("Fin de programa");
}