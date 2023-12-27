import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetsComunes {
  static Container getCampoTexto(
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

  static Container getBoton(String texto) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 15),
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
          )),
        ),
        onPressed: () {
          log('$texto funciona...');
        },
      ),
    );
  }

  static Container getAreaTexto(String placeholder, Icon icono) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: TextField(
        keyboardType: TextInputType.multiline,
        textInputAction: TextInputAction.newline,
        minLines: 1,
        maxLines: 10,
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

  static Row getDesplegable(String titulo) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          titulo,
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Color(0xff000912),
            ),
          ),
        ),
        Container(
          child: DropdownButton<String>(
            value: 'Uno',
            icon: Icon(Icons.arrow_downward),
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Color(0xff000912),
              ),
            ),
            items: <String>['Uno', 'Dos', 'Tres', 'Cuatro']
                .map<DropdownMenuItem<String>>((String valor) {
              return DropdownMenuItem<String>(
                value: valor,
                child: Text(valor),
              );
            }).toList(),
            onChanged: (String? nuevo) {},
          ),
        ),
      ],
    );
  }

  static FlatButton getEnlace(String texto) {
    return FlatButton(
      onPressed: () {
        log(texto);
      },
      child: Text(
        texto,
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
            color: Color(0xFF008FFF),
            fontWeight: FontWeight.w800,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
