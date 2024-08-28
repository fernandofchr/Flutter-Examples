void main(){
  Map<String, int> edades = {
    'Juan': 25,
    'Maria': 30,
    'Pedro': 24,
    'Ana': 28
  };

  //Filtrar personas mayores a 25 
var mayores = edades.entries.where((entrada) => entrada.value > 25);
print(mayores);
}