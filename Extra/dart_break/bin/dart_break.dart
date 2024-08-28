void main (){
  List<int> numeros = [1,2,-3,4,5,6];
  for (int numero in numeros) {
    if (numero < 0 ) {
      print('Primer numero negativo encontrado: $numero');
      break;
    }
  }
}