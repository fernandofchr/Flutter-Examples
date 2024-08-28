void main(){
  List<int> numeros = [1,2,3,4,5,6,7,8,9,10];

  //Filtrar numeros pares mayores que 5
  Iterable<int> numerosPares = numeros.where((numero) => numero % 2 == 0 && numero > 5);
  print(numerosPares);
}