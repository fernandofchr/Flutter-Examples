void main(){
  // Futuro que lanza excepcion
  Future((){
    throw Exception("Algo salio mal!");
  },).then((_){print("Operación Exitosa!");}).catchError((e){ print("Error cachao $e");});
}