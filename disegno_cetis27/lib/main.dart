import 'package:disegno_cetis27/pantallas/pantalla_home_1.dart';
import 'package:disegno_cetis27/pantallas/pantalla_home_2.dart';
import 'package:disegno_cetis27/pantallas/pantalla_login.dart';
import 'package:disegno_cetis27/pantallas/pantalla_nuevo_reporte.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diseño',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PantallaHome1(),
    );
  }
}
