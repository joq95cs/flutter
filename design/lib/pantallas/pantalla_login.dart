import 'dart:developer';

import 'package:design/pantallas/widgets_comunes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PantallaLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          color: Color(0xFFfafafa),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WidgetsComunes.getCampoTexto(
                  'Usuario', Icon(Icons.person_outline), false),
              WidgetsComunes.getCampoTexto(
                  'Contraseña', Icon(Icons.lock_outline), true),
              WidgetsComunes.getBoton('INICIAR SESIÓN'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getCampoTexto(String placeholder, Icon icono, bool esContra) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: TextField(
        obscureText: esContra,
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Color(0xff000912),
          ),
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 25),
          hintText: placeholder,
          hintStyle: TextStyle(
            color: Color(0xffA6B0BD),
          ),
          fillColor: Colors.white,
          filled: true,
          prefixIcon: icono,
          prefixIconConstraints: BoxConstraints(
            minWidth: 75,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 25,
            offset: Offset(0, 5),
            spreadRadius: -25,
          ),
        ],
      ),
    );
  }

  Widget _getBoton() {
    return Container(
      width: double.infinity,
      //margin: EdgeInsets.only(top: 20, bottom: 50),
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          color: Color(0xff008FFF),
          borderRadius: BorderRadius.all(Radius.circular(50)),
          boxShadow: [
            BoxShadow(
              color: Color(0x60008FFF),
              blurRadius: 10,
              offset: Offset(0, 5),
              spreadRadius: 0,
            )
          ]),
      child: FlatButton(
        padding: EdgeInsets.symmetric(vertical: 25),
        child: Text(
          'INICIAR SESIÓN',
          style: GoogleFonts.roboto(
              textStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            color: Colors.white,
            letterSpacing: 3,
          )),
        ),
        onPressed: () {
          log('Iniciar sesión...');
        },
      ),
    );
  }
}
