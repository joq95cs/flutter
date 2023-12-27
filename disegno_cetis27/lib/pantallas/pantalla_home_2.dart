import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'componentes/componentes.dart';

class PantallaHome2 extends StatelessWidget {
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
                      'Crear categoría', Icons.category, 300, 50, 20),
                  Componentes.getBotonTipo2(
                      'Reportes enviados', Icons.report, 300, 50, 20),
                ],
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Componentes.getBotonTipo3('Cerrar sesión'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
