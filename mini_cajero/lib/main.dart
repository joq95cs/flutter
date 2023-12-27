import 'package:flutter/material.dart';
import 'package:mini_cajero/pantallas/bienvenida.dart';
import 'package:mini_cajero/pantallas/nuevo.dart';

void main() {
  runApp(const MiniCajero());
}

class MiniCajero extends StatelessWidget {
  const MiniCajero({Key? k}) : super(key: k);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Bienvenida(),
        '/nuevo': (context) => Nuevo(),
      },
    );
  }
}
