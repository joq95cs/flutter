import 'package:design/pantallas/widgets_comunes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Principal3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Bienvenido',
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          color: Color(0xFFfafafa),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WidgetsComunes.getBoton('Nuevo reporte'),
                  WidgetsComunes.getBoton('Reportes recibidos'),
                  WidgetsComunes.getBoton('Reportes enviados'),
                  WidgetsComunes.getBoton('Categorías pendientes'),
                  WidgetsComunes.getBoton('Estadísticas'),
                  WidgetsComunes.getBoton('Categorías'),
                  WidgetsComunes.getBoton('Registrar usuario'),
                ],
              ),
              WidgetsComunes.getEnlace('Cerrar sesión'),
            ],
          ),
        ),
      ),
    );
  }
}
