import 'package:flutter_test/flutter_test.dart';

import 'package:assets/main.dart';

void main() {
  test('test_suma', () {
    expect(suma(10, 20), 30);
  });

  test('test_split', () {
    var cadena = 'Hola Perro Gato';
    expect(cadena.split(' '), equals(['Hola', 'Perro', 'Gato']));
  });
}
