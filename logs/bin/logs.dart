import 'dart:developer';

const String TAG = 'logs';
void main(List<String> arguments) {
  log(TAG + ', main. Inicio del main.');
  suma(100, 100);
}

int suma(int n1, int n2) {
  var res = n1 + n2;
  log(TAG + ', suma. Resultado = $res' + '.');
  return n1 + n2;
}
