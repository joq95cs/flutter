import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Componentes {
  static Widget getCampoTextoTipo1(
      String placeholder, Icon icono, bool esContra) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: TextField(
        obscureText: esContra,
        style: GoogleFonts.roboto(
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

  static Widget getBotonTipo1(String texto) {
    return Container(
      width: double.infinity,
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
          texto,
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w800,
              color: Colors.white,
              letterSpacing: 3,
            ),
          ),
        ),
        onPressed: () {
          log('Iniciar sesión...');
        },
      ),
    );
  }

  static Widget getBotonTipo2(
      String texto, IconData icono, double ancho, double alto, double mb) {
    return Container(
      margin: EdgeInsets.only(bottom: mb), //Margin entre cada botón
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
          ),
          child: Container(
            width: ancho,
            height: alto,
            child: Row(
              children: [
                Icon(icono),
                SizedBox(
                  width: 15,
                ),
                Text(
                  texto,
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      letterSpacing: 3,
                    ),
                  ),
                ),
              ],
            ),
          ),
          onPressed: () {
            log(texto);
          }),
    );
  }

  static Widget getBotonTipo3(String texto) {
    return TextButton(
      child: Text(
        texto,
        style: GoogleFonts.roboto(
          textStyle: TextStyle(
            color: Color(0xFF008FFF),
            fontWeight: FontWeight.w800,
            fontSize: 16,
          ),
        ),
      ),
      onPressed: () {
        log(texto);
      },
    );
  }

  static Widget getLogo() {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: Image(
        image: AssetImage('assets/img/logo.gif'),
        width: 250,
      ),
    );
  }

  static AppBar getAppBar(String titulo) {
    return AppBar(
      title: Text(
        titulo,
        style: GoogleFonts.roboto(
          textStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  static Widget getAreaTexto() {
    return Container(
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: TextField(
            maxLines: 10,
            decoration: InputDecoration.collapsed(
              hintText: "Descripción...",
              hintStyle: TextStyle(
                color: Color(0xffA6B0BD),
              ),
              fillColor: Colors.white,
              filled: true,
            ),
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Color(0xff000912),
              ),
            ),
          ),
        ),
      ),
      decoration: BoxDecoration(
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

  static Widget getDesplegable(List<String> valores, String base) {
    return DropdownButton<String>(
      value: base,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color(0xff000912),
        ),
      ),
      underline: Container(
        height: 2,
        color: Color(0xff008FFF),
      ),
      onChanged: (String? v) {},
      items: valores.map<DropdownMenuItem<String>>((String valor) {
        return DropdownMenuItem<String>(
          value: valor,
          child: SizedBox(child: Text(valor), width: 140),
        );
      }).toList(),
    );
  }

  static Widget getEtiqueta(String texto) {
    return Text(
      texto,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color(0xff000912),
        ),
      ),
    );
  }
}
