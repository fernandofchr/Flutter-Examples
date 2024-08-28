void main(){
  Set<String> frutas = {'manzana', 'banana', 'cereza', 'durazno', 'fresa'};

  //Filtrar frutas que empiezan con la letra 'd'
  Iterable<String> frutasD = frutas.where((element) => element.startsWith('d'));
  print(frutasD); //
}