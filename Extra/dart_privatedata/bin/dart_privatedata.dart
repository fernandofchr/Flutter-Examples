class CuentaBancaria {
  double _saldo;
  CuentaBancaria(this._saldo);
  //Getter para el saldo
  double get saldo => _saldo;
  //Setter para el saldo
  set saldo(double nuevoSaldo) {
    if (nuevoSaldo >= 0) {
      _saldo = nuevoSaldo;
    }else{
      print('El saldo no puede ser negativo');
    }
  }
}

void main(){
  var cuenta = CuentaBancaria(1000);
  print('Saldo actual: ${cuenta.saldo}'); 
  cuenta.saldo = 1500;
  print('Nuevo Saldo: ${cuenta.saldo}');
  cuenta.saldo = -500;
}