void main(){
  // Crear mapa
  Map<String, int> notas = {'ddi':10, 'bd':7, 'iot':10, 'in':8};
  print(notas['bd']);
  notas['bd'] = 10;
  print(notas);
  notas.remove('iot');
  print(notas);
 print("----------------------------------------");
  for (var n in notas.keys ) {
    print("$n: ${notas[n]}");
  }
  notas.forEach((key, value)=>print('$key: $value'));
}