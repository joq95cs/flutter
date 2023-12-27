import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'componentes/componentes.dart';

class PantallaHome1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: Componentes.getAppBar('Bienvenido: USUARIO'),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          color: Color(0xFFfafafa),
          width: double.infinity,
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Componentes.getBotonTipo2(
                      'Crear reporte', Icons.description, 300, 50, 20),
                  Componentes.getBotonTipo2(
                      'Reportes recibidos', Icons.report, 300, 50, 20),
                  Componentes.getBotonTipo2(
                      'Reportes enviados', Icons.history, 300, 50, 20),
                  Componentes.getBotonTipo2(
                      'Categorías pendientes', Icons.category, 300, 50, 20),
                  Componentes.getBotonTipo2(
                      'Ver categorías', Icons.category, 300, 50, 20),
                  Componentes.getBotonTipo2(
                      'Ver estadísticas', Icons.bar_chart, 300, 50, 20),
                  Componentes.getBotonTipo2(
                      'Registrar usuario', Icons.person_add, 300, 50, 20),
                ],
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Componentes.getBotonTipo3('Cerrar sesión'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
