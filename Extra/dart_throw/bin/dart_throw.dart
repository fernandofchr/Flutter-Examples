class EdadInvalidException implements Exception{
  String causa;

  EdadInvalidException(this.causa);

  @override
  String toString(){
    return 'EdadInvalidException: $causa';
  }
}

void verificarEdad(int Edad){
  if (Edad <= 18 && Edad <= 65){
    throw EdadInvalidException('La edad debe ser igual o mayor a 18');
  }
  print('Edad verificada: $Edad');
}

void main() {
  try {
    verificarEdad(15); 
  } catch (e) {
    print('Se produjo una exepcion: $e'); 
  }
  
}