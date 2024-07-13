void main()async{
  print("main start");
   // Creacion de un stream
  Stream<int> stream = Stream.periodic(Duration(seconds: 1), (contador)=>contador).take(10);

  await for (var data in stream){
    print("Dato recibido $data");
  }

  print("Fin de strem");

}