// Crear un mixin
mixin Volador{
  void volar(){
    print('Ando volao');
  }
}
mixin Corredor{
  void correr(){
    print('Ando corriendo');
  }
}
mixin Nadador{
  void nadar(){
    print('Ando nadando');
  }
}
class Pato with Volador, Corredor, Nadador{}

void main (){
  Pato pato = Pato();
  pato.volar();
  pato.correr();
  pato.nadar();
}


