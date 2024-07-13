void main (){
  // Creacion de un stream
  Stream<int> stream = Stream.periodic(Duration(seconds: 1), (contador)=>contador).take(10);

  stream.listen((data)=> print("Dato recibido: $data"));

  Stream<int> otrostream = Stream.fromIterable([1,2,3,4,5,6]);
  otrostream.listen((data)=> print("Dato recibido: $data"));
  
}