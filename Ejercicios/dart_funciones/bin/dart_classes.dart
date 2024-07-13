class Animal {
  String _nombre = "Solovino";
  int _edad = 1;
  // constructor con parametros
  Animal({String nombre="Anonimo", int edad=0}){
    _nombre = nombre;
    _edad = edad;
    print("Se ha creado un animal");  
  }
  void comer(){
    print("comiendo");
  }
  void cambiarEstado(String nombre, int edad){
    _nombre = nombre;
    _edad = edad;
  }
  void imprimir(){
    print("El animal es: $_nombre, con edad de $_edad años de edad");
  }
}

void main(){
  Animal animal = Animal();
  animal._nombre="Leon";
  animal._edad=5;
  animal.imprimir();
  animal.comer();
  print(animal is Animal);
  animal.cambiarEstado("Puto gato", 23);
  animal.imprimir();
  Animal animal2 = Animal();
  Animal animal3 = Animal(nombre: "Pantera", edad: 22);
  animal3.imprimir();
}