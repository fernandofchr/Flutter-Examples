class Persona {
  String nombre;
  int? edad;

  Persona(this.nombre, [this.edad]);

  void mostrar(){
    print('Nombre: $nombre, Edad: ${edad ?? 'Desconocido'}');
  }
}

void main(){
  var persona = Persona('Juan', 30);
  var persona2 = Persona('Maria');

  persona.mostrar();
  persona2.mostrar();
}