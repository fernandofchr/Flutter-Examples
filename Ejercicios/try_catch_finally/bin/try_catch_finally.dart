void main (){
  try {
  int resultado = 10~/2;
  print("la division es $resultado");
  } on Exception {
    print("Se produjo una excepcion:Division entre cero"); 
  }finally{
    print("No olvides limpiar tu cara y no dividir entre 0");
  } 

  try {
    // Lista 
    List<int> lista = [1,2,3,4,5];
    print(lista[0]);
  } on RangeError {
    print("Indice fuera de rango"); 
  }catch(e){
    print("Se produjo un error: $e");
  }finally{
    print("Operacion completada");
  }
}